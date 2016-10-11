.class Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "HtcSoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    .line 78
    const-string v0, "HtcSoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private handleAssocListChange()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyAssocListChange()V

    .line 179
    return-void
.end method

.method private handleConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHtcHotspotAllowUserOnly:Lcom/android/server/wifi/HtcHotspotAllowUserOnly;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HtcHotspotAllowUserOnly;->notifyConnectionRequest(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private nap(I)V
    .locals 2
    .param p1, "secs"    # I

    .prologue
    .line 194
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 81
    const-string v6, "HtcSoftapMonitor"

    const-string v7, "Start waiting Hotspot event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/hotspot/HtcHotspotNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "eventStr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 86
    const-string v6, "HtcSoftapMonitor"

    const-string v7, "HtcHotspotNative.waitForEvent() return NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->nap(I)V

    .line 88
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # ++operator for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mNullErrors:I
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$004(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 89
    const-string v6, "HtcSoftapMonitor"

    const-string v7, "Too many NULL EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/android/server/wifi/hotspot/HtcHotspotNative;->stopEventWaiting()Z

    .line 173
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$102(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;I)I

    .line 174
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$002(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;I)I

    .line 175
    return-void

    .line 96
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$002(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;I)I

    .line 99
    const-string v6, "AP_UP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, "event":I
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_UP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v0    # "event":I
    :cond_2
    const-string v6, "AP_DOWN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    const/4 v0, 0x2

    .line 104
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 105
    invoke-static {}, Lcom/android/server/wifi/hotspot/HtcHotspotNative;->stopEventWaiting()Z

    .line 106
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v0    # "event":I
    :cond_3
    const-string v6, "STA_JOIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "AP-STA-CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 109
    :cond_4
    const/4 v0, 0x3

    .line 110
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 111
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_JOIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    .end local v0    # "event":I
    :cond_5
    const-string v6, "STA_LEAVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "AP-STA-DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 113
    :cond_6
    const/4 v0, 0x4

    .line 114
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 115
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_LEAVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    .end local v0    # "event":I
    :cond_7
    const-string v6, "STA_BLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 118
    const/4 v0, 0x5

    .line 120
    .restart local v0    # "event":I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "ind":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 122
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "eventData":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 124
    .local v4, "time":J
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->handleConnectionRequest(Ljava/lang/String;)V

    .line 126
    .end local v1    # "eventData":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_8
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_BLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v0    # "event":I
    .end local v3    # "ind":I
    :cond_9
    const-string v6, "ERROR_EVENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 129
    const/4 v0, 0x6

    .line 130
    .restart local v0    # "event":I
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ERROR_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # ++operator for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mRecvErrors:I
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$104(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_0

    .line 132
    const-string v6, "HtcSoftapMonitor"

    const-string v7, "Too many ERROR_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/android/server/wifi/hotspot/HtcHotspotNative;->stopEventWaiting()Z

    .line 134
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$102(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;I)I

    goto/16 :goto_1

    .line 147
    .end local v0    # "event":I
    :cond_a
    const-string v6, "HANG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "HANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 148
    :cond_b
    const/16 v0, 0xd

    .line 149
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 150
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x2400c

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 151
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", HANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 154
    .end local v0    # "event":I
    :cond_c
    const-string v6, "PERF_LOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 155
    const/16 v0, 0xe

    .line 156
    .restart local v0    # "event":I
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v7

    const v8, 0x240c8

    invoke-virtual {v7, v8, v2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 157
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PERF_LOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    .end local v0    # "event":I
    :cond_d
    const-string v6, "PERF_UNLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 160
    const/16 v0, 0xf

    .line 161
    .restart local v0    # "event":I
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x240c9

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 162
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PERF_UNLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    .end local v0    # "event":I
    :cond_e
    const-string v6, "MAX_CLIENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    const/16 v0, 0x10

    .line 166
    .restart local v0    # "event":I
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/HtcSoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->maxClinetNoty()V

    .line 167
    const-string v6, "HtcSoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MAX_CLIENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
