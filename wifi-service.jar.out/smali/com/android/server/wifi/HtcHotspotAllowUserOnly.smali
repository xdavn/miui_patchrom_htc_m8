.class public Lcom/android/server/wifi/HtcHotspotAllowUserOnly;
.super Ljava/lang/Object;
.source "HtcHotspotAllowUserOnly.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;
    }
.end annotation


# static fields
.field private static final HOTSPOT_REQUESTED_MILLIS:J = 0x1d4c0L

.field private static final MAX_REQUESTED_NUMBER:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HtcHotspotAllowUserOnly"

.field private static final WIFI_AP_CONN_REQ_TIMEOUT:I = 0x4


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqConnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApConnReqTimeout:Landroid/app/PendingIntent;

.field private mWifiApNotification:Landroid/app/Notification;

.field private mWifiApNotificationShown:Z

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/INetworkManagementService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifistatemachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "nwService"    # Landroid/os/INetworkManagementService;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotificationShown:Z

    .line 72
    new-instance v1, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$1;-><init>(Lcom/android/server/wifi/HtcHotspotAllowUserOnly;)V

    iput-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.action.WIFI_AP_CONN_REQ_TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .local v0, "wifiApConnReqTimeout":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    .line 67
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mAlarmManager:Landroid/app/AlarmManager;

    .line 68
    iput-object p3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mNwService:Landroid/os/INetworkManagementService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->registerForBroadcasts()V

    .line 70
    return-void
.end method

.method private CancelNotifyWIFIAPreqtimer()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "HtcHotspotAllowUserOnly"

    const-string v1, "CancelNotifyWIFIAPreqtimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 124
    return-void
.end method

.method private SetNotifyWIFIAPreqtimer()V
    .locals 6

    .prologue
    .line 127
    const-string v2, "HtcHotspotAllowUserOnly"

    const-string v3, "SetNotifyWIFIAPreqtimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long v0, v2, v4

    .line 129
    .local v0, "triggerTime":J
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 130
    return-void
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.wifi.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method private updateConnectionList(Ljava/lang/String;J)V
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 133
    const-string v1, "HtcHotspotAllowUserOnly"

    const-string v2, "updateConnection List "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "client":Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 136
    new-instance v0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;

    .end local v0    # "client":Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;-><init>(Lcom/android/server/wifi/HtcHotspotAllowUserOnly;Ljava/lang/String;J)V

    .line 138
    .restart local v0    # "client":Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->updateConnectionReq(Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;)V

    .line 139
    return-void
.end method

.method private updateConnectionReq(Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;)V
    .locals 6
    .param p1, "client"    # Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;

    .prologue
    .line 143
    const-string v2, "HtcHotspotAllowUserOnly"

    const-string v3, "update connection Req"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    .line 150
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 152
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;

    invoke-virtual {v2}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "mac":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;

    invoke-virtual {p1}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->setLastestReqTime(J)V

    goto :goto_0

    .line 150
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v1    # "mac":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 160
    const-string v2, "HtcHotspotAllowUserOnly"

    const-string v3, "update connection Req add client"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getRequestedList()Ljava/lang/String;
    .locals 10

    .prologue
    .line 166
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 167
    .local v6, "requestedlist":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 168
    .local v4, "recentTime":J
    const-string v7, "HtcHotspotAllowUserOnly"

    const-string v8, "##########inside getRequestedList WifiStateMachine.java "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 170
    const-string v7, "HtcHotspotAllowUserOnly"

    const-string v8, "getRequestedList null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v7, 0x0

    .line 190
    :goto_0
    return-object v7

    .line 174
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 175
    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;

    invoke-virtual {v7}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "mac":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 177
    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;

    invoke-virtual {v7}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly$ReqConnectionClient;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 178
    .local v0, "diffTime":J
    const-string v7, "HtcHotspotAllowUserOnly"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList mac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " diffTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-wide/32 v8, 0x1d4c0

    cmp-long v7, v0, v8

    if-lez v7, :cond_1

    .line 180
    iget-object v7, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v2, -0x1

    .line 183
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "diffTime":J
    :cond_2
    const-string v7, "HtcHotspotAllowUserOnly"

    const-string v8, "getRequestedList should not go here"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v3    # "mac":Ljava/lang/String;
    :cond_3
    const-string v7, "HtcHotspotAllowUserOnly"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList return: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public notifyConnectionRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v1, "HtcHotspotAllowUserOnly"

    const-string v4, "WIFIAP:Connection request.."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, "time":J
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->setConnectionReqNotificationVisible(Z)V

    .line 112
    invoke-direct {p0}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->CancelNotifyWIFIAPreqtimer()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->SetNotifyWIFIAPreqtimer()V

    .line 114
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->updateConnectionList(Ljava/lang/String;J)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.hotspot.connectionrequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "time":J
    :cond_0
    return-void
.end method

.method public setConnectionReqNotificationVisible()V
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotificationShown:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->setConnectionReqNotificationVisible(Z)V

    .line 225
    return-void
.end method

.method public setConnectionReqNotificationVisible(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v6, 0x0

    .line 194
    const-string v2, "HtcHotspotAllowUserOnly"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConnectionReqNotificationVisible visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotificationShown:Z

    if-nez v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 202
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 203
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    if-nez v2, :cond_1

    .line 204
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.hotspot.WIFI_CLIENT_MANAGEMENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    .line 209
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 213
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 215
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 220
    .end local v0    # "details":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotificationShown:Z

    goto :goto_0

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiApNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 103
    :goto_0
    return v1

    .line 96
    :cond_1
    const-string v1, "HtcHotspotAllowUserOnly"

    const-string v2, "WIFIAP:MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcHotspotAllowUserOnly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in update mac list fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
