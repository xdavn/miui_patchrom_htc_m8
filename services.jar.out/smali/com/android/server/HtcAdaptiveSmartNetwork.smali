.class public Lcom/android/server/HtcAdaptiveSmartNetwork;
.super Ljava/lang/Object;
.source "HtcAdaptiveSmartNetwork.java"


# static fields
.field private static final NETWORK_CLASS_2_G:I = 0x1

.field private static final NETWORK_CLASS_3_G:I = 0x2

.field private static final NETWORK_CLASS_4_G:I = 0x3

.field private static final NETWORK_CLASS_UNAVAILABLE:I = -0x1

.field private static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field private static final NETWORK_CLASS_WIFI:I = -0x65

.field private static final NETWORK_TYPE_UNAVAILABLE:I = -0x1

.field private static final NETWORK_TYPE_WIFI:I = -0x65

.field private static final TAG:Ljava/lang/String; = "HtcASN"


# instance fields
.field private final ASN_OFF:Ljava/lang/String;

.field private final ASN_ON:Ljava/lang/String;

.field private final FILE_NODE_PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFlightMode:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimExist:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSimExist:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mFlightMode:Z

    .line 63
    const-string v0, "/sys/power/pnpmgr/thermal/cpu_asn"

    iput-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->FILE_NODE_PATH:Ljava/lang/String;

    .line 65
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->ASN_ON:Ljava/lang/String;

    .line 66
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->ASN_OFF:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/android/server/HtcAdaptiveSmartNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/server/HtcAdaptiveSmartNetwork$1;-><init>(Lcom/android/server/HtcAdaptiveSmartNetwork;)V

    iput-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 74
    iput-object p1, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 77
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    iget-object v0, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcAdaptiveSmartNetwork;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HtcAdaptiveSmartNetwork;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->isAsnOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/HtcAdaptiveSmartNetwork;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HtcAdaptiveSmartNetwork;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->updateTelephonyState()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/HtcAdaptiveSmartNetwork;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/HtcAdaptiveSmartNetwork;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private getNetworkClass()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "networkType":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSimExist:Z

    .line 153
    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->isAirplaneModeOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mFlightMode:Z

    .line 155
    iget-object v4, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 156
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 159
    .local v3, "type":I
    if-ne v3, v6, :cond_2

    .line 160
    const/16 v2, -0x65

    .line 171
    .end local v1    # "network":Landroid/net/NetworkInfo;
    .end local v3    # "type":I
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/HtcAdaptiveSmartNetwork;->getNetworkClassByType(I)I

    move-result v4

    return v4

    .line 151
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSimExist:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "network":Landroid/net/NetworkInfo;
    .restart local v3    # "type":I
    :cond_2
    if-nez v3, :cond_0

    .line 162
    :try_start_2
    iget-object v4, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_1

    .line 165
    .end local v3    # "type":I
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getNetworkClassByType(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 117
    sparse-switch p1, :sswitch_data_0

    .line 141
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 119
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :sswitch_1
    const/16 v0, -0x65

    goto :goto_0

    .line 127
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 139
    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        -0x65 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 113
    .local v0, "ret":Z
    :goto_0
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method private isAsnOn()Z
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/android/server/HtcServiceMonitor;->getInstance()Lcom/android/server/HtcServiceMonitor;

    move-result-object v0

    .line 178
    .local v0, "sm":Lcom/android/server/HtcServiceMonitor;
    if-nez v0, :cond_0

    .line 179
    const-string v1, "HtcASN"

    const-string v2, "[Power_FDA] The instance of HtcServiceMonitor is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/HtcServiceMonitor;->isASNOn()Z

    move-result v1

    goto :goto_0
.end method

.method private updateTelephonyState()V
    .locals 8

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/server/HtcAdaptiveSmartNetwork;->getNetworkClass()I

    move-result v2

    .line 188
    .local v2, "networkClass":I
    const-string v4, "unknown"

    .line 189
    .local v4, "type":Ljava/lang/String;
    const-string v3, "0"

    .line 190
    .local v3, "node_value":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSimExist:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mFlightMode:Z

    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 192
    .local v1, "is_network_available":Z
    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 225
    :cond_0
    :goto_1
    const-string v5, "HtcASN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to node. type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimExist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSimExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mFlightMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mFlightMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/server/HtcAdaptiveSmartNetwork;->writeToAsnNode(Ljava/lang/String;)I

    .line 227
    return-void

    .line 190
    .end local v1    # "is_network_available":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 195
    .restart local v1    # "is_network_available":Z
    :sswitch_0
    const-string v4, "unknown"

    .line 196
    if-eqz v1, :cond_0

    .line 197
    const-string v3, "1"

    goto :goto_1

    .line 201
    :sswitch_1
    const-string v4, "Wi-Fi"

    .line 202
    goto :goto_1

    .line 204
    :sswitch_2
    const-string v4, "2G"

    .line 205
    if-eqz v1, :cond_0

    .line 206
    const-string v3, "1"

    goto :goto_1

    .line 210
    :sswitch_3
    const-string v4, "3G"

    .line 211
    if-eqz v1, :cond_0

    .line 212
    iget-object v5, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v6, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mContext:Landroid/content/Context;

    const/16 v7, 0x65

    invoke-virtual {v5, v6, v7}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;I)I

    move-result v0

    .line 213
    .local v0, "dataSignal":I
    const/4 v5, 0x2

    if-gt v0, v5, :cond_2

    .line 214
    const-string v3, "1"

    .line 216
    :cond_2
    const-string v5, "HtcASN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSignalStrength.getHtcLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v0    # "dataSignal":I
    :sswitch_4
    const-string v4, "4G"

    .line 221
    goto :goto_1

    .line 192
    :sswitch_data_0
    .sparse-switch
        -0x65 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
    .end sparse-switch
.end method

.method static native writeASNNode(B)I
.end method


# virtual methods
.method public isWifiAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v3, p0, Lcom/android/server/HtcAdaptiveSmartNetwork;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeToAsnNode(Ljava/lang/String;)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v5, 0x1

    .line 232
    .local v5, "ret":I
    const/4 v6, 0x0

    .line 235
    .local v6, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v7, "/sys/power/pnpmgr/thermal/cpu_asn"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 238
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 239
    .local v0, "bw":Ljava/io/BufferedWriter;
    move-object v6, v0

    .line 240
    invoke-virtual {v6, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    return v5

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "HtcASN"

    const-string v8, "[Power_FDA] Fail to write node."

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
