.class public Lcom/android/server/wifi/HtcHotspotCustomize;
.super Ljava/lang/Object;
.source "HtcHotspotCustomize.java"


# static fields
.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final EVER_DO_CHAMELEON:Ljava/lang/String; = "EVER_DO_CHAMELEON"

.field private static final TAG:Ljava/lang/String; = "HtcHotspotCustomize"


# instance fields
.field private final mCR:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCustomizeClientNumber:Z

.field private mCustomizeForChameleon:Z

.field private mDefaultCustomizedString:Ljava/lang/String;

.field private mHandledIMEICustomize:Z

.field private mIMEICustomize_HotspotPwd:Ljava/lang/String;

.field private mIMEICustomize_HotspotSSID:Ljava/lang/String;

.field private mSIECustomize_HotspotPwd:Ljava/lang/String;

.field private mSIECustomize_HotspotSSID:Ljava/lang/String;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private phoneManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeClientNumber:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeForChameleon:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mHandledIMEICustomize:Z

    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCR:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->phoneManager:Landroid/telephony/TelephonyManager;

    .line 71
    const-string v0, "HtcHotspotCustomize"

    const-string v1, "Register BROADCAST_INTENT_ACTION_CUSTOMIZATION: com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcHotspotCustomize$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcHotspotCustomize$1;-><init>(Lcom/android/server/wifi/HtcHotspotCustomize;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const-string v0, "HtcHotspotCustomize"

    const-string v1, "Register TelephonyIntents.ACTION_SERVICE_STATE_CHANGED: android.intent.action.SERVICE_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcHotspotCustomize$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcHotspotCustomize$2;-><init>(Lcom/android/server/wifi/HtcHotspotCustomize;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HtcHotspotCustomize;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcHotspotCustomize;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeForChameleon:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcHotspotCustomize;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcHotspotCustomize;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HtcHotspotCustomize;->checkSIECustomization(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/HtcHotspotCustomize;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/wifi/HtcHotspotCustomize;->updateCustomizeData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/HtcHotspotCustomize;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mHandledIMEICustomize:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/HtcHotspotCustomize;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mHandledIMEICustomize:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/HtcHotspotCustomize;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/HtcHotspotCustomize;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcHotspotCustomize;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;

    return-object p1
.end method

.method private byte2String([B)Ljava/lang/String;
    .locals 7
    .param p1, "byteArray"    # [B

    .prologue
    .line 374
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 383
    :goto_0
    return-object v4

    .line 376
    :cond_0
    const-string v0, "0123456789ABCDEF"

    .line 377
    .local v0, "HEX":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 379
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 380
    aget-byte v1, p1, v2

    .line 381
    .local v1, "b":B
    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    .local v1, "parcel":Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 228
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 232
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 231
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private checkSIECustomization(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string v5, "persist.sys.hotspot.user_define"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    const/4 v4, 0x0

    .line 172
    :goto_0
    return v4

    .line 152
    :cond_0
    const/4 v4, 0x0

    .line 153
    .local v4, "mSIECustomization":Z
    const-string v3, "content://customization_settings/SettingTable/application_HotspotName"

    .line 154
    .local v3, "customize_uri_hotspotName":Ljava/lang/String;
    const-string v2, "content://customization_settings/SettingTable/application_Wifihotspot"

    .line 155
    .local v2, "customize_uri_hotspotClient":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/HtcHotspotCustomize;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 156
    .local v1, "bundle_hotspotName":Landroid/os/Bundle;
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/HtcHotspotCustomize;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, "bundle_hotspotClient":Landroid/os/Bundle;
    const-string v5, "HtcHotspotCustomize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v1, :cond_1

    .line 159
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/HtcHotspotCustomize;->parseHotspotNameBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 160
    const/4 v4, 0x1

    .line 165
    :goto_1
    if-eqz v0, :cond_2

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/HtcHotspotCustomize;->parseHotspotClientBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 167
    const/4 v4, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const-string v5, "HtcHotspotCustomize"

    const-string v6, "Customize SSID failed due to bundle null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :cond_2
    const-string v5, "HtcHotspotCustomize"

    const-string v6, "Customize SSID failed due to bundle null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v2

    .line 180
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 184
    const-string v0, "HtcHotspotCustomize"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 188
    const-string v0, "HtcHotspotCustomize"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_3
    const/4 v7, 0x0

    .line 193
    goto :goto_0

    .line 195
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 196
    .local v10, "nValueIdx":I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 197
    const-string v0, "HtcHotspotCustomize"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_5
    const/4 v7, 0x0

    .line 202
    goto :goto_0

    .line 204
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    const/4 v8, 0x0

    .line 206
    .local v8, "data":[B
    const/4 v6, 0x0

    .line 209
    .local v6, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 210
    invoke-direct {p0, v8}, Lcom/android/server/wifi/HtcHotspotCustomize;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 215
    if-eqz v7, :cond_8

    .line 216
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_1
    move-object v2, v6

    .line 222
    goto :goto_0

    .line 211
    :catch_0
    move-exception v9

    .line 212
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcHotspotCustomize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    const/4 v6, 0x0

    .line 215
    if-eqz v7, :cond_8

    .line 216
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 215
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_b

    .line 216
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_a
    const/4 v7, 0x0

    :cond_b
    throw v0
.end method

.method private getKey([B)[B
    .locals 6
    .param p1, "seed"    # [B

    .prologue
    .line 363
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 364
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    const-string v4, "Crypto"

    invoke-static {v3, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 365
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 366
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 367
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 370
    .end local v1    # "keyGen":Ljavax/crypto/KeyGenerator;
    .end local v2    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "HtcHotspotCustomize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKey() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getRandomKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "seed"    # Ljava/lang/String;

    .prologue
    .line 342
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    :cond_0
    const-string v2, "HtcHotspotCustomize"

    const-string v3, "getRandomKey() ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string p1, "00:11:22:33:44:55"

    .line 348
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HtcHotspotCustomize;->getKey([B)[B

    move-result-object v1

    .line 349
    .local v1, "key":[B
    if-nez v1, :cond_2

    .line 350
    const-string v2, "HtcHotspotCustomize"

    const-string v3, "() ERROR: getKey() fails!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v2, "1234567890123"

    .line 357
    .end local v1    # "key":[B
    :goto_0
    return-object v2

    .line 354
    .restart local v1    # "key":[B
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/HtcHotspotCustomize;->byte2String([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 355
    .end local v1    # "key":[B
    :catch_0
    move-exception v0

    .line 356
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "HtcHotspotCustomize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRandomKey() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v2, "1234567890123"

    goto :goto_0
.end method

.method private parseHotspotClientBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const-string v8, "usermanagement"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 301
    .local v7, "usermanagementList":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 302
    const-string v4, "plenty_set1"

    .line 303
    .local v4, "key_plenty":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 305
    .local v6, "usermanagement":Landroid/os/Bundle;
    const-string v1, "max_connection"

    .line 306
    .local v1, "KEY_MAX_CONNECTION":Ljava/lang/String;
    const-string v0, "connection_array"

    .line 308
    .local v0, "KEY_CONNECTION_ARRAY":Ljava/lang/String;
    const-string v5, "0"

    .line 309
    .local v5, "max_connection":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 310
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    const-string v8, "HtcHotspotCustomize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get max_connection:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeClientNumber:Z

    .line 314
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotspot_max_connection"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    const-string v2, "0"

    .line 324
    .local v2, "connection_array":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 325
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    const-string v8, "HtcHotspotCustomize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get connection_array:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeClientNumber:Z

    .line 329
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotspot_connection_array"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    .end local v0    # "KEY_CONNECTION_ARRAY":Ljava/lang/String;
    .end local v1    # "KEY_MAX_CONNECTION":Ljava/lang/String;
    .end local v2    # "connection_array":Ljava/lang/String;
    .end local v4    # "key_plenty":Ljava/lang/String;
    .end local v5    # "max_connection":Ljava/lang/String;
    .end local v6    # "usermanagement":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 316
    .restart local v0    # "KEY_CONNECTION_ARRAY":Ljava/lang/String;
    .restart local v1    # "KEY_MAX_CONNECTION":Ljava/lang/String;
    .restart local v4    # "key_plenty":Ljava/lang/String;
    .restart local v5    # "max_connection":Ljava/lang/String;
    .restart local v6    # "usermanagement":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 317
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "HtcHotspotCustomize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing max_connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 320
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v8, "HtcHotspotCustomize"

    const-string v9, "Can\'t get max_connection"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .restart local v2    # "connection_array":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 332
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "HtcHotspotCustomize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing connection_array: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 335
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v8, "HtcHotspotCustomize"

    const-string v9, "Can\'t get connection_array"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseHotspotNameBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 17
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    const-string v3, "device_name"

    .line 237
    .local v3, "DEVICE_NAME":Ljava/lang/String;
    const-string v2, "additional_string"

    .line 238
    .local v2, "ADDITIONAL_STRING":Ljava/lang/String;
    const-string v1, "additional_count"

    .line 242
    .local v1, "ADDITIONAL_COUNT":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2122

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "device_name":Ljava/lang/String;
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "get device_name"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    .line 252
    .end local v6    # "device_name":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "additional_string":Ljava/lang/String;
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "get additional_string"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "mac":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 257
    const-string v14, ":"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "macFileds":[Ljava/lang/String;
    array-length v14, v9

    const/4 v15, 0x6

    if-ne v14, v15, :cond_2

    .line 259
    const-string v14, "mac_address"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 261
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 262
    .local v4, "additional_count":I
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "get additional_count"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move v7, v4

    .local v7, "i":I
    :goto_1
    if-lez v7, :cond_2

    .line 264
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    rsub-int/lit8 v15, v7, 0x5

    add-int/lit8 v15, v15, 0x1

    aget-object v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    .line 263
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 248
    .end local v4    # "additional_count":I
    .end local v5    # "additional_string":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "mac":Ljava/lang/String;
    .end local v9    # "macFileds":[Ljava/lang/String;
    :cond_0
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "Can\'t get device_name"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v14, "HTC Portable Hotspot"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    goto :goto_0

    .line 268
    .restart local v5    # "additional_string":Ljava/lang/String;
    .restart local v8    # "mac":Ljava/lang/String;
    .restart local v9    # "macFileds":[Ljava/lang/String;
    :cond_1
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "Can\'t get additional_count"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v5    # "additional_string":Ljava/lang/String;
    .end local v8    # "mac":Ljava/lang/String;
    .end local v9    # "macFileds":[Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    const-string v15, "HTC Portable Hotspot"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    .line 296
    :cond_3
    return-void

    .line 270
    .restart local v5    # "additional_string":Ljava/lang/String;
    .restart local v8    # "mac":Ljava/lang/String;
    .restart local v9    # "macFileds":[Ljava/lang/String;
    :cond_4
    const-string v14, "random"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 271
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 273
    .restart local v4    # "additional_count":I
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "get additional_count"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "default"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wifi/HtcHotspotCustomize;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "randomssid":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xd

    if-ne v14, v15, :cond_2

    .line 276
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, "randomssidf":Ljava/lang/String;
    const-string v12, " "

    .line 278
    .local v12, "separator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    .line 280
    .local v13, "tail":Ljava/lang/String;
    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 281
    :cond_5
    const-string v12, ""

    .line 283
    .end local v13    # "tail":Ljava/lang/String;
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    goto/16 :goto_2

    .line 286
    .end local v4    # "additional_count":I
    .end local v10    # "randomssid":Ljava/lang/String;
    .end local v11    # "randomssidf":Ljava/lang/String;
    .end local v12    # "separator":Ljava/lang/String;
    :cond_7
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "Can\'t get additional_count"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 289
    :cond_8
    const-string v14, "HtcHotspotCustomize"

    const-string v15, "Can\'t get additional_string or IMEI"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updateCustomizeData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 424
    const-string v4, "persist.sys.hotspot.user_define"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 427
    .local v2, "mCustomizedConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    .line 428
    .local v1, "everUpdateSIE":Z
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 429
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 430
    const/4 v1, 0x1

    .line 431
    iput-boolean v6, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeForChameleon:Z

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    iput-boolean v6, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeForChameleon:Z

    .line 435
    if-eqz v1, :cond_7

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 440
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 441
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mSIECustomize_HotspotPwd:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 445
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeForChameleon:Z

    if-eqz v4, :cond_5

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/HtcHotspotCustomize;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "randomssid":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    .line 448
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTC Portable Hotspot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 454
    .end local v3    # "randomssid":Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCustomizeClientNumber:Z

    if-eqz v4, :cond_6

    .line 457
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCR:Landroid/content/ContentResolver;

    const-string v6, "hotspot_max_connection"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_3
    :try_start_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mCR:Landroid/content/ContentResolver;

    const-string v6, "hotspot_connection_array"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 438
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTC Portable Hotspot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 442
    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mDefaultCustomizedString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 443
    iget-object v4, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->mIMEICustomize_HotspotPwd:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const/4 v5, 0x5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto :goto_3

    .line 465
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 466
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const/16 v5, 0x8

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto :goto_4
.end method


# virtual methods
.method public getCustomizedIMEISsid()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableImeiSsid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->phoneManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-object v1

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcHotspotCustomize;->phoneManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "imei2":Ljava/lang/String;
    const-string v2, "HtcHotspotCustomize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomizedSsid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCustomizedPassword()Ljava/lang/String;
    .locals 7

    .prologue
    .line 388
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableMdnPassword()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    const-string v2, "0123456789"

    .line 390
    .local v2, "number":Ljava/lang/String;
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 391
    .local v0, "alphabet":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 392
    .local v3, "rnd":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 393
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x7

    if-ge v1, v5, :cond_0

    .line 394
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    :cond_1
    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    .end local v0    # "alphabet":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "rnd":Ljava/util/Random;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v5

    .line 402
    :cond_2
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isEnableImeiPassword()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 403
    const-string v5, "HtcHotspotCustomize"

    const-string v6, "TMO: blank default hotspot password!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v5, ""

    goto :goto_2

    .line 406
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method
