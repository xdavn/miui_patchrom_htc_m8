.class Lcom/android/server/wifi/HtcManualAssociate;
.super Ljava/lang/Object;
.source "HtcManualAssociate.java"


# static fields
.field public static final ALWAYS_REMINDER:I = 0x3

.field public static final PROP_VF_FSC_AUTO:Ljava/lang/String; = "persist.sys.wifi.vf.FSC.auto"

.field public static final PROP_VF_SC_AUTO:Ljava/lang/String; = "persist.sys.wifi.vf.SC.auto"

.field public static final PROP_VF_SFRM_AUTO:Ljava/lang/String; = "persist.sys.wifi.vf.SFRM.auto"

.field public static final PROP_VF_SFRP_AUTO:Ljava/lang/String; = "persist.sys.wifi.vf.SFRP.auto"

.field public static final PROP_VF_VFNL_AUTO:Ljava/lang/String; = "persist.sys.wifi.vf.VFNL.auto"

.field public static final PROP_VF_VFWIFI_AUTO:Ljava/lang/String; = "persist.sys.wifi.vf.VFWiFi.auto"

.field public static final VF_FSC_SSID:Ljava/lang/String; = "\"Free_Swisscom_Auto_Login\""

.field public static final VF_SC_SSID:Ljava/lang/String; = "\"Swisscom_Auto_Login\""

.field public static final VF_SFRM_SSID:Ljava/lang/String; = "\"SFR WiFi Mobile\""

.field public static final VF_SFRP_SSID:Ljava/lang/String; = "\"SFR wifi public\""

.field public static final VF_VFNL_SSID:Ljava/lang/String; = "\"Vodafone NL WiFi\""

.field public static final VF_VFWIFI_SSID:Ljava/lang/String; = "\"VodafoneWiFi\""

.field public static final WIFI_ASSOCIATE_AUTO:I = 0x0

.field public static final WIFI_ASSOCIATE_MANUAL:I = 0x1

.field public static final WIFI_ASSOCIATE_MANUAL_PRECONFIG_ATT:I = 0x5


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/app/AlarmManager;Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/HtcManualAssociate;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "alarm"    # Landroid/app/AlarmManager;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "manualAssociate":Lcom/android/server/wifi/HtcManualAssociate;
    sget-object v1, Landroid/net/wifi/HtcWifiCustomizeReader$Feature;->MANUAL_ASSOCIATE:Landroid/net/wifi/HtcWifiCustomizeReader$Feature;

    invoke-static {v1}, Landroid/net/wifi/HtcWifiCustomizeReader;->support(Landroid/net/wifi/HtcWifiCustomizeReader$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/wifi/HtcManualAssociateImpl;

    .end local v0    # "manualAssociate":Lcom/android/server/wifi/HtcManualAssociate;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/HtcManualAssociateImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/app/AlarmManager;Lcom/android/server/wifi/WifiNative;)V

    .line 57
    .restart local v0    # "manualAssociate":Lcom/android/server/wifi/HtcManualAssociate;
    const-string v1, "HtcManualAssociate"

    const-string v2, "create HtcManualAssociateImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/android/server/wifi/HtcManualAssociate;

    .end local v0    # "manualAssociate":Lcom/android/server/wifi/HtcManualAssociate;
    invoke-direct {v0}, Lcom/android/server/wifi/HtcManualAssociate;-><init>()V

    .line 61
    .restart local v0    # "manualAssociate":Lcom/android/server/wifi/HtcManualAssociate;
    const-string v1, "HtcManualAssociate"

    const-string v2, "create HtcManualAssociate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastCmccReminder()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public cancelCmccNoti()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public cancel_alarm()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public getAssociationManual()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getCmccReminderBlock()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getVFAutoJoin(Ljava/util/List;I)I
    .locals 1
    .param p2, "netID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "configNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public ignoreAutoJoinByAtt(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreAutoJoinByCmcc()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreAutoJoinByVF(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isAssociationManual()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setAssociationManual(I)V
    .locals 0
    .param p1, "isManual"    # I

    .prologue
    .line 90
    return-void
.end method

.method public setCmccTimer(Z)Z
    .locals 1
    .param p1, "isTimerOn"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setVFAutoJoin(Ljava/util/List;ZI)Z
    .locals 1
    .param p2, "isAutojoin"    # Z
    .param p3, "netID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;ZI)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "configNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public showCmccNoti()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
