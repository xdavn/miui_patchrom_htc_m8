.class Lcom/android/server/wifi/HtcPreferredApImpl;
.super Lcom/android/server/wifi/HtcPreferredAp;
.source "HtcPreferredAp.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcPreferredAp"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUserConnection:Z

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiCustomizeReader:Landroid/net/wifi/HtcWifiCustomizeReader;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/wifi/HtcPreferredApImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/HtcPreferredAp;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mUserConnection:Z

    .line 74
    iput-object p1, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncWifiConfigStore()Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 77
    iput-object p3, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 78
    return-void
.end method


# virtual methods
.method public getMostPreferredNetwork()I
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 81
    iget-object v6, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "mostPreferredSsid":Ljava/lang/String;
    const-string v6, "persist.sys.cw.security"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "mostPreferredSsidSecurity":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    const-string v6, "HtcPreferredAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_8

    .line 92
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 93
    .local v3, "tmpWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 94
    const-string v6, "HtcPreferredAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v6, "open"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-nez v6, :cond_7

    .line 98
    const-string v5, "HtcPreferredAp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[open] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 129
    .end local v0    # "i":I
    .end local v3    # "tmpWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    return v5

    .line 102
    .restart local v0    # "i":I
    .restart local v3    # "tmpWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v6, "wep"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_7

    .line 105
    const-string v5, "HtcPreferredAp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wep] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 109
    :cond_2
    const-string v6, "wpapsk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 110
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    :cond_3
    const-string v5, "HtcPreferredAp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wpapsk] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 116
    :cond_4
    const-string v6, "eap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 117
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 119
    :cond_5
    const-string v5, "HtcPreferredAp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[[eap] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto/16 :goto_1

    .line 124
    :cond_6
    const-string v6, "HtcPreferredAp"

    const-string v7, "no matched mostPreferredNetworkSecurity this time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 128
    .end local v3    # "tmpWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const-string v6, "HtcPreferredAp"

    const-string v7, "no matched mostPreferredNetworkSsid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 9
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 133
    iget-object v6, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-gez p1, :cond_0

    .line 136
    const-string v5, "HtcPreferredAp"

    const-string v6, "clear most preferred network"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v5, "persist.sys.cw.ssid"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v5, "persist.sys.cw.security"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return v4

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, "updatedwifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 144
    .local v2, "wifiConfigTmp":Landroid/net/wifi/WifiConfiguration;
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, p1, :cond_1

    .line 145
    move-object v1, v2

    .line 149
    .end local v2    # "wifiConfigTmp":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-nez v1, :cond_3

    .line 150
    const-string v4, "HtcPreferredAp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find config from WifiConfigStore, networkId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 151
    goto :goto_0

    .line 154
    :cond_3
    const-string v6, "HtcPreferredAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMostPreferredNetwork networkId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v6, "persist.sys.cw.ssid"

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v6, "HtcPreferredAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "persist.sys.cw.ssid is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "persist.sys.cw.ssid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 159
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v6, v5

    if-nez v5, :cond_4

    .line 160
    const-string v5, "persist.sys.cw.security"

    const-string v6, "open"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_4
    const-string v5, "persist.sys.cw.security"

    const-string v6, "wep"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 166
    :cond_6
    const-string v5, "persist.sys.cw.security"

    const-string v6, "wpapsk"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_7
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 170
    :cond_8
    const-string v5, "persist.sys.cw.security"

    const-string v6, "eap"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_9
    const-string v4, "HtcPreferredAp"

    const-string v6, "no matched security in setMostPreferredNetwork"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v4, "persist.sys.cw.ssid"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 175
    goto/16 :goto_0
.end method

.method public setUserConnection(Z)V
    .locals 0
    .param p1, "userConnection"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mUserConnection:Z

    .line 243
    return-void
.end method

.method public usePreferredNetwork()Z
    .locals 13

    .prologue
    .line 181
    const/4 v8, 0x0

    .line 182
    .local v8, "skipAutoJoin":Z
    const/4 v2, 0x0

    .line 184
    .local v2, "isPreferScanned":Z
    const/4 v9, 0x0

    .line 185
    .local v9, "usePreferredAp":Z
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getPreconfigType()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->getPreconfigType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 187
    :cond_0
    const/4 v9, 0x1

    .line 193
    :cond_1
    :goto_0
    if-eqz v9, :cond_7

    .line 194
    iget-object v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    move-result-object v7

    .line 195
    .local v7, "scanResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcPreferredApImpl;->getMostPreferredNetwork()I

    move-result v3

    .line 197
    .local v3, "preferNetId":I
    iget-boolean v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mUserConnection:Z

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v10

    sget-object v11, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v10, v11, :cond_7

    :cond_2
    const/4 v10, -0x1

    if-eq v3, v10, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 201
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mUserConnection:Z

    .line 202
    iget-object v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v10, v3}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 203
    .local v4, "preferred":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "HtcPreferredAp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMCC] preferred network is > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "Key":Ljava/lang/String;
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 209
    :cond_3
    const-string v0, "PSK"

    .line 221
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/ScanDetail;

    .line 222
    .local v6, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 223
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 224
    const-string v10, "HtcPreferredAp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMCC] have scan preferred network : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x1

    .line 230
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_6
    if-eqz v2, :cond_d

    .line 231
    iget-object v10, p0, Lcom/android/server/wifi/HtcPreferredApImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x25001

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v3, v12}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 232
    const/4 v8, 0x1

    .line 238
    .end local v0    # "Key":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "preferNetId":I
    .end local v4    # "preferred":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "scanResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    :cond_7
    :goto_2
    return v8

    .line 189
    :cond_8
    sget-boolean v10, Lcom/android/server/wifi/HtcPreferredApImpl;->DBG:Z

    if-eqz v10, :cond_1

    .line 190
    const-string v10, "htc.test.wifi.preferred.ap"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    goto/16 :goto_0

    .line 210
    .restart local v0    # "Key":Ljava/lang/String;
    .restart local v3    # "preferNetId":I
    .restart local v4    # "preferred":Landroid/net/wifi/WifiConfiguration;
    .restart local v7    # "scanResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    :cond_9
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 212
    :cond_a
    const-string v0, "EAP"

    goto/16 :goto_1

    .line 213
    :cond_b
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_c

    .line 214
    const-string v0, "WEP"

    goto/16 :goto_1

    .line 215
    :cond_c
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 216
    const-string v0, "ESS"

    goto/16 :goto_1

    .line 234
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_d
    const-string v10, "HtcPreferredAp"

    const-string v11, "[CMCC] preferred not in scan result. "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
