.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiResponse;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field public static final ACTION_NI_VERIFY:Ljava/lang/String; = "android.intent.action.NETWORK_INITIATED_VERIFY"

.field private static final DEBUG:Z = true

.field public static final GPS_ENC_NONE:I = 0x0

.field public static final GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final GPS_ENC_UNKNOWN:I = -0x1

.field public static final GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final GPS_NI_NEED_VERIFY:I = 0x2

.field public static final GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final GPS_NI_RESPONSE_IGNORE:I = 0x4

.field public static final GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final GPS_NI_TYPE_EMERGENCY_SUPL:I = 0x4

.field public static final GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final GPS_NI_TYPE_VOICE:I = 0x1

.field public static final NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"

.field private static final VERBOSE:Z

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static mIsCMCC:Z

.field private static mIsHexInput:Z

.field private static mIsTMO:Z


# instance fields
.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private volatile mIsInEmergency:Z

.field private volatile mIsLocationEnabled:Z

.field private volatile mIsSuplEsEnabled:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNiNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 126
    sget-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v3, "System"

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 128
    sput-boolean v2, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsCMCC:Z

    .line 129
    sput-boolean v2, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsTMO:Z

    .line 131
    sget-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "sku_id"

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsCMCC:Z

    .line 133
    sget-object v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "sku_id"

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsTMO:Z

    .line 149
    :cond_1
    sput-boolean v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    return-void

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 132
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netInitiatedListener"    # Landroid/location/INetInitiatedListener;
    .param p3, "isSuplEsEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    .line 174
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$1;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 210
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 212
    if-nez p2, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "netInitiatedListener is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    iput-object p2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 218
    invoke-virtual {p0, p3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 219
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    .line 221
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 224
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler$2;

    invoke-direct {v1, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$2;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 234
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "PADDING_CHAR":C
    array-length v2, p0

    .line 527
    .local v2, "lengthBytes":I
    mul-int/lit8 v4, v2, 0x8

    div-int/lit8 v3, v4, 0x7

    .line 534
    .local v3, "lengthSeptets":I
    rem-int/lit8 v4, v2, 0x7

    if-nez v4, :cond_0

    .line 535
    if-lez v2, :cond_0

    .line 536
    add-int/lit8 v4, v2, -0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 537
    add-int/lit8 v3, v3, -0x1

    .line 542
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "decoded":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 546
    const-string v4, "GpsNetInitiatedHandler"

    const-string v5, "Decoding of GSM packed string failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v1, ""

    .line 550
    :cond_1
    return-object v1
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z
    .param p2, "coding"    # I

    .prologue
    .line 593
    move-object v0, p0

    .line 594
    .local v0, "decoded":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 596
    .local v1, "input":[B
    packed-switch p2, :pswitch_data_0

    .line 618
    const-string v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for NI text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return-object v0

    .line 598
    :pswitch_0
    move-object v0, p0

    .line 599
    goto :goto_0

    .line 602
    :pswitch_1
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v0

    .line 603
    goto :goto_0

    .line 606
    :pswitch_2
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v0

    .line 607
    goto :goto_0

    .line 610
    :pswitch_3
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v0

    .line 611
    goto :goto_0

    .line 614
    :pswitch_4
    move-object v0, p0

    .line 615
    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .prologue
    .line 568
    const-string v0, ""

    .line 570
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .end local v0    # "decoded":Ljava/lang/String;
    const-string v2, "UTF-16"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .restart local v0    # "decoded":Ljava/lang/String;
    return-object v0

    .line 572
    .end local v0    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .prologue
    .line 555
    const-string v0, ""

    .line 557
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .end local v0    # "decoded":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .restart local v0    # "decoded":Ljava/lang/String;
    return-object v0

    .line 559
    .end local v0    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 658
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 652
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 6
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "message":Ljava/lang/String;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 481
    const-string v3, "notif_id"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v3, "message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v3, "timeout"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const-string v3, "default_resp"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateIntent, title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-object v0
.end method

.method private static getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 643
    const v1, 0x1040450

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    const v1, 0x104044e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "ticker":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 636
    const v1, 0x104044f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method private handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 5
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .prologue
    const/4 v4, 0x1

    .line 314
    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in handleNi () : needNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " needVerify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " privacyOverride: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPopupImmediately: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInEmergency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsTMO:Z

    if-eqz v1, :cond_1

    .line 324
    :try_start_0
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "privacyOverride TMOUS accept request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 344
    :cond_2
    :goto_1
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v1, :cond_3

    .line 347
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v1, :cond_5

    .line 349
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 357
    :cond_3
    :goto_2
    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v1, :cond_0

    .line 363
    :cond_4
    :try_start_2
    sget-boolean v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsCMCC:Z

    if-eqz v1, :cond_7

    .line 364
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 365
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    .line 366
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "AGPS settings trun off ,Deny the NI request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 375
    :catch_1
    move-exception v0

    .line 376
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 341
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_2

    .line 368
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    goto :goto_0

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 6
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .prologue
    const/4 v5, 0x4

    .line 384
    const-string v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in handleNiInEs () : niType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notificationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    if-ne v2, v5, :cond_0

    const/4 v1, 0x1

    .line 400
    .local v1, "isNiTypeES":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    return-void

    .line 399
    .end local v1    # "isNiTypeES":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 404
    .restart local v1    # "isNiTypeES":Z
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsNetInitiatedHandler"

    const-string v3, "RemoteException in sendNiResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_1
.end method

.method private static isVzwProject()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    sget-object v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 144
    :cond_0
    return v0
.end method

.method private openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openNiDialog, notifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 9
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 454
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "message":Ljava/lang/String;
    const-string v5, "GpsNetInitiatedHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNiNotification, notifyId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v5, :cond_1

    .line 429
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x108066b

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v7, 0x1060059

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    .line 438
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 445
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 447
    .local v3, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 452
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v7, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 414
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 441
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 445
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z

    .prologue
    .line 496
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 497
    .local v1, "length":I
    :goto_0
    new-array v2, v1, [B

    .line 500
    .local v2, "output":[B
    if-eqz p1, :cond_1

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 504
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "output":[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 508
    .restart local v1    # "length":I
    .restart local v2    # "output":[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 514
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getInEmergency()Z
    .locals 2

    .prologue
    .line 278
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 280
    .local v0, "isInEmergencyCallback":Z
    iget-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    return v0
.end method

.method public getSuplEsEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    return v0
.end method

.method public handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .prologue
    .line 286
    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in handleNiNotification () : notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSuplEsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsLocationEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 310
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0
.end method

.method public setInEmergency(Z)V
    .locals 0
    .param p1, "isInEmergency"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    .line 275
    return-void
.end method

.method public setSuplEsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    .line 244
    return-void
.end method

.method public updateLocationMode()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    .line 255
    return-void
.end method
