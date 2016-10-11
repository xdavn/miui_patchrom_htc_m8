.class public Lcom/android/internal/telephony/MobileNetwork;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;,
        Lcom/android/internal/telephony/MobileNetwork$CachedSetting;,
        Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;,
        Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;,
        Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;,
        Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;,
        Lcom/android/internal/telephony/MobileNetwork$Menu;,
        Lcom/android/internal/telephony/MobileNetwork$Setting;,
        Lcom/android/internal/telephony/MobileNetwork$Selection;
    }
.end annotation


# static fields
.field private static final HTC_CP_QUERY_RETRY_DELAY_MS:[J

.field private static final HTC_CP_UPDATE_RETRY_DELAY_MS:[J

.field private static final HTC_DEBUG_DEVELOPMENT:Z = false

.field private static final HTC_FRAMEWORK_PKG:Ljava/lang/String; = "com.android.internal.telephony"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SIM1:Ljava/lang/String; = "data_roaming_slot1"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SIM2:Ljava/lang/String; = "data_roaming_slot2"

.field private static final HTC_LEGACY_SECUTE_KEY_DATA_ROAMING_SOUND:Ljava/lang/String; = "roaming_sound_on"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING:Ljava/lang/String; = "national_roaming_on"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING_SIM1:Ljava/lang/String; = "national_roaming_slot1"

.field private static final HTC_LEGACY_SECUTE_KEY_NATIONAL_ROAMING_SIM2:Ljava/lang/String; = "national_roaming_slot2"

.field private static final HTC_NOTIFY_ACTION_PREFER:Ljava/lang/String; = "actionPrefer"

.field private static final HTC_NOTIFY_ACTION_TYPE:Ljava/lang/String; = "actionType"

.field private static final HTC_NOTIFY_CLEAR_CACHE:Ljava/lang/String; = "clearCache"

.field private static final HTC_NOTIFY_INTENT_TIME:Ljava/lang/String; = "updateTime"

.field private static final HTC_NOTIFY_LOG_TAG:Ljava/lang/String; = "logTag"

.field private static final HTC_PROVIDER:Ljava/lang/String; = "com.htc.mobiledata"

.field private static final HTC_SETTING_PHONE_TYPE:Ljava/lang/String; = "phoneType"

.field private static final HTC_SETTING_PRIVILEGE:Ljava/lang/String; = "privilege"

.field private static final HTC_SETTING_SLOT:Ljava/lang/String; = "slot"

.field private static final HTC_SETTING_SUMMARY:Ljava/lang/String; = "summary"

.field private static final HTC_SETTING_TITLE:Ljava/lang/String; = "title"

.field private static final HTC_SETTING_TYPE_DATA_DIALOG:Ljava/lang/String; = "dataDialog"

.field private static final HTC_SETTING_TYPE_DATA_PATH:Ljava/lang/String; = "dataPath"

.field private static final HTC_SETTING_TYPE_DATA_ROAMING:Ljava/lang/String; = "roamingSetting"

.field private static final HTC_SETTING_TYPE_DATA_ROAMING_SOUND:Ljava/lang/String; = "roamSoundSetting"

.field private static final HTC_SETTING_TYPE_MOBILE_DATA:Ljava/lang/String; = "dataSetting"

.field private static final HTC_SETTING_TYPE_MOBILE_DATA_MENU:Ljava/lang/String; = "dataSettingMenu"

.field private static final HTC_SETTING_UI_GRAYOUT:Ljava/lang/String; = "uiGrayOut"

.field private static final HTC_SETTING_UI_HIDE:Ljava/lang/String; = "uiHide"

.field private static final HTC_SETTING_USER:Ljava/lang/String; = "user"

.field private static final HTC_SETTING_VALUE:Ljava/lang/String; = "value"

.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final LOG_TAG:Ljava/lang/String; = "LibMobileNetwork"

.field public static final NOTIFY_INTENT:Ljava/lang/String; = "com.htc.intent.action.MOBILEDATA_MODE"

.field public static final VERSION:Ljava/lang/String; = "2015072201"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 3567
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_UPDATE_RETRY_DELAY_MS:[J

    .line 3576
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_QUERY_RETRY_DELAY_MS:[J

    return-void

    .line 3567
    :array_0
    .array-data 8
        0x2bc
        0x1f4
        0x190
    .end array-data

    .line 3576
    :array_1
    .array-data 8
        0x2bc
        0x1f4
        0x190
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5323
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Long;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p2, "x2"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/MobileNetwork;->createForceQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Landroid/os/HandlerThread;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Boolean;)C
    .locals 1
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Looper;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->convertIntToBoolean(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/util/LinkedList;

    .prologue
    .line 53
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/MobileNetwork;->handleIntentInBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork;->notifyCallbackInBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Parcelable;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static addIntoCheckList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "newItem"    # Ljava/lang/String;
    .param p1, "prevCheckList"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5337
    move-object v1, p1

    .line 5338
    .local v1, "result":[Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5339
    if-nez p1, :cond_2

    move v0, v2

    .line 5340
    .local v0, "lenExisting":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 5341
    if-lez v0, :cond_0

    .line 5342
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5344
    :cond_0
    aput-object p0, v1, v0

    .line 5346
    .end local v0    # "lenExisting":I
    :cond_1
    return-object v1

    .line 5339
    :cond_2
    array-length v0, p1

    goto :goto_0
.end method

.method private static convertBooleanToChar(Ljava/lang/Boolean;)C
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 4941
    const/16 v0, 0x2d

    .line 4942
    .local v0, "result":C
    if-eqz p0, :cond_0

    .line 4943
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x31

    .line 4945
    :cond_0
    :goto_0
    return v0

    .line 4943
    :cond_1
    const/16 v0, 0x30

    goto :goto_0
.end method

.method private static convertIntToBoolean(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 4956
    const/4 v0, 0x0

    .line 4957
    .local v0, "result":Ljava/lang/Boolean;
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    .line 4958
    const/16 v1, 0x30

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4960
    :cond_0
    return-object v0

    .line 4958
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/os/Handler;
    .locals 4
    .param p0, "config"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "prefname"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p5, "callbackMatchSlotNphone"    # Z
    .param p6, "callbackSlotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p7, "logTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5370
    if-eqz p0, :cond_0

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5371
    :cond_0
    const/4 v1, 0x0

    .line 5542
    :goto_0
    return-object v1

    .line 5373
    :cond_1
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4002(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5375
    const/4 v1, 0x0

    .line 5376
    .local v1, "result":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$1;

    .end local v1    # "result":Landroid/os/Handler;
    invoke-direct {v1, p2}, Lcom/android/internal/telephony/MobileNetwork$1;-><init>(Landroid/os/Looper;)V

    .line 5538
    .restart local v1    # "result":Landroid/os/Handler;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    .line 5539
    .local v0, "params":[Ljava/lang/Object;
    aput-object p0, v0, v3

    .line 5540
    const/4 v2, 0x1

    aput-object p7, v0, v2

    .line 5541
    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static createForceQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadCallback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "logTag"    # Ljava/lang/String;

    .prologue
    .line 5548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5549
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5550
    const-string v1, "clearCache"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5000(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5551
    if-eqz p3, :cond_0

    .line 5552
    const-string v1, "logTag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5554
    :cond_0
    return-object v0
.end method

.method private static createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Parcelable;
    .param p4, "privilege"    # Ljava/lang/String;
    .param p5, "logTag"    # Ljava/lang/String;

    .prologue
    .line 5574
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 5575
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 5576
    const-string v2, "actionPrefer"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5578
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v0

    .line 5579
    .local v0, "currTime":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 5580
    const-string v2, "updateTime"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5582
    :cond_1
    return-object v1
.end method

.method private static createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "privilege"    # Ljava/lang/String;
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 5559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5560
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5561
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5562
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5000(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5563
    if-eqz p3, :cond_0

    .line 5564
    const-string v1, "privilege"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5566
    :cond_0
    if-eqz p4, :cond_1

    .line 5567
    const-string v1, "logTag"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5569
    :cond_1
    return-object v0
.end method

.method private static createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/String;
    .param p4, "privilege"    # Ljava/lang/String;
    .param p5, "logTag"    # Ljava/lang/String;

    .prologue
    .line 5600
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 5601
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 5602
    const-string v2, "actionPrefer"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 5604
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v0

    .line 5605
    .local v0, "currTime":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 5606
    const-string v2, "updateTime"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5608
    :cond_1
    return-object v1
.end method

.method private static createSetupIntentForBackgroundHandler(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "privilege"    # Ljava/lang/String;
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 5587
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p3, p4}, Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 5588
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 5589
    const-string v2, "actionPrefer"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5591
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v0

    .line 5592
    .local v0, "currTime":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 5593
    const-string v2, "updateTime"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5595
    :cond_1
    return-object v1
.end method

.method private static destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    .locals 7
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 5005
    const/4 v2, 0x0

    .line 5006
    .local v2, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_1

    .line 5007
    const/4 v4, 0x1

    .line 5008
    .local v4, "unsafeQuit":Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v5

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 5010
    :try_start_0
    const-string v5, "android.os.HandlerThread"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5011
    .local v0, "cls":Ljava/lang/Class;
    const-string v5, "quitSafely"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5012
    .local v3, "mth":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5013
    const/4 v4, 0x0

    .line 5018
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "mth":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 5019
    const/4 v2, 0x0

    .line 5021
    :try_start_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 5027
    .end local v4    # "unsafeQuit":Z
    :cond_1
    :goto_1
    return-object v2

    .line 5014
    .restart local v4    # "unsafeQuit":Z
    :catch_0
    move-exception v1

    .line 5015
    .local v1, "exDestroy":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 5022
    .end local v1    # "exDestroy":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 5023
    .restart local v1    # "exDestroy":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_1
.end method

.method private static frameworkReadCursor(Landroid/database/Cursor;ILcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 28
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "count"    # I
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "settingType"    # Ljava/lang/String;
    .param p4, "objectType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4626
    const/4 v5, 0x0

    .line 4627
    .local v5, "isSelection":Z
    const/4 v6, 0x0

    .line 4628
    .local v6, "isSetting":Z
    const/4 v4, 0x0

    .line 4629
    .local v4, "isMenu":Z
    const/4 v7, 0x0

    .line 4630
    .local v7, "isString":Z
    const/4 v3, 0x0

    .line 4631
    .local v3, "isLong":Z
    if-eqz p4, :cond_0

    .line 4632
    const-class v22, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 4633
    const/4 v5, 0x1

    .line 4649
    :cond_0
    :goto_0
    const/4 v10, -0x1

    .line 4650
    .local v10, "posPhoneType":I
    const/4 v11, -0x1

    .line 4651
    .local v11, "posSlot":I
    const/16 v16, -0x1

    .line 4652
    .local v16, "posValue":I
    const/4 v14, -0x1

    .line 4653
    .local v14, "posUiGrayOut":I
    const/4 v15, -0x1

    .line 4654
    .local v15, "posUiHide":I
    const/4 v13, -0x1

    .line 4655
    .local v13, "posTitle":I
    const/4 v12, -0x1

    .line 4657
    .local v12, "posSummary":I
    const/16 v21, 0x0

    .line 4658
    .local v21, "validPos":Z
    const/16 v19, 0x0

    .line 4659
    .local v19, "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/16 v18, 0x0

    .line 4660
    .local v18, "settingAry":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v9, 0x0

    .line 4661
    .local v9, "menuAry":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    const/16 v20, 0x0

    .line 4662
    .local v20, "stringAry":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 4663
    .local v8, "longAry":[Ljava/lang/Long;
    const/16 v17, 0x0

    .line 4665
    .local v17, "result":[Ljava/lang/Object;
    if-eqz v5, :cond_18

    .line 4670
    const-string v22, "phoneType"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4671
    const-string v22, "slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4673
    if-gez v11, :cond_1

    if-ltz v10, :cond_17

    :cond_1
    const/16 v21, 0x1

    .line 4674
    :goto_1
    move/from16 v0, p1

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 4675
    check-cast v17, [Ljava/lang/Object;

    .line 4744
    :cond_2
    :goto_2
    if-eqz v21, :cond_24

    .line 4745
    const/4 v2, 0x0

    .line 4746
    .local v2, "idxCursor":I
    :goto_3
    move/from16 v0, p1

    if-ge v2, v0, :cond_24

    .line 4748
    if-eqz v19, :cond_6

    .line 4749
    if-ltz v11, :cond_4

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_4

    .line 4750
    aget-object v22, v19, v2

    if-nez v22, :cond_3

    .line 4751
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v22, v19, v2

    .line 4753
    :cond_3
    aget-object v22, v19, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 4755
    :cond_4
    if-ltz v10, :cond_6

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_6

    .line 4756
    aget-object v22, v19, v2

    if-nez v22, :cond_5

    .line 4757
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    aput-object v22, v19, v2

    .line 4759
    :cond_5
    aget-object v22, v19, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 4763
    :cond_6
    if-eqz v18, :cond_c

    .line 4764
    if-ltz v16, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_8

    .line 4765
    aget-object v22, v18, v2

    if-nez v22, :cond_7

    .line 4766
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    aput-object v22, v18, v2

    .line 4768
    :cond_7
    aget-object v23, v18, v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-eqz v22, :cond_20

    const/16 v22, 0x1

    :goto_4
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 4770
    :cond_8
    if-ltz v14, :cond_a

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_a

    .line 4771
    aget-object v22, v18, v2

    if-nez v22, :cond_9

    .line 4772
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    aput-object v22, v18, v2

    .line 4774
    :cond_9
    aget-object v23, v18, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-eqz v22, :cond_21

    const/16 v22, 0x1

    :goto_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 4776
    :cond_a
    if-ltz v15, :cond_c

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_c

    .line 4777
    aget-object v22, v18, v2

    if-nez v22, :cond_b

    .line 4778
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    aput-object v22, v18, v2

    .line 4780
    :cond_b
    aget-object v23, v18, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-eqz v22, :cond_22

    const/16 v22, 0x1

    :goto_6
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    .line 4784
    :cond_c
    if-eqz v9, :cond_10

    .line 4785
    if-ltz v13, :cond_e

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_e

    .line 4786
    aget-object v22, v9, v2

    if-nez v22, :cond_d

    .line 4787
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>()V

    aput-object v22, v9, v2

    .line 4789
    :cond_d
    aget-object v22, v9, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 4791
    :cond_e
    if-ltz v12, :cond_10

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_10

    .line 4792
    aget-object v22, v9, v2

    if-nez v22, :cond_f

    .line 4793
    new-instance v22, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>()V

    aput-object v22, v9, v2

    .line 4795
    :cond_f
    aget-object v22, v9, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    .line 4799
    :cond_10
    if-eqz v20, :cond_11

    .line 4800
    if-ltz v16, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_11

    .line 4801
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v2

    .line 4805
    :cond_11
    if-eqz v8, :cond_12

    .line 4806
    if-ltz v16, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_12

    .line 4807
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v8, v2

    .line 4811
    :cond_12
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_23

    .line 4812
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 4635
    .end local v2    # "idxCursor":I
    .end local v8    # "longAry":[Ljava/lang/Long;
    .end local v9    # "menuAry":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .end local v10    # "posPhoneType":I
    .end local v11    # "posSlot":I
    .end local v12    # "posSummary":I
    .end local v13    # "posTitle":I
    .end local v14    # "posUiGrayOut":I
    .end local v15    # "posUiHide":I
    .end local v16    # "posValue":I
    .end local v17    # "result":[Ljava/lang/Object;
    .end local v18    # "settingAry":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v19    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v20    # "stringAry":[Ljava/lang/String;
    .end local v21    # "validPos":Z
    :cond_13
    const-class v22, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 4636
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4638
    :cond_14
    const-class v22, Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 4639
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4641
    :cond_15
    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 4642
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 4644
    :cond_16
    const-class v22, Ljava/lang/Long;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4645
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 4673
    .restart local v8    # "longAry":[Ljava/lang/Long;
    .restart local v9    # "menuAry":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v10    # "posPhoneType":I
    .restart local v11    # "posSlot":I
    .restart local v12    # "posSummary":I
    .restart local v13    # "posTitle":I
    .restart local v14    # "posUiGrayOut":I
    .restart local v15    # "posUiHide":I
    .restart local v16    # "posValue":I
    .restart local v17    # "result":[Ljava/lang/Object;
    .restart local v18    # "settingAry":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v19    # "slotNphoneAry":[Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v20    # "stringAry":[Ljava/lang/String;
    .restart local v21    # "validPos":Z
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 4677
    :cond_18
    if-eqz v6, :cond_19

    .line 4685
    const-string v22, "phoneType"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4686
    const-string v22, "slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4687
    const-string v22, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4688
    const-string v22, "uiGrayOut"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4689
    const-string v22, "uiHide"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4691
    const/16 v21, 0x1

    .line 4692
    move/from16 v0, p1

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v19, v0

    .line 4693
    move/from16 v0, p1

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v18, v0

    move-object/from16 v17, v18

    .line 4694
    check-cast v17, [Ljava/lang/Object;

    goto/16 :goto_2

    .line 4696
    :cond_19
    if-eqz v4, :cond_1c

    .line 4703
    const-string v22, "phoneType"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4704
    const-string v22, "slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4705
    const-string v22, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4706
    const-string v22, "summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4708
    if-gez v13, :cond_1a

    if-ltz v12, :cond_1b

    :cond_1a
    const/16 v21, 0x1

    .line 4709
    :goto_7
    move/from16 v0, p1

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v19, v0

    .line 4710
    move/from16 v0, p1

    new-array v9, v0, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v17, v9

    .line 4711
    check-cast v17, [Ljava/lang/Object;

    goto/16 :goto_2

    .line 4708
    :cond_1b
    const/16 v21, 0x0

    goto :goto_7

    .line 4713
    :cond_1c
    if-eqz v7, :cond_1e

    .line 4719
    const-string v22, "phoneType"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4720
    const-string v22, "slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4721
    const-string v22, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4723
    if-ltz v16, :cond_1d

    const/16 v21, 0x1

    .line 4724
    :goto_8
    move/from16 v0, p1

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v19, v0

    .line 4725
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 4726
    check-cast v17, [Ljava/lang/Object;

    goto/16 :goto_2

    .line 4723
    :cond_1d
    const/16 v21, 0x0

    goto :goto_8

    .line 4728
    :cond_1e
    if-eqz v3, :cond_2

    .line 4734
    const-string v22, "phoneType"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4735
    const-string v22, "slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4736
    const-string v22, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4738
    if-ltz v16, :cond_1f

    const/16 v21, 0x1

    .line 4739
    :goto_9
    move/from16 v0, p1

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v19, v0

    .line 4740
    move/from16 v0, p1

    new-array v8, v0, [Ljava/lang/Long;

    move-object/from16 v17, v8

    .line 4741
    check-cast v17, [Ljava/lang/Object;

    goto/16 :goto_2

    .line 4738
    :cond_1f
    const/16 v21, 0x0

    goto :goto_9

    .line 4768
    .restart local v2    # "idxCursor":I
    :cond_20
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 4774
    :cond_21
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 4780
    :cond_22
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 4815
    :cond_23
    move/from16 v2, p1

    goto/16 :goto_3

    .line 4819
    .end local v2    # "idxCursor":I
    :cond_24
    return-object v17
.end method

.method private static getAndroidApiLevel()I
    .locals 1

    .prologue
    .line 3599
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static getContentProviderClient(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "exLogPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3675
    const/4 v3, 0x0

    .line 3676
    .local v3, "result":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    .line 3678
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 3680
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3681
    if-eqz v0, :cond_1

    .line 3682
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 3683
    if-nez v3, :cond_0

    .line 3684
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v4, " alloc ucpc"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3693
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 3694
    throw v2

    .line 3687
    :cond_1
    if-nez v2, :cond_0

    .line 3688
    :try_start_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v4, " access cr"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_0

    .line 3690
    .end local v2    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 3691
    .local v1, "exProviderClient":Ljava/lang/Throwable;
    move-object v2, v1

    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_0

    .line 3696
    .end local v1    # "exProviderClient":Ljava/lang/Throwable;
    :cond_2
    return-object v3
.end method

.method private static getCurrentTimeMs()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 4989
    const/4 v0, 0x0

    .line 4990
    .local v0, "result":Ljava/lang/Long;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4991
    .local v2, "systime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-wide/32 v4, -0x26289000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 4992
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4994
    :cond_0
    return-object v0
.end method

.method public static getCustomization(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "customize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2301
    const/4 v4, 0x0

    .line 2302
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 2303
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 2304
    .local v5, "result":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 2306
    .local v1, "checkNextInterface":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2307
    .local v7, "sbCustomization":Ljava/lang/StringBuilder;
    const-string v8, "customization"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2310
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v8, "get "

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2327
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_3

    .line 2328
    if-eqz v2, :cond_0

    .line 2329
    move-object v4, v2

    .line 2331
    :cond_0
    if-nez v4, :cond_1

    .line 2332
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v8, "get "

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2334
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_1
    throw v4

    .line 2313
    :cond_2
    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2314
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2319
    :try_start_0
    const-class v8, Ljava/lang/String;

    invoke-static {p0, p1, p2, v8}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 2320
    .local v6, "results":[Ljava/lang/Object;
    check-cast v6, [Ljava/lang/String;

    .end local v6    # "results":[Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    const/4 v1, 0x0

    goto :goto_0

    .line 2322
    :catch_0
    move-exception v3

    .line 2323
    .local v3, "exRead":Ljava/lang/Throwable;
    move-object v2, v3

    goto :goto_0

    .line 2349
    .end local v3    # "exRead":Ljava/lang/Throwable;
    :cond_3
    return-object v5
.end method

.method public static getDataPath(Landroid/content/Context;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2186
    const/4 v4, 0x0

    .line 2187
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 2188
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 2189
    .local v5, "result":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/4 v1, 0x1

    .line 2193
    .local v1, "checkNextInterface":Z
    const/4 v7, 0x0

    :try_start_0
    const-string v8, "dataPath"

    const-class v9, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-static {p0, v7, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 2194
    .local v6, "results":[Ljava/lang/Object;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 2195
    const/4 v7, 0x0

    aget-object v7, v6, v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    const/4 v1, 0x0

    .line 2202
    .end local v6    # "results":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_4

    .line 2203
    :cond_1
    if-eqz v2, :cond_2

    .line 2204
    move-object v4, v2

    .line 2206
    :cond_2
    if-nez v4, :cond_3

    .line 2207
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v7, "get data path"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2209
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_3
    throw v4

    .line 2198
    :catch_0
    move-exception v3

    .line 2199
    .local v3, "exRead":Ljava/lang/Throwable;
    move-object v2, v3

    goto :goto_0

    .line 2220
    .end local v3    # "exRead":Ljava/lang/Throwable;
    :cond_4
    return-object v5
.end method

.method public static getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1844
    const/4 v8, 0x0

    .line 1845
    .local v8, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1846
    .local v5, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 1847
    .local v11, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const/4 v4, 0x1

    .line 1851
    .local v4, "checkNextInterface":Z
    :try_start_0
    const-string v17, "roamingSetting"

    const-class v18, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v17

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object v13, v0

    .line 1853
    .local v13, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v13, :cond_2

    array-length v0, v13

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 1854
    new-instance v12, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v12}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    .end local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .local v12, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const/16 v17, 0x0

    :try_start_1
    aget-object v17, v13, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1856
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 1857
    const/16 v17, 0x1

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1859
    :cond_0
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 1860
    const/16 v17, 0x2

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1862
    :cond_1
    const/4 v4, 0x0

    move-object v11, v12

    .line 1868
    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v13    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v14

    .line 1870
    .local v14, "sdkVersion":I
    if-eqz v4, :cond_3

    const/16 v17, 0x15

    move/from16 v0, v17

    if-lt v14, v0, :cond_3

    .line 1872
    const/4 v8, 0x0

    .line 1873
    new-instance v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v11}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1875
    .restart local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v16

    .line 1876
    .local v16, "value":I
    new-instance v17, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1877
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v18, v0

    if-eqz v16, :cond_a

    const/16 v17, 0x1

    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1878
    const/4 v4, 0x0

    .line 1884
    .end local v16    # "value":I
    :cond_3
    :goto_2
    if-eqz v4, :cond_6

    const/16 v17, 0x15

    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 1886
    const/4 v8, 0x0

    .line 1887
    if-eqz p1, :cond_b

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 1888
    .local v15, "slotSelection":Ljava/lang/Long;
    :goto_3
    if-eqz v15, :cond_5

    .line 1889
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-ltz v17, :cond_4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x2

    cmp-long v17, v18, v20

    if-ltz v17, :cond_5

    .line 1890
    :cond_4
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    .end local v8    # "exception":Ljava/lang/Throwable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "query data roaming slot"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1894
    .restart local v8    # "exception":Ljava/lang/Throwable;
    :cond_5
    if-nez v8, :cond_6

    .line 1895
    const/4 v4, 0x0

    .line 1896
    new-instance v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v11}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1897
    .restart local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    const-string v10, "national_roaming_on"

    .line 1898
    .local v10, "keyNationalRoaming":Ljava/lang/String;
    if-nez v15, :cond_d

    .line 1900
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v16

    .line 1901
    .restart local v16    # "value":I
    new-instance v17, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1902
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v18, v0

    if-eqz v16, :cond_c

    const/16 v17, 0x1

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1939
    .end local v16    # "value":I
    :goto_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    .line 1940
    .restart local v16    # "value":I
    new-instance v17, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1941
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v18, v0

    if-eqz v16, :cond_10

    const/16 v17, 0x1

    :goto_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1950
    .end local v10    # "keyNationalRoaming":Ljava/lang/String;
    .end local v15    # "slotSelection":Ljava/lang/Long;
    .end local v16    # "value":I
    :cond_6
    :goto_7
    if-nez v4, :cond_7

    if-nez v11, :cond_11

    .line 1951
    :cond_7
    if-eqz v5, :cond_8

    .line 1952
    move-object v8, v5

    .line 1954
    :cond_8
    if-nez v8, :cond_9

    .line 1955
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    .end local v8    # "exception":Ljava/lang/Throwable;
    const-string v17, "query data roaming"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1957
    .restart local v8    # "exception":Ljava/lang/Throwable;
    :cond_9
    throw v8

    .line 1864
    .end local v14    # "sdkVersion":I
    :catch_0
    move-exception v6

    .line 1865
    .local v6, "exRead":Ljava/lang/Throwable;
    :goto_8
    move-object v5, v6

    goto/16 :goto_0

    .line 1877
    .end local v6    # "exRead":Ljava/lang/Throwable;
    .restart local v14    # "sdkVersion":I
    .restart local v16    # "value":I
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1879
    .end local v16    # "value":I
    :catch_1
    move-exception v7

    .line 1880
    .local v7, "exSettings":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 1887
    .end local v7    # "exSettings":Ljava/lang/Throwable;
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1902
    .restart local v10    # "keyNationalRoaming":Ljava/lang/String;
    .restart local v15    # "slotSelection":Ljava/lang/Long;
    .restart local v16    # "value":I
    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 1903
    .end local v16    # "value":I
    :catch_2
    move-exception v7

    .line 1904
    .restart local v7    # "exSettings":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    .line 1905
    goto :goto_5

    .line 1908
    .end local v7    # "exSettings":Ljava/lang/Throwable;
    :cond_d
    const-string v9, "data_roaming_slot1"

    .line 1909
    .local v9, "keyDataRoaming":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_e

    .line 1910
    const-string v10, "national_roaming_slot1"

    .line 1924
    :goto_9
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v16

    .line 1925
    .restart local v16    # "value":I
    new-instance v17, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1926
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v18, v0

    if-eqz v16, :cond_f

    const/16 v17, 0x1

    :goto_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 1927
    .end local v16    # "value":I
    :catch_3
    move-exception v7

    .line 1928
    .restart local v7    # "exSettings":Ljava/lang/Throwable;
    move-object v8, v7

    goto/16 :goto_5

    .line 1913
    .end local v7    # "exSettings":Ljava/lang/Throwable;
    :cond_e
    const-string v9, "data_roaming_slot2"

    .line 1914
    const-string v10, "national_roaming_slot2"

    goto :goto_9

    .line 1926
    .restart local v16    # "value":I
    :cond_f
    const/16 v17, 0x0

    goto :goto_a

    .line 1941
    .end local v9    # "keyDataRoaming":Ljava/lang/String;
    :cond_10
    const/16 v17, 0x0

    goto :goto_6

    .line 1942
    .end local v16    # "value":I
    :catch_4
    move-exception v7

    .line 1943
    .restart local v7    # "exSettings":Ljava/lang/Throwable;
    if-nez v8, :cond_6

    .line 1944
    move-object v8, v7

    goto :goto_7

    .line 1968
    .end local v7    # "exSettings":Ljava/lang/Throwable;
    .end local v10    # "keyNationalRoaming":Ljava/lang/String;
    .end local v15    # "slotSelection":Ljava/lang/Long;
    :cond_11
    return-object v11

    .line 1864
    .end local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local v14    # "sdkVersion":I
    .restart local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v13    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_5
    move-exception v6

    move-object v11, v12

    .end local v12    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v11    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    goto :goto_8
.end method

.method private static getDataRoamingInSettings(Landroid/content/Context;Ljava/lang/Throwable;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevEx"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4905
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v4

    .line 4918
    .local v4, "sdkVersion":I
    const/4 v5, 0x0

    .line 4919
    .local v5, "value":I
    const/16 v6, 0x11

    if-lt v4, v6, :cond_0

    .line 4920
    const/4 v2, 0x0

    .line 4921
    .local v2, "intValue":Ljava/lang/Integer;
    const-string v6, "android.provider.Settings$Global"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4922
    .local v0, "cls":Ljava/lang/Class;
    const-string v6, "getInt"

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4923
    .local v3, "mth":Ljava/lang/reflect/Method;
    const-string v6, "DATA_ROAMING"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4924
    .local v1, "fld":Ljava/lang/reflect/Field;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v7, v9

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v10

    invoke-virtual {v3, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "intValue":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 4925
    .restart local v2    # "intValue":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4930
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "intValue":Ljava/lang/Integer;
    .end local v3    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return v5

    .line 4928
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public static getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 2068
    const/4 v5, 0x0

    .line 2069
    .local v5, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 2070
    .local v2, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 2071
    .local v6, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v1, 0x1

    .line 2075
    .local v1, "checkNextInterface":Z
    :try_start_0
    const-string v10, "roamSoundSetting"

    const-class v12, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, p1, v10, v12}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object v0, v10

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object v8, v0

    .line 2077
    .local v8, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v8, :cond_0

    array-length v10, v8

    if-lez v10, :cond_0

    .line 2078
    const/4 v10, 0x0

    aget-object v6, v8, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    const/4 v1, 0x0

    :cond_0
    move-object v7, v6

    .line 2085
    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v8    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v7, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_0
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v10

    const/16 v12, 0x15

    if-ge v10, v12, :cond_6

    .line 2087
    const/4 v5, 0x0

    .line 2096
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "roaming_sound_on"

    invoke-static {v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 2098
    .local v9, "value":I
    new-instance v6, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v6}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2099
    .end local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v9, :cond_4

    const/4 v10, 0x1

    :goto_1
    :try_start_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2100
    const/4 v1, 0x0

    .line 2106
    .end local v9    # "value":I
    :goto_2
    if-nez v1, :cond_1

    if-nez v6, :cond_5

    .line 2107
    :cond_1
    if-eqz v2, :cond_2

    .line 2108
    move-object v5, v2

    .line 2110
    :cond_2
    if-nez v5, :cond_3

    .line 2111
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .end local v5    # "exception":Ljava/lang/Throwable;
    const-string v10, "get data roaming sound"

    invoke-static {v10}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2113
    .restart local v5    # "exception":Ljava/lang/Throwable;
    :cond_3
    throw v5

    .line 2081
    :catch_0
    move-exception v3

    .line 2082
    .local v3, "exRead":Ljava/lang/Throwable;
    move-object v2, v3

    move-object v7, v6

    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_0

    .end local v3    # "exRead":Ljava/lang/Throwable;
    .end local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v9    # "value":I
    :cond_4
    move v10, v11

    .line 2099
    goto :goto_1

    .line 2101
    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v9    # "value":I
    .restart local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_1
    move-exception v4

    move-object v6, v7

    .line 2102
    .end local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v4, "exSettings":Ljava/lang/Throwable;
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_3
    move-object v5, v4

    goto :goto_2

    .line 2124
    .end local v4    # "exSettings":Ljava/lang/Throwable;
    :cond_5
    return-object v6

    .line 2101
    .restart local v9    # "value":I
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v9    # "value":I
    .restart local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_6
    move-object v6, v7

    .end local v7    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v6    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_2
.end method

.method private static getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4857
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4858
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4859
    .local v1, "fld":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4860
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static getFrameworkClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3744
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "com.android.internal.telephony"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3745
    const-string v1, ".MobileNetwork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3746
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3623
    const/4 v5, 0x0

    .line 3624
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3625
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_6

    .line 3626
    const-string v6, "com.htc.mobiledata"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 3627
    .local v3, "prodr":Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_5

    .line 3628
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v6, :cond_2

    .line 3629
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    const-string v0, "com.android.phone"

    .line 3630
    .local v0, "matchPackage":Ljava/lang/String;
    :goto_0
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3631
    .local v1, "matchSignature":I
    if-nez v1, :cond_1

    .line 3632
    new-instance v5, Landroid/net/Uri$Builder;

    .end local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 3633
    .restart local v5    # "uriBuilder":Landroid/net/Uri$Builder;
    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3634
    const-string v6, "com.htc.mobiledata"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3662
    return-object v5

    .line 3629
    .end local v0    # "matchPackage":Ljava/lang/String;
    .end local v1    # "matchSignature":I
    :cond_0
    const-string v0, "com.htc.sense.hsp"

    goto :goto_0

    .line 3637
    .restart local v0    # "matchPackage":Ljava/lang/String;
    .restart local v1    # "matchSignature":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3638
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "HTC pkg sign "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3639
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3640
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3644
    .end local v0    # "matchPackage":Ljava/lang/String;
    .end local v1    # "matchSignature":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3645
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string v6, "HTC cp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v6, :cond_3

    .line 3647
    const-string v6, " disabled"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    :cond_3
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v6, :cond_4

    .line 3650
    const-string v6, " hide"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3652
    :cond_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3656
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "access HTC cp"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3660
    .end local v3    # "prodr":Landroid/content/pm/ProviderInfo;
    :cond_6
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "access pm"

    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1461
    const/4 v14, 0x0

    .line 1462
    .local v14, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    const/4 v11, 0x0

    .line 1463
    .local v11, "exception":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 1465
    .local v8, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v4, 0x1

    .line 1467
    .local v4, "checkNextInterface":Z
    if-eqz v4, :cond_1

    .line 1469
    const/16 v16, 0x0

    .line 1471
    .local v16, "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_0
    const-string v19, "dataSetting"

    const-class v20, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v19

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :goto_0
    if-nez v8, :cond_1

    .line 1477
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-gtz v19, :cond_6

    .line 1478
    :cond_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    .end local v8    # "exHtcInterface":Ljava/lang/Throwable;
    const-string v19, "get mobile data"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1487
    .end local v16    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v8    # "exHtcInterface":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v17

    .line 1489
    .local v17, "sdkVersion":I
    if-eqz v4, :cond_9

    const/16 v19, 0x16

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 1491
    const/4 v11, 0x0

    .line 1492
    const/4 v13, 0x0

    .line 1494
    .local v13, "mth":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v19, "android.telephony.TelephonyManager"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1495
    .local v5, "cls":Ljava/lang/Class;
    const-string v19, "getDataEnabled"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1496
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1500
    .end local v5    # "cls":Ljava/lang/Class;
    :goto_2
    if-eqz v13, :cond_9

    if-nez v11, :cond_9

    .line 1505
    const/4 v12, 0x0

    .line 1507
    .local v12, "mgr":Landroid/telephony/TelephonyManager;
    :try_start_2
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v12, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1511
    :goto_3
    if-eqz v12, :cond_9

    .line 1513
    const/16 v19, 0x1

    :try_start_3
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v13, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    .line 1514
    .local v18, "value":Ljava/lang/Boolean;
    new-instance v15, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v15}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1515
    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v15, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_4
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_c

    .line 1516
    const/4 v4, 0x0

    .line 1524
    .end local v12    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v13    # "mth":Ljava/lang/reflect/Method;
    .end local v18    # "value":Ljava/lang/Boolean;
    :goto_4
    if-eqz v4, :cond_2

    const/16 v19, 0x15

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 1526
    const/4 v11, 0x0

    .line 1527
    const/4 v13, 0x0

    .line 1529
    .restart local v13    # "mth":Ljava/lang/reflect/Method;
    :try_start_5
    const-string v19, "android.telephony.TelephonyManager"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1530
    .restart local v5    # "cls":Ljava/lang/Class;
    const-string v19, "getDataEnabled"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1531
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1535
    .end local v5    # "cls":Ljava/lang/Class;
    :goto_5
    if-eqz v13, :cond_2

    if-nez v11, :cond_2

    .line 1540
    const/4 v12, 0x0

    .line 1542
    .restart local v12    # "mgr":Landroid/telephony/TelephonyManager;
    :try_start_6
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v12, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1546
    :goto_6
    if-eqz v12, :cond_2

    .line 1548
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    .line 1549
    .restart local v18    # "value":Ljava/lang/Boolean;
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 1550
    .end local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_8
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_b

    .line 1551
    const/4 v4, 0x0

    move-object v15, v14

    .line 1559
    .end local v12    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v13    # "mth":Ljava/lang/reflect/Method;
    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v18    # "value":Ljava/lang/Boolean;
    .restart local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_2
    :goto_7
    if-eqz v4, :cond_8

    const/16 v19, 0x8

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 1560
    const/4 v11, 0x0

    .line 1561
    const/4 v13, 0x0

    .line 1563
    .restart local v13    # "mth":Ljava/lang/reflect/Method;
    :try_start_9
    const-string v19, "android.net.ConnectivityManager"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1564
    .restart local v5    # "cls":Ljava/lang/Class;
    const-string v19, "getMobileDataEnabled"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1565
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 1573
    .end local v5    # "cls":Ljava/lang/Class;
    :goto_8
    if-eqz v13, :cond_8

    if-nez v11, :cond_8

    .line 1574
    const/4 v12, 0x0

    .line 1576
    .local v12, "mgr":Landroid/net/ConnectivityManager;
    :try_start_a
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v12, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    .line 1580
    :goto_9
    if-eqz v12, :cond_8

    .line 1582
    const/16 v19, 0x0

    :try_start_b
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    .line 1583
    .restart local v18    # "value":Ljava/lang/Boolean;
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    .line 1584
    .end local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_start_c
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a

    .line 1585
    const/4 v4, 0x0

    .line 1593
    .end local v12    # "mgr":Landroid/net/ConnectivityManager;
    .end local v13    # "mth":Ljava/lang/reflect/Method;
    .end local v18    # "value":Ljava/lang/Boolean;
    :goto_a
    if-nez v4, :cond_3

    if-nez v14, :cond_7

    .line 1594
    :cond_3
    if-eqz v8, :cond_4

    .line 1595
    move-object v11, v8

    .line 1597
    :cond_4
    if-nez v11, :cond_5

    .line 1598
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    .end local v11    # "exception":Ljava/lang/Throwable;
    const-string v19, "query mobile data"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1600
    .restart local v11    # "exception":Ljava/lang/Throwable;
    :cond_5
    throw v11

    .line 1473
    .end local v17    # "sdkVersion":I
    .restart local v16    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_0
    move-exception v6

    .line 1474
    .local v6, "ex":Ljava/lang/Throwable;
    move-object v8, v6

    goto/16 :goto_0

    .line 1481
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_6
    const/16 v19, 0x0

    aget-object v14, v16, v19

    .line 1482
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1497
    .end local v16    # "results":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v13    # "mth":Ljava/lang/reflect/Method;
    .restart local v17    # "sdkVersion":I
    :catch_1
    move-exception v10

    .line 1498
    .local v10, "exReflect":Ljava/lang/Throwable;
    move-object v11, v10

    goto/16 :goto_2

    .line 1508
    .end local v10    # "exReflect":Ljava/lang/Throwable;
    .local v12, "mgr":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v9

    .line 1509
    .local v9, "exManager":Ljava/lang/Throwable;
    move-object v11, v9

    goto/16 :goto_3

    .line 1517
    .end local v9    # "exManager":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    .line 1518
    .local v7, "exExecute":Ljava/lang/Throwable;
    :goto_b
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    move-object v15, v14

    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto/16 :goto_4

    .line 1532
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v12    # "mgr":Landroid/telephony/TelephonyManager;
    :catch_4
    move-exception v10

    .line 1533
    .restart local v10    # "exReflect":Ljava/lang/Throwable;
    move-object v11, v10

    goto/16 :goto_5

    .line 1543
    .end local v10    # "exReflect":Ljava/lang/Throwable;
    .restart local v12    # "mgr":Landroid/telephony/TelephonyManager;
    :catch_5
    move-exception v9

    .line 1544
    .restart local v9    # "exManager":Ljava/lang/Throwable;
    move-object v11, v9

    goto/16 :goto_6

    .line 1552
    .end local v9    # "exManager":Ljava/lang/Throwable;
    :catch_6
    move-exception v7

    move-object v14, v15

    .line 1553
    .end local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v7    # "exExecute":Ljava/lang/Throwable;
    .restart local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_c
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    move-object v15, v14

    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto/16 :goto_7

    .line 1566
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v12    # "mgr":Landroid/telephony/TelephonyManager;
    :catch_7
    move-exception v10

    .line 1567
    .restart local v10    # "exReflect":Ljava/lang/Throwable;
    move-object v11, v10

    goto :goto_8

    .line 1577
    .end local v10    # "exReflect":Ljava/lang/Throwable;
    .local v12, "mgr":Landroid/net/ConnectivityManager;
    :catch_8
    move-exception v9

    .line 1578
    .restart local v9    # "exManager":Ljava/lang/Throwable;
    move-object v11, v9

    goto :goto_9

    .line 1586
    .end local v9    # "exManager":Ljava/lang/Throwable;
    :catch_9
    move-exception v7

    move-object v14, v15

    .line 1587
    .end local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v7    # "exExecute":Ljava/lang/Throwable;
    .restart local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :goto_d
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    goto :goto_a

    .line 1610
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v12    # "mgr":Landroid/net/ConnectivityManager;
    .end local v13    # "mth":Ljava/lang/reflect/Method;
    :cond_7
    return-object v14

    .line 1586
    .restart local v12    # "mgr":Landroid/net/ConnectivityManager;
    .restart local v13    # "mth":Ljava/lang/reflect/Method;
    .restart local v18    # "value":Ljava/lang/Boolean;
    :catch_a
    move-exception v7

    goto :goto_d

    .line 1552
    .local v12, "mgr":Landroid/telephony/TelephonyManager;
    :catch_b
    move-exception v7

    goto :goto_c

    .line 1517
    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catch_c
    move-exception v7

    move-object v14, v15

    .end local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_b

    .end local v12    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v13    # "mth":Ljava/lang/reflect/Method;
    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v18    # "value":Ljava/lang/Boolean;
    .restart local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_8
    move-object v14, v15

    .end local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto :goto_a

    :cond_9
    move-object v15, v14

    .end local v14    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v15    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    goto/16 :goto_4
.end method

.method public static getMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Menu;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1629
    const/4 v5, 0x0

    .line 1630
    .local v5, "result":Lcom/android/internal/telephony/MobileNetwork$Menu;
    const/4 v4, 0x0

    .line 1631
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1633
    .local v3, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 1635
    .local v1, "checkNextInterface":Z
    if-eqz v1, :cond_1

    .line 1637
    const/4 v6, 0x0

    .line 1639
    .local v6, "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :try_start_0
    const-string v8, "dataSettingMenu"

    const-class v9, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-static {p0, p1, v8, v9}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object v0, v8

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    :goto_0
    if-nez v3, :cond_1

    .line 1645
    if-eqz v6, :cond_0

    array-length v8, v6

    if-gtz v8, :cond_5

    .line 1646
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exHtcInterface":Ljava/lang/Throwable;
    const-string v8, "get mobile data menu"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1655
    .end local v6    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v3    # "exHtcInterface":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v7

    .line 1657
    .local v7, "sdkVersion":I
    if-nez v1, :cond_2

    if-nez v5, :cond_6

    .line 1658
    :cond_2
    if-eqz v3, :cond_3

    .line 1659
    move-object v4, v3

    .line 1661
    :cond_3
    if-nez v4, :cond_4

    .line 1662
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .end local v4    # "exception":Ljava/lang/Throwable;
    const-string v8, "query mobile data menu"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1664
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_4
    throw v4

    .line 1641
    .end local v7    # "sdkVersion":I
    .restart local v6    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    :catch_0
    move-exception v2

    .line 1642
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_0

    .line 1649
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_5
    const/4 v8, 0x0

    aget-object v5, v6, v8

    .line 1650
    const/4 v1, 0x0

    goto :goto_1

    .line 1675
    .end local v6    # "results":[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .restart local v7    # "sdkVersion":I
    :cond_6
    return-object v5
.end method

.method private static getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 3756
    move-object v0, p0

    .line 3757
    .local v0, "originalEx":Ljava/lang/Throwable;
    if-eqz p0, :cond_1

    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 3758
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 3759
    if-nez v0, :cond_0

    move-object v1, p0

    .line 3760
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 3762
    :cond_0
    if-nez v0, :cond_1

    .line 3763
    move-object v0, p0

    .line 3766
    :cond_1
    return-object v0
.end method

.method private static getUserID()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 3708
    const/4 v3, 0x0

    .line 3710
    .local v3, "userId":Ljava/lang/Long;
    :try_start_0
    const-string v4, "android.os.UserHandle"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3711
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "myUserId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3712
    .local v2, "mth":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3713
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3714
    .local v1, "id":I
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3716
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "id":I
    .end local v2    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3715
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4268
    const-class v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    return-object v0
.end method

.method public static getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4313
    const-class v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .param p3, "objectType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4335
    const/16 v35, 0x0

    .line 4336
    .local v35, "result":[Ljava/lang/Object;
    const/16 v24, 0x0

    .line 4337
    .local v24, "exception":Ljava/lang/Throwable;
    const/16 v37, 0x0

    .line 4339
    .local v37, "sbDebug":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v40

    .line 4341
    .local v40, "srcInFramework":Z
    if-nez v40, :cond_8

    .line 4350
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getFrameworkClassName()Ljava/lang/String;

    move-result-object v25

    .line 4351
    .local v25, "fwMobileNetwork":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 4353
    .local v12, "cls":Ljava/lang/Class;
    const-string v5, "$Selection"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 4354
    .local v13, "clsSelection":Ljava/lang/Class;
    const/16 v34, 0x0

    .line 4355
    .local v34, "objSlotNphone":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 4356
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Ljava/lang/Object;

    aput-object v9, v5, v6

    invoke-virtual {v13, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 4357
    .local v15, "cnstrSelection":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-virtual {v15, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 4360
    .end local v15    # "cnstrSelection":Ljava/lang/reflect/Constructor;
    .end local v34    # "objSlotNphone":Ljava/lang/Object;
    :cond_0
    const/16 v33, 0x0

    .line 4361
    .local v33, "mth":Ljava/lang/reflect/Method;
    const-string v5, "getValueAsGivenClass"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v43, Landroid/content/Context;

    aput-object v43, v6, v9

    const/4 v9, 0x1

    aput-object v13, v6, v9

    const/4 v9, 0x2

    const-class v43, Ljava/lang/String;

    aput-object v43, v6, v9

    const/4 v9, 0x3

    const-class v43, Ljava/lang/Class;

    aput-object v43, v6, v9

    invoke-virtual {v12, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v33

    .line 4363
    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4364
    const/16 v36, 0x0

    .line 4365
    .local v36, "resultType":Ljava/lang/Class;
    const/16 v31, 0x1

    .line 4366
    .local v31, "isNativeClass":Z
    if-eqz p3, :cond_1

    .line 4367
    const-class v5, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4368
    move-object/from16 v36, v13

    .line 4369
    const/16 v31, 0x0

    .line 4387
    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v6, v9

    const/4 v9, 0x1

    aput-object v34, v6, v9

    const/4 v9, 0x2

    aput-object p2, v6, v9

    const/4 v9, 0x3

    aput-object v36, v6, v9

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 4390
    .local v26, "fwResult":[Ljava/lang/Object;
    if-eqz v26, :cond_8

    .line 4391
    const/4 v14, 0x0

    .line 4392
    .local v14, "cnstrObject":Ljava/lang/reflect/Constructor;
    if-nez v31, :cond_2

    .line 4393
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Ljava/lang/Object;

    aput-object v9, v5, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 4395
    :cond_2
    if-eqz v14, :cond_7

    .line 4397
    move-object/from16 v0, v26

    array-length v5, v0

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    .line 4398
    const/16 v29, 0x0

    .line 4399
    .local v29, "i":I
    :goto_1
    move-object/from16 v0, v26

    array-length v5, v0

    move/from16 v0, v29

    if-ge v0, v5, :cond_8

    .line 4400
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v9, v26, v29

    aput-object v9, v5, v6

    invoke-virtual {v14, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v35, v29

    .line 4401
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 4371
    .end local v14    # "cnstrObject":Ljava/lang/reflect/Constructor;
    .end local v26    # "fwResult":[Ljava/lang/Object;
    .end local v29    # "i":I
    :cond_3
    const-class v5, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4372
    const-string v5, "$DataRoamingSetting"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 4373
    const/16 v31, 0x0

    goto :goto_0

    .line 4375
    :cond_4
    const-class v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4376
    const-string v5, "$Setting"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 4377
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 4379
    :cond_5
    const-class v5, Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4380
    const-string v5, "$Menu"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v36

    .line 4381
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 4384
    :cond_6
    move-object/from16 v36, p3

    goto/16 :goto_0

    .line 4406
    .restart local v14    # "cnstrObject":Ljava/lang/reflect/Constructor;
    .restart local v26    # "fwResult":[Ljava/lang/Object;
    :cond_7
    move-object/from16 v35, v26

    .line 4416
    .end local v12    # "cls":Ljava/lang/Class;
    .end local v13    # "clsSelection":Ljava/lang/Class;
    .end local v14    # "cnstrObject":Ljava/lang/reflect/Constructor;
    .end local v25    # "fwMobileNetwork":Ljava/lang/String;
    .end local v26    # "fwResult":[Ljava/lang/Object;
    .end local v31    # "isNativeClass":Z
    .end local v33    # "mth":Ljava/lang/reflect/Method;
    .end local v36    # "resultType":Ljava/lang/Class;
    :cond_8
    :goto_2
    if-eqz v40, :cond_a

    .line 4417
    if-eqz p0, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4418
    :cond_9
    new-instance v24, Ljava/lang/IllegalArgumentException;

    .end local v24    # "exception":Ljava/lang/Throwable;
    const-string v5, "get value from HTC"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4618
    .restart local v24    # "exception":Ljava/lang/Throwable;
    :cond_a
    :goto_3
    if-eqz v24, :cond_26

    .line 4619
    throw v24

    .line 4409
    :catch_0
    move-exception v23

    .line 4410
    .local v23, "exRedirect":Ljava/lang/Throwable;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v24

    goto :goto_2

    .line 4421
    .end local v23    # "exRedirect":Ljava/lang/Throwable;
    :cond_b
    const/16 v28, 0x0

    .line 4423
    .local v28, "htcUri":Landroid/net/Uri;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v27

    .line 4424
    .local v27, "htcInterface":Landroid/net/Uri$Builder;
    if-eqz v27, :cond_c

    .line 4425
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v28

    .line 4433
    .end local v27    # "htcInterface":Landroid/net/Uri$Builder;
    :cond_c
    :goto_4
    const/16 v17, 0x0

    .line 4434
    .local v17, "exEachTry":Ljava/lang/Throwable;
    const/16 v30, 0x0

    .line 4435
    .local v30, "indexRetry":I
    sget-object v5, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_QUERY_RETRY_DELAY_MS:[J

    array-length v0, v5

    move/from16 v32, v0

    .line 4436
    .local v32, "maxRetry":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v32

    if-gt v0, v1, :cond_25

    .line 4437
    move-object/from16 v17, v24

    .line 4438
    const/16 v27, 0x0

    .line 4439
    .restart local v27    # "htcInterface":Landroid/net/Uri$Builder;
    const/4 v4, 0x0

    .line 4440
    .local v4, "client":Landroid/content/ContentProviderClient;
    if-eqz v28, :cond_e

    .line 4442
    :try_start_2
    const-string v5, "get"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/MobileNetwork;->getContentProviderClient(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 4449
    :cond_d
    :goto_6
    new-instance v27, Landroid/net/Uri$Builder;

    .end local v27    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-direct/range {v27 .. v27}, Landroid/net/Uri$Builder;-><init>()V

    .line 4450
    .restart local v27    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4451
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4452
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4475
    :cond_e
    if-eqz v4, :cond_21

    .line 4476
    const/4 v11, 0x0

    .line 4477
    .local v11, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getUserID()Ljava/lang/Long;

    move-result-object v42

    .line 4479
    .local v42, "userId":Ljava/lang/Long;
    :try_start_3
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    .line 4480
    .local v39, "select":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 4482
    .local v10, "argIndex":I
    if-eqz p1, :cond_12

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 4483
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v5, :cond_10

    .line 4484
    if-lez v10, :cond_f

    .line 4485
    const-string v5, " AND "

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    :cond_f
    const/16 v5, 0x28

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4488
    const-string v5, "slot"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4489
    const-string v5, " = ? OR "

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    const-string v5, "slot"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4491
    const-string v5, " IS NULL)"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    add-int/lit8 v10, v10, 0x1

    .line 4494
    :cond_10
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v5, :cond_12

    .line 4495
    if-lez v10, :cond_11

    .line 4496
    const-string v5, " AND "

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4498
    :cond_11
    const/16 v5, 0x28

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4499
    const-string v5, "phoneType"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4500
    const-string v5, " = ? OR "

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4501
    const-string v5, "phoneType"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4502
    const-string v5, " IS NULL)"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4503
    add-int/lit8 v10, v10, 0x1

    .line 4506
    :cond_12
    if-eqz v42, :cond_14

    .line 4507
    if-lez v10, :cond_13

    .line 4508
    const-string v5, " AND "

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4510
    :cond_13
    const/16 v5, 0x28

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4511
    const-string v5, "user"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    const-string v5, " = ? OR "

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4513
    const-string v5, "user"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    const-string v5, " IS NULL)"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4515
    add-int/lit8 v10, v10, 0x1

    .line 4517
    :cond_14
    const/4 v7, 0x0

    .line 4518
    .local v7, "selectCommand":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_15

    .line 4519
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4521
    :cond_15
    const/4 v8, 0x0

    .line 4522
    .local v8, "selectArgs":[Ljava/lang/String;
    if-lez v10, :cond_16

    .line 4523
    new-array v8, v10, [Ljava/lang/String;

    .line 4525
    :cond_16
    if-eqz v42, :cond_17

    .line 4526
    add-int/lit8 v10, v10, -0x1

    .line 4527
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    .line 4529
    :cond_17
    if-eqz p1, :cond_19

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 4530
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v5, :cond_18

    .line 4531
    add-int/lit8 v10, v10, -0x1

    .line 4532
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    .line 4534
    :cond_18
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v5, :cond_19

    .line 4535
    add-int/lit8 v10, v10, -0x1

    .line 4536
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    .line 4539
    :cond_19
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    move-object/from16 v18, v17

    .line 4545
    .end local v7    # "selectCommand":Ljava/lang/String;
    .end local v8    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "argIndex":I
    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .end local v39    # "select":Ljava/lang/StringBuilder;
    .local v18, "exEachTry":Ljava/lang/Throwable;
    :goto_7
    if-eqz v11, :cond_20

    .line 4547
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 4548
    .local v16, "count":I
    if-lez v16, :cond_1e

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 4549
    move/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v11, v0, v1, v2, v3}, Lcom/android/internal/telephony/MobileNetwork;->frameworkReadCursor(Landroid/database/Cursor;ILcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v35

    move-object/from16 v17, v18

    .line 4569
    .end local v16    # "count":I
    .end local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    :goto_8
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 4580
    :goto_9
    :try_start_6
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 4591
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v42    # "userId":Ljava/lang/Long;
    :cond_1a
    :goto_a
    const/16 v41, 0x0

    .line 4592
    .local v41, "tryToRetry":Z
    if-eqz v17, :cond_1c

    .line 4593
    move-object/from16 v0, v17

    instance-of v5, v0, Landroid/os/DeadObjectException;

    if-nez v5, :cond_1b

    move-object/from16 v0, v17

    instance-of v5, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v5, :cond_22

    .line 4595
    :cond_1b
    const/16 v41, 0x1

    .line 4601
    :cond_1c
    :goto_b
    if-eqz v41, :cond_24

    .line 4602
    if-eqz v37, :cond_1d

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1d

    .line 4603
    const-string v5, "LibMobileNetwork"

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4606
    :cond_1d
    :try_start_7
    sget-object v5, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_QUERY_RETRY_DELAY_MS:[J

    aget-wide v44, v5, v30

    invoke-static/range {v44 .. v45}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 4608
    :goto_c
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 4427
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .end local v27    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v30    # "indexRetry":I
    .end local v32    # "maxRetry":I
    .end local v41    # "tryToRetry":Z
    :catch_1
    move-exception v19

    .line 4428
    .local v19, "exHtcInterface":Ljava/lang/Throwable;
    if-nez v24, :cond_c

    .line 4429
    move-object/from16 v24, v19

    goto/16 :goto_4

    .line 4443
    .end local v19    # "exHtcInterface":Ljava/lang/Throwable;
    .restart local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    .restart local v27    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v30    # "indexRetry":I
    .restart local v32    # "maxRetry":I
    :catch_2
    move-exception v21

    .line 4444
    .local v21, "exProviderClient":Ljava/lang/Throwable;
    if-nez v17, :cond_d

    .line 4445
    move-object/from16 v17, v21

    goto/16 :goto_6

    .line 4540
    .end local v21    # "exProviderClient":Ljava/lang/Throwable;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v42    # "userId":Ljava/lang/Long;
    :catch_3
    move-exception v20

    .line 4541
    .local v20, "exOpen":Ljava/lang/Throwable;
    if-nez v17, :cond_29

    .line 4542
    move-object/from16 v17, v20

    move-object/from16 v18, v17

    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .restart local v18    # "exEachTry":Ljava/lang/Throwable;
    goto :goto_7

    .line 4551
    .end local v20    # "exOpen":Ljava/lang/Throwable;
    .restart local v16    # "count":I
    :cond_1e
    if-nez v18, :cond_28

    .line 4552
    :try_start_8
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 4553
    .local v38, "sbRead":Ljava/lang/StringBuilder;
    const-string v5, "read value ["

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4554
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4555
    const/16 v5, 0x5d

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4556
    if-lez v16, :cond_1f

    .line 4557
    const/16 v5, 0x2a

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4558
    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4560
    :cond_1f
    const-string v5, " from HTC"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4561
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .end local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_8

    .line 4563
    .end local v16    # "count":I
    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .end local v38    # "sbRead":Ljava/lang/StringBuilder;
    .restart local v18    # "exEachTry":Ljava/lang/Throwable;
    :catch_4
    move-exception v22

    .line 4564
    .local v22, "exRead":Ljava/lang/Throwable;
    if-nez v18, :cond_28

    .line 4565
    move-object/from16 v17, v22

    .end local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_8

    .line 4572
    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .end local v22    # "exRead":Ljava/lang/Throwable;
    .restart local v18    # "exEachTry":Ljava/lang/Throwable;
    :cond_20
    if-nez v18, :cond_27

    .line 4573
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 4574
    .restart local v38    # "sbRead":Ljava/lang/StringBuilder;
    const-string v5, "access value ["

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4575
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4576
    const-string v5, "] from HTC"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4577
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_9

    .line 4583
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v38    # "sbRead":Ljava/lang/StringBuilder;
    .end local v42    # "userId":Ljava/lang/Long;
    :cond_21
    if-nez v17, :cond_1a

    .line 4584
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 4585
    .restart local v38    # "sbRead":Ljava/lang/StringBuilder;
    const-string v5, "get value ["

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4586
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4587
    const-string v5, "] from HTC"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_a

    .line 4598
    .end local v38    # "sbRead":Ljava/lang/StringBuilder;
    .restart local v41    # "tryToRetry":Z
    :cond_22
    if-nez v4, :cond_23

    if-lez v30, :cond_23

    const/16 v41, 0x1

    :goto_d
    goto/16 :goto_b

    :cond_23
    const/16 v41, 0x0

    goto :goto_d

    .line 4611
    :cond_24
    add-int/lit8 v30, v32, 0x1

    goto/16 :goto_5

    .line 4614
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v27    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v41    # "tryToRetry":Z
    :cond_25
    move-object/from16 v24, v17

    goto/16 :goto_3

    .line 4570
    .restart local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v27    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v42    # "userId":Ljava/lang/Long;
    :catch_5
    move-exception v5

    goto/16 :goto_9

    .line 4581
    :catch_6
    move-exception v5

    goto/16 :goto_a

    .line 4622
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .end local v27    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v28    # "htcUri":Landroid/net/Uri;
    .end local v30    # "indexRetry":I
    .end local v32    # "maxRetry":I
    .end local v42    # "userId":Ljava/lang/Long;
    :cond_26
    return-object v35

    .line 4607
    .restart local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    .restart local v27    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v28    # "htcUri":Landroid/net/Uri;
    .restart local v30    # "indexRetry":I
    .restart local v32    # "maxRetry":I
    .restart local v41    # "tryToRetry":Z
    :catch_7
    move-exception v5

    goto/16 :goto_c

    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .end local v41    # "tryToRetry":Z
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v42    # "userId":Ljava/lang/Long;
    :cond_27
    move-object/from16 v17, v18

    .end local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_9

    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .restart local v18    # "exEachTry":Ljava/lang/Throwable;
    :cond_28
    move-object/from16 v17, v18

    .end local v18    # "exEachTry":Ljava/lang/Throwable;
    .restart local v17    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_8

    .restart local v20    # "exOpen":Ljava/lang/Throwable;
    :cond_29
    move-object/from16 v18, v17

    .end local v17    # "exEachTry":Ljava/lang/Throwable;
    .restart local v18    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_7
.end method

.method public static getValueAsMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Lcom/android/internal/telephony/MobileNetwork$Menu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4290
    const-class v0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/MobileNetwork;->getValueAsGivenClass(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Menu;

    return-object v0
.end method

.method private static handleIntentInBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedList;)V
    .locals 28
    .param p0, "threadConfig"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "checkThisAction"    # Ljava/lang/String;
    .param p3, "forceQuery"    # Z
    .param p4, "logPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5634
    .local p5, "queriedResults":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/16 v22, 0x0

    .line 5635
    .local v22, "updateTime":Ljava/lang/Long;
    const-string v24, "updateTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 5636
    const-string v24, "updateTime"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 5637
    .local v20, "updTme":J
    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-lez v24, :cond_0

    .line 5638
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 5642
    .end local v20    # "updTme":J
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 5643
    .local v12, "sb":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_1

    .line 5644
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5646
    :cond_1
    const-string v24, "thread"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5648
    const/4 v11, 0x0

    .line 5649
    .local v11, "processAction":Z
    const-string v24, "actionType"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5650
    .local v13, "setupAction":Ljava/lang/String;
    const/4 v15, 0x0

    .line 5651
    .local v15, "slotNphone":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/4 v10, 0x0

    .line 5652
    .local v10, "privilege":Ljava/lang/String;
    if-eqz v13, :cond_11

    .line 5654
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    .line 5655
    if-eqz v11, :cond_2

    .line 5656
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5657
    .local v16, "slotNphoneString":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4800(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v15

    .line 5658
    const-string v24, "privilege"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5660
    const-string v24, " set "

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5661
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5697
    .end local v16    # "slotNphoneString":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v11, :cond_10

    .line 5698
    move-object/from16 v17, v13

    .line 5699
    .local v17, "targetAction":Ljava/lang/String;
    if-nez v17, :cond_3

    .line 5700
    move-object/from16 v17, p2

    .line 5703
    :cond_3
    const/4 v8, 0x0

    .line 5704
    .local v8, "exception":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 5705
    .local v14, "setupInvert":Z
    const/16 v18, 0x0

    .line 5706
    .local v18, "tryUpdateCache":Z
    new-instance v19, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>(Lcom/android/internal/telephony/MobileNetwork$1;)V

    .line 5707
    .local v19, "updateCache":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3002(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 5708
    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3402(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5710
    const-string v24, "dataSetting"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 5711
    const-class v24, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 5712
    const/16 v23, 0x0

    .line 5713
    .local v23, "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v13, :cond_4

    .line 5714
    const-string v24, "actionPrefer"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    check-cast v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5715
    .restart local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v23, :cond_4

    .line 5716
    const/4 v14, 0x1

    .line 5717
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 5718
    :try_start_0
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v23, v0

    .line 5719
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5722
    :cond_4
    if-nez v23, :cond_6

    .line 5723
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;

    .line 5725
    :try_start_1
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v23

    .line 5726
    if-nez v13, :cond_5

    .line 5727
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5729
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 5730
    const/16 v18, 0x1

    .line 5735
    :cond_6
    :goto_1
    if-eqz v13, :cond_8

    if-eqz v23, :cond_8

    .line 5736
    if-eqz v14, :cond_7

    .line 5737
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v23

    .line 5739
    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5741
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1, v10}, Lcom/android/internal/telephony/MobileNetwork;->setMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 5905
    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_8
    :goto_2
    if-eqz v18, :cond_b

    .line 5906
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 5907
    :try_start_3
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, p3

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$6000(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Z)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 5908
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5909
    const/16 v24, 0x28

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5910
    if-eqz p3, :cond_9

    .line 5911
    const-string v24, "force-"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5913
    :cond_9
    const-string v24, "cache)"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5915
    :cond_a
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 5918
    :cond_b
    if-eqz v14, :cond_c

    .line 5919
    const-string v24, "(inv)"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5921
    :cond_c
    if-eqz v10, :cond_d

    .line 5922
    const-string v24, " by ["

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5923
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5924
    const/16 v24, 0x5d

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5927
    :cond_d
    const/4 v9, 0x0

    .line 5928
    .local v9, "logDisplay":Z
    if-nez v9, :cond_f

    .line 5929
    if-eqz v13, :cond_29

    .line 5930
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v24

    if-nez v24, :cond_e

    if-eqz v8, :cond_28

    :cond_e
    const/4 v9, 0x1

    .line 5946
    :cond_f
    :goto_3
    if-eqz v9, :cond_10

    .line 5947
    const-string v24, "LibMobileNetwork"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5951
    .end local v8    # "exception":Ljava/lang/Throwable;
    .end local v9    # "logDisplay":Z
    .end local v14    # "setupInvert":Z
    .end local v17    # "targetAction":Ljava/lang/String;
    .end local v18    # "tryUpdateCache":Z
    .end local v19    # "updateCache":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_10
    return-void

    .line 5666
    :cond_11
    if-eqz p3, :cond_13

    .line 5667
    const/4 v11, 0x1

    .line 5668
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4300(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v15

    .line 5693
    :cond_12
    :goto_4
    const-string v24, " query "

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5694
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5670
    :cond_13
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 5671
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5672
    .restart local v16    # "slotNphoneString":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4800(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v15

    .line 5674
    const/4 v11, 0x1

    .line 5675
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->matchSelection:Z
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4200(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 5676
    if-eqz v15, :cond_14

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z
    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v24

    if-nez v24, :cond_14

    .line 5677
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4300(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v24

    move-object/from16 v0, v24

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v15, v0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5100(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v11

    .line 5682
    :cond_14
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4300(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v15

    .line 5685
    :cond_15
    if-eqz v11, :cond_12

    .line 5687
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 5688
    :try_start_4
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->isReQueryRequired(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Z
    invoke-static {v0, v1, v15, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5700(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Z

    move-result v11

    .line 5690
    monitor-exit v25

    goto :goto_4

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v24

    .line 5719
    .end local v16    # "slotNphoneString":Ljava/lang/String;
    .restart local v8    # "exception":Ljava/lang/Throwable;
    .restart local v14    # "setupInvert":Z
    .restart local v17    # "targetAction":Ljava/lang/String;
    .restart local v18    # "tryUpdateCache":Z
    .restart local v19    # "updateCache":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .restart local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :catchall_1
    move-exception v24

    :try_start_5
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v24

    .line 5731
    :catch_0
    move-exception v5

    .line 5732
    .local v5, "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_1

    .line 5742
    .end local v5    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 5743
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 5747
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_16
    const-string v24, "dataSettingMenu"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 5748
    const-class v24, Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 5749
    const/16 v23, 0x0

    .line 5750
    .local v23, "value":Lcom/android/internal/telephony/MobileNetwork$Menu;
    if-nez v23, :cond_8

    .line 5751
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;

    .line 5753
    :try_start_6
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-result-object v23

    .line 5754
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5755
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 5756
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 5757
    :catch_2
    move-exception v5

    .line 5758
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 5762
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Menu;
    :cond_17
    const-string v24, "roamingSetting"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 5763
    const-class v24, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 5764
    const/16 v23, 0x0

    .line 5765
    .local v23, "value":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-eqz v13, :cond_18

    .line 5766
    const-string v24, "actionPrefer"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    check-cast v23, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5767
    .restart local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v23, :cond_18

    .line 5768
    const/4 v14, 0x1

    .line 5769
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 5770
    :try_start_7
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v23, v0

    .line 5771
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 5774
    :cond_18
    if-nez v23, :cond_1a

    .line 5775
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;

    .line 5777
    :try_start_8
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v23

    .line 5778
    if-nez v13, :cond_19

    .line 5779
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5781
    :cond_19
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 5782
    const/16 v18, 0x1

    .line 5787
    :cond_1a
    :goto_5
    if-eqz v13, :cond_8

    if-eqz v23, :cond_8

    .line 5788
    if-eqz v14, :cond_1b

    .line 5789
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$1000(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v23

    .line 5791
    :cond_1b
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5793
    :try_start_9
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1, v10}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 5794
    :catch_3
    move-exception v5

    .line 5795
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 5771
    .end local v5    # "ex":Ljava/lang/Throwable;
    :catchall_2
    move-exception v24

    :try_start_a
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v24

    .line 5783
    :catch_4
    move-exception v5

    .line 5784
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_5

    .line 5799
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :cond_1c
    const-string v24, "roamSoundSetting"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 5800
    const-class v24, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 5801
    const/16 v23, 0x0

    .line 5802
    .local v23, "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v13, :cond_1d

    .line 5803
    const-string v24, "actionPrefer"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    check-cast v23, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5804
    .restart local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v23, :cond_1d

    .line 5805
    const/4 v14, 0x1

    .line 5806
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 5807
    :try_start_b
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v23, v0

    .line 5808
    monitor-exit v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 5811
    :cond_1d
    if-nez v23, :cond_1f

    .line 5812
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;

    .line 5814
    :try_start_c
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v23

    .line 5815
    if-nez v13, :cond_1e

    .line 5816
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5818
    :cond_1e
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 5819
    const/16 v18, 0x1

    .line 5824
    :cond_1f
    :goto_6
    if-eqz v13, :cond_8

    if-eqz v23, :cond_8

    .line 5825
    if-eqz v14, :cond_20

    .line 5826
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v23

    .line 5828
    :cond_20
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5830
    :try_start_d
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1, v10}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    .line 5831
    :catch_5
    move-exception v5

    .line 5832
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 5808
    .end local v5    # "ex":Ljava/lang/Throwable;
    :catchall_3
    move-exception v24

    :try_start_e
    monitor-exit v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v24

    .line 5820
    :catch_6
    move-exception v5

    .line 5821
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_6

    .line 5836
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_21
    const-string v24, "dataPath"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_25

    .line 5837
    const-class v24, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 5838
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3402(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5839
    const/16 v23, 0x0

    .line 5840
    .local v23, "value":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-eqz v13, :cond_22

    .line 5841
    const-string v24, "actionPrefer"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Selection;
    check-cast v23, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5842
    .restart local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-nez v23, :cond_22

    .line 5845
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->criticalSection:Ljava/lang/Object;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 5846
    :try_start_f
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->cache:Ljava/util/LinkedList;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$4100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Ljava/util/LinkedList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v23, v0

    .line 5847
    monitor-exit v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 5850
    :cond_22
    if-nez v23, :cond_24

    .line 5851
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;

    .line 5853
    :try_start_10
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/MobileNetwork;->getDataPath(Landroid/content/Context;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v23

    .line 5854
    if-nez v13, :cond_23

    .line 5855
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5857
    :cond_23
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 5858
    const/16 v18, 0x1

    .line 5863
    :cond_24
    :goto_7
    if-eqz v13, :cond_8

    if-eqz v23, :cond_8

    .line 5868
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5870
    :try_start_11
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_2

    .line 5871
    :catch_7
    move-exception v5

    .line 5872
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 5847
    .end local v5    # "ex":Ljava/lang/Throwable;
    :catchall_4
    move-exception v24

    :try_start_12
    monitor-exit v25
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v24

    .line 5859
    :catch_8
    move-exception v5

    .line 5860
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_7

    .line 5876
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v23    # "value":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_25
    const-string v24, "dataDialog"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 5877
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3402(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5878
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 5880
    :cond_26
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 5881
    const-class v24, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 5882
    const/16 v23, 0x0

    .line 5883
    .local v23, "value":[Ljava/lang/String;
    if-nez v13, :cond_27

    .line 5884
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;

    .line 5886
    :try_start_13
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->getCustomization(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 5887
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 5889
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 5890
    :catch_9
    move-exception v5

    .line 5891
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    .line 5892
    goto/16 :goto_2

    .line 5895
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_27
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/android/internal/telephony/MobileNetwork;->logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5897
    :try_start_14
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-static {v0, v15, v1, v2, v10}, Lcom/android/internal/telephony/MobileNetwork;->setCustomization(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_2

    .line 5898
    :catch_a
    move-exception v5

    .line 5899
    .restart local v5    # "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto/16 :goto_2

    .line 5915
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v23    # "value":[Ljava/lang/String;
    :catchall_5
    move-exception v24

    :try_start_15
    monitor-exit v25
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v24

    .line 5930
    .restart local v9    # "logDisplay":Z
    :cond_28
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 5932
    :cond_29
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 5933
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getCurrentTimeMs()Ljava/lang/Long;

    move-result-object v4

    .line 5934
    .local v4, "currTime":Ljava/lang/Long;
    if-eqz v4, :cond_2b

    .line 5935
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->lastErrorLogTimeInMs:J
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$6100(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)J

    move-result-wide v26

    sub-long v6, v24, v26

    .line 5936
    .local v6, "diffTime":J
    const-wide/16 v24, 0x0

    cmp-long v24, v6, v24

    if-ltz v24, :cond_2a

    const-wide/16 v24, 0x2710

    cmp-long v24, v6, v24

    if-ltz v24, :cond_f

    .line 5937
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    # setter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->lastErrorLogTimeInMs:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$6102(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;J)J

    .line 5938
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 5942
    .end local v6    # "diffTime":J
    :cond_2b
    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method private static isFrameworkSourceCode()Z
    .locals 4

    .prologue
    .line 3726
    const/4 v0, 0x0

    .line 3728
    .local v0, "inFramework":Z
    :try_start_0
    const-class v2, Lcom/android/internal/telephony/MobileNetwork;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 3729
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_0

    .line 3730
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3733
    .end local v1    # "pkg":Ljava/lang/Package;
    :cond_0
    :goto_0
    return v0

    .line 3732
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 6113
    move-object v0, p0

    .line 6114
    .local v0, "verSb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 6115
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "verSb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6117
    .restart local v0    # "verSb":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    .line 6118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6120
    :cond_1
    const-string v1, "2015072201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6121
    if-eqz p2, :cond_2

    .line 6122
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6124
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 6135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6136
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 6137
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6142
    :goto_0
    const-string v1, " API"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6143
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6144
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6145
    const-string v1, "2015072201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6140
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static logValue(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 6042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6043
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 6044
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6046
    :cond_0
    if-eqz p1, :cond_2

    .line 6047
    if-eqz p0, :cond_1

    .line 6048
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6050
    :cond_1
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6051
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5000(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6052
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6054
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 6055
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6056
    if-eqz p2, :cond_d

    .line 6057
    instance-of v3, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v3, :cond_4

    .line 6058
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 6059
    .local v2, "writer":Ljava/io/CharArrayWriter;
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v2, p2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 6060
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6100
    .end local v2    # "writer":Ljava/io/CharArrayWriter;
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6062
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v3, :cond_5

    .line 6063
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 6064
    .restart local v2    # "writer":Ljava/io/CharArrayWriter;
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v2, p2}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$3700(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 6065
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6067
    .end local v2    # "writer":Ljava/io/CharArrayWriter;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, p2, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v3, :cond_6

    .line 6068
    check-cast p2, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p2    # "value":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    invoke-static {p2, v1}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$3800(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;

    goto :goto_0

    .line 6070
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v3, p2, [Ljava/lang/Long;

    if-eqz v3, :cond_8

    move-object v3, p2

    .line 6071
    check-cast v3, [Ljava/lang/Long;

    check-cast v3, [Ljava/lang/Long;

    array-length v0, v3

    .line 6072
    .local v0, "lenArray":I
    if-lez v0, :cond_7

    .line 6073
    check-cast p2, [Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Long;

    aget-object v3, p2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6075
    :cond_7
    const-string v3, "...*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6076
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6078
    .end local v0    # "lenArray":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_9

    .line 6079
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6081
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v3, p2, [Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, p2

    .line 6082
    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    array-length v0, v3

    .line 6083
    .restart local v0    # "lenArray":I
    if-lez v0, :cond_a

    .line 6084
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    aget-object v3, p2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6086
    :cond_a
    const-string v3, "...*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6087
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6089
    .end local v0    # "lenArray":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 6090
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6093
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6097
    :cond_d
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "value1"    # Ljava/lang/Long;
    .param p1, "value2"    # Ljava/lang/Long;

    .prologue
    .line 4972
    const/4 v0, 0x0

    .line 4973
    .local v0, "matchValue":Z
    if-nez p0, :cond_2

    .line 4974
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 4979
    :cond_0
    :goto_0
    return v0

    .line 4974
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4976
    :cond_2
    if-eqz p1, :cond_0

    .line 4977
    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static notifyCallbackInBackgroundHandler(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)V
    .locals 9
    .param p0, "threadConfig"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .param p1, "notifyItem"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    const/4 v6, 0x0

    .line 5955
    if-nez p1, :cond_1

    .line 6027
    :cond_0
    :goto_0
    return-void

    .line 5958
    :cond_1
    const/4 v1, 0x0

    .line 5959
    .local v1, "exception":Ljava/lang/Throwable;
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataSetting"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5961
    :try_start_0
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v6

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5963
    :catch_0
    move-exception v0

    .line 5964
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5965
    goto :goto_0

    .line 5967
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataSettingMenu"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5969
    :try_start_1
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v6

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/MobileNetwork$Menu;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Menu;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5971
    :catch_1
    move-exception v0

    .line 5972
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5973
    goto :goto_0

    .line 5975
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "roamingSetting"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5977
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v6

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 5979
    :catch_2
    move-exception v0

    .line 5980
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5981
    goto/16 :goto_0

    .line 5983
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "roamSoundSetting"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5985
    :try_start_3
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v6

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 5987
    :catch_3
    move-exception v0

    .line 5988
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5989
    goto/16 :goto_0

    .line 5991
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataPath"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5993
    :try_start_4
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Selection;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 5995
    :catch_4
    move-exception v0

    .line 5996
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5997
    goto/16 :goto_0

    .line 5999
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_6
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataDialog"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6001
    :try_start_5
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v4

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateDialogDisplay(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 6003
    :catch_5
    move-exception v0

    .line 6004
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 6005
    goto/16 :goto_0

    .line 6007
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_7
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6008
    const/4 v3, 0x0

    .line 6009
    .local v3, "values":[Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, [Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 6011
    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    .line 6012
    .local v2, "prevValues":[Ljava/lang/String;
    array-length v4, v2

    if-lez v4, :cond_9

    .line 6013
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/String;

    .line 6014
    array-length v4, v2

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6021
    .end local v2    # "prevValues":[Ljava/lang/String;
    :cond_8
    :goto_1
    :try_start_6
    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->callback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$2000(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-result-object v4

    # getter for: Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;->access$1900(Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Landroid/content/Context;

    move-result-object v5

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v6

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;->updateCustomization(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 6023
    :catch_6
    move-exception v0

    .line 6024
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    goto/16 :goto_0

    .line 6017
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "prevValues":[Ljava/lang/String;
    :cond_9
    move-object v3, v2

    goto :goto_1
.end method

.method private static objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4830
    move-object v0, p0

    .line 4831
    .local v0, "result":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 4832
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v1, :cond_1

    .line 4833
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4500(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/Object;

    move-result-object v0

    .line 4845
    :cond_0
    :goto_0
    return-object v0

    .line 4835
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_2

    .line 4836
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4838
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v1, :cond_3

    .line 4839
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$4600(Lcom/android/internal/telephony/MobileNetwork$Menu;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4841
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v1, :cond_0

    .line 4842
    check-cast p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p0    # "obj":Ljava/lang/Object;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->convertToObject()Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$4700(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static runtimeDebugOn()Z
    .locals 1

    .prologue
    .line 3609
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    return v0
.end method

.method public static setCustomization(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "customize"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/String;
    .param p4, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2244
    const/4 v2, 0x0

    .line 2245
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 2246
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 2248
    .local v0, "checkNextInterface":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2249
    .local v3, "sbCustomization":Ljava/lang/StringBuilder;
    const-string v4, "customization"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v4, "update "

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2273
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 2274
    if-eqz v1, :cond_1

    .line 2275
    move-object v2, v1

    .line 2277
    :cond_1
    if-nez v2, :cond_2

    .line 2278
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v4, "update "

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2280
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v2

    .line 2255
    :cond_3
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2256
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2258
    if-eqz p3, :cond_4

    .line 2259
    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2260
    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2263
    :cond_4
    if-eqz v0, :cond_0

    .line 2265
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 2267
    if-nez v1, :cond_0

    .line 2268
    const/4 v0, 0x0

    goto :goto_0

    .line 2282
    :cond_5
    return-void
.end method

.method public static setDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2144
    const/4 v2, 0x0

    .line 2145
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 2146
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 2148
    .local v0, "checkNextInterface":Z
    if-nez p1, :cond_3

    .line 2149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "write data path"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2163
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 2164
    if-eqz v1, :cond_1

    .line 2165
    move-object v2, v1

    .line 2167
    :cond_1
    if-nez v2, :cond_2

    .line 2168
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "update data path"

    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2170
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v2

    .line 2152
    :cond_3
    if-eqz v0, :cond_0

    .line 2154
    const-string v3, "dataPath"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 2157
    if-nez v1, :cond_0

    .line 2158
    const/4 v0, 0x0

    goto :goto_0

    .line 2172
    :cond_4
    return-void
.end method

.method public static setDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "roamingSetting"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1709
    const/4 v3, 0x0

    .line 1710
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1711
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 1713
    .local v0, "checkNextInterface":Z
    if-nez p2, :cond_3

    .line 1714
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v8, "write data roaming"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1817
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_11

    .line 1818
    if-eqz v1, :cond_1

    .line 1819
    move-object v3, v1

    .line 1821
    :cond_1
    if-nez v3, :cond_2

    .line 1822
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v8, "update data roaming"

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1824
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v3

    .line 1717
    :cond_3
    if-eqz v0, :cond_4

    .line 1719
    const-string v8, "roamingSetting"

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object v11, v9, v10

    invoke-static {p0, p1, v8, v9, p3}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1724
    if-nez v1, :cond_4

    .line 1725
    const/4 v0, 0x0

    .line 1729
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v6

    .line 1731
    .local v6, "sdkVersion":I
    if-eqz v0, :cond_5

    const/16 v8, 0x15

    if-lt v6, v8, :cond_5

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_5

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    .line 1736
    :try_start_0
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_1
    invoke-static {p0, v8, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V

    .line 1739
    const/4 v0, 0x0

    .line 1740
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->shepUiNotify(Landroid/content/Context;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    const/16 v8, 0x15

    if-ge v6, v8, :cond_0

    .line 1748
    const/4 v3, 0x0

    .line 1749
    if-eqz p1, :cond_b

    iget-object v7, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 1750
    .local v7, "slotSelection":Ljava/lang/Long;
    :goto_3
    if-eqz v7, :cond_7

    .line 1751
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    .line 1752
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update data roaming slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1756
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_7
    if-nez v3, :cond_9

    .line 1757
    const/4 v0, 0x0

    .line 1758
    const-string v5, "national_roaming_on"

    .line 1759
    .local v5, "keyNationalRoaming":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 1760
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 1762
    :try_start_1
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_4
    invoke-static {p0, v8, v1}, Lcom/android/internal/telephony/MobileNetwork;->setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1796
    :cond_8
    :goto_5
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_9

    .line 1806
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    :goto_6
    invoke-static {v9, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 1813
    .end local v5    # "keyNationalRoaming":Ljava/lang/String;
    :cond_9
    :goto_7
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->shepUiNotify(Landroid/content/Context;)Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 1736
    .end local v7    # "slotSelection":Ljava/lang/Long;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1741
    :catch_0
    move-exception v2

    .line 1742
    .local v2, "exSettings":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    goto/16 :goto_2

    .line 1749
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1762
    .restart local v5    # "keyNationalRoaming":Ljava/lang/String;
    .restart local v7    # "slotSelection":Ljava/lang/Long;
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 1765
    :catch_1
    move-exception v2

    .line 1766
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 1767
    goto :goto_5

    .line 1771
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_d
    const-string v4, "data_roaming_slot1"

    .line 1772
    .local v4, "keyDataRoaming":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_e

    .line 1773
    const-string v5, "national_roaming_slot1"

    .line 1779
    :goto_8
    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 1789
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v8, p2, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v8, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_9
    invoke-static {v9, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 1791
    :catch_2
    move-exception v2

    .line 1792
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_5

    .line 1776
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    :cond_e
    const-string v4, "data_roaming_slot2"

    .line 1777
    const-string v5, "national_roaming_slot2"

    goto :goto_8

    .line 1789
    :cond_f
    const/4 v8, 0x0

    goto :goto_9

    .line 1806
    .end local v4    # "keyDataRoaming":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    goto :goto_6

    .line 1808
    :catch_3
    move-exception v2

    .line 1809
    .restart local v2    # "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_7

    .line 1826
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    .end local v5    # "keyNationalRoaming":Ljava/lang/String;
    .end local v6    # "sdkVersion":I
    .end local v7    # "slotSelection":Ljava/lang/Long;
    :cond_11
    return-void
.end method

.method private static setDataRoamingInSettings(Landroid/content/Context;ILjava/lang/Throwable;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "prevEx"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4872
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v3

    .line 4886
    .local v3, "sdkVersion":I
    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 4887
    const-string v4, "android.provider.Settings$Global"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4888
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "putInt"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4889
    .local v2, "mth":Ljava/lang/reflect/Method;
    const-string v4, "DATA_ROAMING"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4890
    .local v1, "fld":Ljava/lang/reflect/Field;
    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-virtual {v2, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4895
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "mth":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 4893
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2000
    const/4 v3, 0x0

    .line 2001
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 2002
    .local v1, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 2004
    .local v0, "checkNextInterface":Z
    if-nez p2, :cond_3

    .line 2005
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v5, "write data roaming sound"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2041
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 2042
    if-eqz v1, :cond_1

    .line 2043
    move-object v3, v1

    .line 2045
    :cond_1
    if-nez v3, :cond_2

    .line 2046
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    .end local v3    # "exception":Ljava/lang/Throwable;
    const-string v5, "update data roaming sound"

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 2048
    .restart local v3    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v3

    .line 2008
    :cond_3
    if-eqz v0, :cond_4

    .line 2010
    const-string v7, "roamSoundSetting"

    new-array v8, v5, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    aput-object p2, v8, v6

    invoke-static {p0, p1, v7, v8, p3}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 2012
    if-nez v1, :cond_4

    .line 2013
    const/4 v0, 0x0

    .line 2017
    :cond_4
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v7

    const/16 v8, 0x15

    if-ge v7, v8, :cond_0

    iget-object v7, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 2020
    iget-object v7, p2, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2021
    .local v4, "on":Z
    const/4 v3, 0x0

    .line 2031
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_sound_on"

    if-eqz v4, :cond_5

    move v7, v5

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_6

    move v0, v5

    .line 2037
    :goto_2
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork;->shepUiNotify(Landroid/content/Context;)Ljava/lang/Throwable;

    goto :goto_0

    :cond_5
    move v7, v6

    .line 2031
    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    .line 2034
    :catch_0
    move-exception v2

    .line 2035
    .local v2, "exSettings":Ljava/lang/Throwable;
    move-object v3, v2

    goto :goto_2

    .line 2050
    .end local v2    # "exSettings":Ljava/lang/Throwable;
    .end local v4    # "on":Z
    :cond_7
    return-void
.end method

.method public static setMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/String;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "privilege"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1251
    const/4 v12, 0x0

    .line 1252
    .local v12, "exception":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 1253
    .local v9, "exHtcInterface":Ljava/lang/Throwable;
    const/4 v5, 0x1

    .line 1255
    .local v5, "checkNextInterface":Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getAndroidApiLevel()I

    move-result v17

    .line 1257
    .local v17, "sdkVersion":I
    if-nez p2, :cond_3

    .line 1258
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .end local v12    # "exception":Ljava/lang/Throwable;
    const-string v18, "write mobile data"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1433
    .restart local v12    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v5, :cond_b

    .line 1434
    if-eqz v9, :cond_1

    .line 1435
    move-object v12, v9

    .line 1437
    :cond_1
    if-nez v12, :cond_2

    .line 1438
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    .end local v12    # "exception":Ljava/lang/Throwable;
    const-string v18, "write mobile data"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1440
    .restart local v12    # "exception":Ljava/lang/Throwable;
    :cond_2
    throw v12

    .line 1261
    :cond_3
    if-eqz v5, :cond_4

    .line 1263
    const-string v18, "dataSetting"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p2, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MobileNetwork;->setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v9

    .line 1265
    if-nez v9, :cond_4

    .line 1266
    const/4 v5, 0x0

    .line 1270
    :cond_4
    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1272
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 1274
    .local v16, "on":Z
    if-eqz v5, :cond_5

    const/16 v18, 0x16

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 1276
    const/4 v12, 0x0

    .line 1277
    const/4 v14, 0x0

    .line 1279
    .local v14, "mth":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v18, "android.telephony.TelephonyManager"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1280
    .local v6, "cls":Ljava/lang/Class;
    const-string v18, "setDataEnabled"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1281
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    .end local v6    # "cls":Ljava/lang/Class;
    :goto_1
    if-eqz v14, :cond_5

    if-nez v12, :cond_5

    .line 1295
    const/4 v13, 0x0

    .line 1297
    .local v13, "mgr":Landroid/telephony/TelephonyManager;
    :try_start_1
    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v13, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1301
    :goto_2
    if-eqz v13, :cond_5

    .line 1303
    const/16 v18, 0x2

    :try_start_2
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1304
    const/4 v5, 0x0

    .line 1312
    .end local v13    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v14    # "mth":Ljava/lang/reflect/Method;
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 1314
    const/4 v12, 0x0

    .line 1315
    const/4 v14, 0x0

    .line 1317
    .restart local v14    # "mth":Ljava/lang/reflect/Method;
    :try_start_3
    const-string v18, "android.telephony.TelephonyManager"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1318
    .restart local v6    # "cls":Ljava/lang/Class;
    const-string v18, "setDataEnabled"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1319
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1332
    .end local v6    # "cls":Ljava/lang/Class;
    :goto_4
    if-eqz v14, :cond_6

    if-nez v12, :cond_6

    .line 1333
    const/4 v13, 0x0

    .line 1335
    .restart local v13    # "mgr":Landroid/telephony/TelephonyManager;
    :try_start_4
    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v13, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1339
    :goto_5
    if-eqz v13, :cond_6

    .line 1341
    const/16 v18, 0x1

    :try_start_5
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1342
    const/4 v5, 0x0

    .line 1350
    .end local v13    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v14    # "mth":Ljava/lang/reflect/Method;
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 1352
    const/4 v12, 0x0

    .line 1353
    const/4 v14, 0x0

    .line 1354
    .restart local v14    # "mth":Ljava/lang/reflect/Method;
    if-eqz v16, :cond_a

    const-string v15, "enableDataConnectivity"

    .line 1356
    .local v15, "nameMethod":Ljava/lang/String;
    :goto_7
    :try_start_6
    const-string v18, "android.telephony.TelephonyManager"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1357
    .restart local v6    # "cls":Ljava/lang/Class;
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1358
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1371
    .end local v6    # "cls":Ljava/lang/Class;
    :goto_8
    if-eqz v14, :cond_7

    if-nez v12, :cond_7

    .line 1372
    const/4 v13, 0x0

    .line 1374
    .restart local v13    # "mgr":Landroid/telephony/TelephonyManager;
    :try_start_7
    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v13, v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1378
    :goto_9
    if-eqz v13, :cond_7

    .line 1380
    const/16 v18, 0x0

    :try_start_8
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1381
    const/4 v5, 0x0

    .line 1389
    .end local v13    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v14    # "mth":Ljava/lang/reflect/Method;
    .end local v15    # "nameMethod":Ljava/lang/String;
    :cond_7
    :goto_a
    if-eqz v5, :cond_9

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 1390
    const/4 v8, 0x0

    .line 1391
    .local v8, "exFroyo":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 1393
    .restart local v14    # "mth":Ljava/lang/reflect/Method;
    :try_start_9
    const-string v18, "android.net.ConnectivityManager"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1394
    .restart local v6    # "cls":Ljava/lang/Class;
    const-string v18, "setMobileDataEnabled"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1395
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1408
    .end local v6    # "cls":Ljava/lang/Class;
    :goto_b
    if-eqz v14, :cond_8

    if-nez v8, :cond_8

    .line 1409
    const/4 v13, 0x0

    .line 1411
    .local v13, "mgr":Landroid/net/ConnectivityManager;
    :try_start_a
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v13, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1415
    :goto_c
    if-eqz v13, :cond_8

    .line 1417
    const/16 v18, 0x1

    :try_start_b
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1418
    const/4 v5, 0x0

    .line 1424
    .end local v13    # "mgr":Landroid/net/ConnectivityManager;
    :cond_8
    :goto_d
    if-nez v12, :cond_9

    .line 1425
    move-object v12, v8

    .line 1429
    .end local v8    # "exFroyo":Ljava/lang/Throwable;
    .end local v14    # "mth":Ljava/lang/reflect/Method;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->shepUiNotify(Landroid/content/Context;)Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 1282
    .restart local v14    # "mth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v11

    .line 1283
    .local v11, "exReflect":Ljava/lang/Throwable;
    move-object v12, v11

    goto/16 :goto_1

    .line 1298
    .end local v11    # "exReflect":Ljava/lang/Throwable;
    .local v13, "mgr":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v10

    .line 1299
    .local v10, "exManager":Ljava/lang/Throwable;
    move-object v12, v10

    goto/16 :goto_2

    .line 1305
    .end local v10    # "exManager":Ljava/lang/Throwable;
    :catch_2
    move-exception v7

    .line 1306
    .local v7, "exExecute":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    goto/16 :goto_3

    .line 1320
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v13    # "mgr":Landroid/telephony/TelephonyManager;
    :catch_3
    move-exception v11

    .line 1321
    .restart local v11    # "exReflect":Ljava/lang/Throwable;
    move-object v12, v11

    goto/16 :goto_4

    .line 1336
    .end local v11    # "exReflect":Ljava/lang/Throwable;
    .restart local v13    # "mgr":Landroid/telephony/TelephonyManager;
    :catch_4
    move-exception v10

    .line 1337
    .restart local v10    # "exManager":Ljava/lang/Throwable;
    move-object v12, v10

    goto/16 :goto_5

    .line 1343
    .end local v10    # "exManager":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    .line 1344
    .restart local v7    # "exExecute":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    goto/16 :goto_6

    .line 1354
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v13    # "mgr":Landroid/telephony/TelephonyManager;
    :cond_a
    const-string v15, "disableDataConnectivity"

    goto/16 :goto_7

    .line 1359
    .restart local v15    # "nameMethod":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 1360
    .restart local v11    # "exReflect":Ljava/lang/Throwable;
    move-object v12, v11

    goto/16 :goto_8

    .line 1375
    .end local v11    # "exReflect":Ljava/lang/Throwable;
    .restart local v13    # "mgr":Landroid/telephony/TelephonyManager;
    :catch_7
    move-exception v10

    .line 1376
    .restart local v10    # "exManager":Ljava/lang/Throwable;
    move-object v12, v10

    goto/16 :goto_9

    .line 1382
    .end local v10    # "exManager":Ljava/lang/Throwable;
    :catch_8
    move-exception v7

    .line 1383
    .restart local v7    # "exExecute":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    goto/16 :goto_a

    .line 1396
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v13    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v15    # "nameMethod":Ljava/lang/String;
    .restart local v8    # "exFroyo":Ljava/lang/Throwable;
    :catch_9
    move-exception v11

    .line 1397
    .restart local v11    # "exReflect":Ljava/lang/Throwable;
    move-object v8, v11

    goto :goto_b

    .line 1412
    .end local v11    # "exReflect":Ljava/lang/Throwable;
    .local v13, "mgr":Landroid/net/ConnectivityManager;
    :catch_a
    move-exception v10

    .line 1413
    .restart local v10    # "exManager":Ljava/lang/Throwable;
    move-object v8, v10

    goto :goto_c

    .line 1419
    .end local v10    # "exManager":Ljava/lang/Throwable;
    :catch_b
    move-exception v7

    .line 1420
    .restart local v7    # "exExecute":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_d

    .line 1442
    .end local v7    # "exExecute":Ljava/lang/Throwable;
    .end local v8    # "exFroyo":Ljava/lang/Throwable;
    .end local v13    # "mgr":Landroid/net/ConnectivityManager;
    .end local v14    # "mth":Ljava/lang/reflect/Method;
    .end local v16    # "on":Z
    :cond_b
    return-void
.end method

.method public static setValue(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 48
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "settingType"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/Object;
    .param p4, "privilege"    # Ljava/lang/String;

    .prologue
    .line 3865
    const/16 v17, 0x0

    .line 3866
    .local v17, "exception":Ljava/lang/Throwable;
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 3867
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    .end local v17    # "exception":Ljava/lang/Throwable;
    const-string v44, "set invalid value to HTC"

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4237
    .restart local v17    # "exception":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v17

    .line 3870
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->isFrameworkSourceCode()Z

    move-result v36

    .line 3871
    .local v36, "srcInFramework":Z
    const/16 v30, 0x0

    .line 3873
    .local v30, "sbDebug":Ljava/lang/StringBuilder;
    if-nez v36, :cond_9

    .line 3889
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getFrameworkClassName()Ljava/lang/String;

    move-result-object v18

    .line 3890
    .local v18, "fwMobileNetwork":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 3892
    .local v6, "cls":Ljava/lang/Class;
    const-string v44, "$Selection"

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 3893
    .local v7, "clsSelection":Ljava/lang/Class;
    const/16 v29, 0x0

    .line 3894
    .local v29, "objSlotNphone":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 3895
    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-class v46, Ljava/lang/Object;

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 3896
    .local v10, "cnstrSelection":Ljava/lang/reflect/Constructor;
    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 3899
    .end local v10    # "cnstrSelection":Ljava/lang/reflect/Constructor;
    .end local v29    # "objSlotNphone":Ljava/lang/Object;
    :cond_3
    const/16 v41, 0x0

    .line 3900
    .local v41, "valueArray":[Ljava/lang/Object;
    if-eqz p3, :cond_8

    .line 3901
    move-object/from16 v0, p3

    instance-of v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move/from16 v44, v0

    if-nez v44, :cond_4

    move-object/from16 v0, p3

    instance-of v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move/from16 v44, v0

    if-eqz v44, :cond_7

    .line 3903
    :cond_4
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 3904
    .local v31, "sbFwMobileNetworkSetting":Ljava/lang/StringBuilder;
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    const/16 v37, 0x1

    .line 3906
    .local v37, "structSetting":Z
    move-object/from16 v0, p3

    instance-of v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move/from16 v44, v0

    if-eqz v44, :cond_5

    .line 3907
    const-string v44, "$Selection"

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    const/16 v37, 0x0

    .line 3910
    :cond_5
    if-eqz v37, :cond_6

    .line 3911
    const-string v44, "$Setting"

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3913
    :cond_6
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3914
    .local v8, "clsValue":Ljava/lang/Class;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, [Ljava/lang/Object;

    move-object/from16 v0, v44

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    .line 3915
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_8

    .line 3916
    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-class v46, Ljava/lang/Object;

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 3917
    .local v9, "cnstr":Ljava/lang/reflect/Constructor;
    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v46, p3, v21

    invoke-static/range {v46 .. v46}, Lcom/android/internal/telephony/MobileNetwork;->objectToFramework(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v41, v21

    .line 3915
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3921
    .end local v8    # "clsValue":Ljava/lang/Class;
    .end local v9    # "cnstr":Ljava/lang/reflect/Constructor;
    .end local v21    # "i":I
    .end local v31    # "sbFwMobileNetworkSetting":Ljava/lang/StringBuilder;
    .end local v37    # "structSetting":Z
    :cond_7
    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    .line 3925
    :cond_8
    const-string v44, "setValue"

    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-class v47, Landroid/content/Context;

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v7, v45, v46

    const/16 v46, 0x2

    const-class v47, Ljava/lang/String;

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-class v47, [Ljava/lang/Object;

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-class v47, Ljava/lang/String;

    aput-object v47, v45, v46

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 3927
    .local v28, "mth":Ljava/lang/reflect/Method;
    const/16 v44, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3928
    const/16 v44, 0x0

    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p0, v45, v46

    const/16 v46, 0x1

    aput-object v29, v45, v46

    const/16 v46, 0x2

    aput-object p2, v45, v46

    const/16 v46, 0x3

    aput-object v41, v45, v46

    const/16 v46, 0x4

    aput-object p4, v45, v46

    move-object/from16 v0, v28

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "exception":Ljava/lang/Throwable;
    check-cast v17, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3936
    .end local v6    # "cls":Ljava/lang/Class;
    .end local v7    # "clsSelection":Ljava/lang/Class;
    .end local v18    # "fwMobileNetwork":Ljava/lang/String;
    .end local v28    # "mth":Ljava/lang/reflect/Method;
    .end local v41    # "valueArray":[Ljava/lang/Object;
    .restart local v17    # "exception":Ljava/lang/Throwable;
    :cond_9
    :goto_2
    if-eqz v36, :cond_36

    .line 3937
    const/16 v20, 0x0

    .line 3939
    .local v20, "htcUri":Landroid/net/Uri;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MobileNetwork;->getHtcMobileNetwork(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v19

    .line 3940
    .local v19, "htcInterface":Landroid/net/Uri$Builder;
    if-eqz v19, :cond_a

    .line 3941
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 3949
    .end local v19    # "htcInterface":Landroid/net/Uri$Builder;
    :cond_a
    :goto_3
    const/4 v12, 0x0

    .line 3950
    .local v12, "exEachTry":Ljava/lang/Throwable;
    const/16 v24, 0x0

    .line 3951
    .local v24, "indexRetry":I
    if-nez p4, :cond_1b

    const/16 v27, 0x1

    .line 3952
    .local v27, "maxRetry":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v27

    if-gt v0, v1, :cond_35

    .line 3953
    move-object/from16 v12, v17

    .line 3954
    const/16 v19, 0x0

    .line 3955
    .restart local v19    # "htcInterface":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    .line 3956
    .local v5, "client":Landroid/content/ContentProviderClient;
    if-eqz v20, :cond_c

    .line 3958
    :try_start_2
    const-string v44, "set"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->getContentProviderClient(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 3965
    :cond_b
    :goto_5
    new-instance v19, Landroid/net/Uri$Builder;

    .end local v19    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-direct/range {v19 .. v19}, Landroid/net/Uri$Builder;-><init>()V

    .line 3966
    .restart local v19    # "htcInterface":Landroid/net/Uri$Builder;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3967
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3968
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3991
    :cond_c
    if-eqz v5, :cond_31

    .line 3992
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 3993
    .local v42, "values":Landroid/content/ContentValues;
    const/16 v43, 0x0

    .line 3994
    .local v43, "valuesArry":[Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->getUserID()Ljava/lang/Long;

    move-result-object v40

    .line 4010
    .local v40, "userId":Ljava/lang/Long;
    if-eqz p1, :cond_e

    .line 4011
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v44, v0

    if-eqz v44, :cond_d

    .line 4012
    const-string v44, "slot"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v45, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4014
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v44, v0

    if-eqz v44, :cond_e

    .line 4015
    const-string v44, "phoneType"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v45, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4018
    :cond_e
    if-eqz v40, :cond_f

    .line 4019
    const-string v44, "user"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4021
    :cond_f
    const/16 v25, 0x0

    .line 4022
    .local v25, "isBulkInsert":Z
    if-eqz p3, :cond_2e

    .line 4023
    move-object/from16 v0, p3

    instance-of v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move/from16 v44, v0

    if-eqz v44, :cond_1e

    .line 4024
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    if-lez v44, :cond_12

    .line 4025
    move-object/from16 v0, p3

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v44, v0

    check-cast v44, [Lcom/android/internal/telephony/MobileNetwork$Selection;

    const/16 v45, 0x0

    aget-object v11, v44, v45

    .line 4026
    .local v11, "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-eqz v11, :cond_12

    .line 4027
    if-eqz v30, :cond_10

    if-gtz v24, :cond_10

    .line 4028
    const-string v44, " into ["

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4029
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1c

    .line 4030
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v44, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4035
    :goto_6
    const/16 v44, 0x3a

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4036
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1d

    .line 4037
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v44, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4042
    :goto_7
    const/16 v44, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4044
    :cond_10
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v44, v0

    if-eqz v44, :cond_11

    .line 4045
    const-string v44, "slot"

    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    move-object/from16 v45, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4047
    :cond_11
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v44, v0

    if-eqz v44, :cond_12

    .line 4048
    const-string v44, "phoneType"

    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    move-object/from16 v45, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4164
    .end local v11    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_12
    :goto_8
    if-eqz p4, :cond_14

    .line 4165
    if-eqz v30, :cond_13

    if-gtz v24, :cond_13

    .line 4166
    const-string v44, " by["

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    const/16 v44, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4170
    :cond_13
    const-string v44, "privilege"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    :cond_14
    const/16 v39, -0x1

    .line 4174
    .local v39, "updated":I
    if-nez v43, :cond_30

    if-nez v25, :cond_30

    .line 4175
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v44

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v39

    .line 4180
    :goto_9
    if-gtz v39, :cond_16

    .line 4181
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 4182
    .local v35, "sbWrite":Ljava/lang/StringBuilder;
    const-string v44, "update value ["

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    const/16 v44, 0x5d

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4185
    if-eqz v43, :cond_15

    .line 4186
    const/16 v44, 0x2a

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4187
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4189
    :cond_15
    const-string v44, " to HTC"

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    .end local v12    # "exEachTry":Ljava/lang/Throwable;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-direct {v12, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 4196
    .end local v25    # "isBulkInsert":Z
    .end local v35    # "sbWrite":Ljava/lang/StringBuilder;
    .end local v39    # "updated":I
    .restart local v12    # "exEachTry":Ljava/lang/Throwable;
    :cond_16
    :goto_a
    :try_start_4
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 4207
    .end local v40    # "userId":Ljava/lang/Long;
    .end local v42    # "values":Landroid/content/ContentValues;
    .end local v43    # "valuesArry":[Landroid/content/ContentValues;
    :cond_17
    :goto_b
    const/16 v38, 0x0

    .line 4208
    .local v38, "tryToRetry":Z
    if-eqz v12, :cond_19

    .line 4209
    instance-of v0, v12, Landroid/os/DeadObjectException;

    move/from16 v44, v0

    if-nez v44, :cond_18

    instance-of v0, v12, Landroid/os/TransactionTooLargeException;

    move/from16 v44, v0

    if-eqz v44, :cond_32

    .line 4211
    :cond_18
    const/16 v38, 0x1

    .line 4217
    :cond_19
    :goto_c
    if-eqz v38, :cond_34

    .line 4218
    if-eqz v30, :cond_1a

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 4219
    const-string v44, "LibMobileNetwork"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4222
    :cond_1a
    :try_start_5
    sget-object v44, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_UPDATE_RETRY_DELAY_MS:[J

    aget-wide v44, v44, v24

    invoke-static/range {v44 .. v45}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 4224
    :goto_d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 3929
    .end local v5    # "client":Landroid/content/ContentProviderClient;
    .end local v12    # "exEachTry":Ljava/lang/Throwable;
    .end local v17    # "exception":Ljava/lang/Throwable;
    .end local v19    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v20    # "htcUri":Landroid/net/Uri;
    .end local v24    # "indexRetry":I
    .end local v27    # "maxRetry":I
    .end local v38    # "tryToRetry":Z
    :catch_0
    move-exception v15

    .line 3930
    .local v15, "exRedirect":Ljava/lang/Throwable;
    invoke-static {v15}, Lcom/android/internal/telephony/MobileNetwork;->getThrowableBeforeInvoke(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v17

    .restart local v17    # "exception":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 3943
    .end local v15    # "exRedirect":Ljava/lang/Throwable;
    .restart local v20    # "htcUri":Landroid/net/Uri;
    :catch_1
    move-exception v13

    .line 3944
    .local v13, "exHtcInterface":Ljava/lang/Throwable;
    if-nez v17, :cond_a

    .line 3945
    move-object/from16 v17, v13

    goto/16 :goto_3

    .line 3951
    .end local v13    # "exHtcInterface":Ljava/lang/Throwable;
    .restart local v12    # "exEachTry":Ljava/lang/Throwable;
    .restart local v24    # "indexRetry":I
    :cond_1b
    sget-object v44, Lcom/android/internal/telephony/MobileNetwork;->HTC_CP_UPDATE_RETRY_DELAY_MS:[J

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v27, v0

    goto/16 :goto_4

    .line 3959
    .restart local v5    # "client":Landroid/content/ContentProviderClient;
    .restart local v19    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v27    # "maxRetry":I
    :catch_2
    move-exception v14

    .line 3960
    .local v14, "exProviderClient":Ljava/lang/Throwable;
    if-nez v12, :cond_b

    .line 3961
    move-object v12, v14

    goto/16 :goto_5

    .line 4033
    .end local v14    # "exProviderClient":Ljava/lang/Throwable;
    .restart local v11    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v25    # "isBulkInsert":Z
    .restart local v40    # "userId":Ljava/lang/Long;
    .restart local v42    # "values":Landroid/content/ContentValues;
    .restart local v43    # "valuesArry":[Landroid/content/ContentValues;
    :cond_1c
    const/16 v44, 0x2d

    :try_start_6
    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 4192
    .end local v11    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .end local v12    # "exEachTry":Ljava/lang/Throwable;
    .end local v25    # "isBulkInsert":Z
    :catch_3
    move-exception v16

    .line 4193
    .local v16, "exUpdate":Ljava/lang/Throwable;
    move-object/from16 v12, v16

    .restart local v12    # "exEachTry":Ljava/lang/Throwable;
    goto :goto_a

    .line 4040
    .end local v16    # "exUpdate":Ljava/lang/Throwable;
    .restart local v11    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    .restart local v25    # "isBulkInsert":Z
    :cond_1d
    const/16 v44, 0x2d

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 4053
    .end local v11    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_1e
    move-object/from16 v0, p3

    instance-of v0, v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move/from16 v44, v0

    if-eqz v44, :cond_24

    .line 4054
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    if-lez v44, :cond_22

    .line 4055
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 4056
    .local v34, "sbValue":Ljava/lang/StringBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 4057
    .local v32, "sbGrayout":Ljava/lang/StringBuilder;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4058
    .local v33, "sbHide":Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    check-cast v0, [Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object v4, v0

    .local v4, "arr$":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    array-length v0, v4

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_e
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_20

    aget-object v11, v4, v22

    .line 4059
    .local v11, "eachValue":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz v11, :cond_1f

    .line 4060
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v44

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4061
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v44

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4062
    iget-object v0, v11, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v44

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4058
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 4065
    :cond_1f
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v44

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4066
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v44

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4067
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C

    move-result v44

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 4070
    .end local v11    # "eachValue":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_20
    if-eqz v30, :cond_21

    if-gtz v24, :cond_21

    .line 4071
    const-string v44, " into ["

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4072
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    const/16 v44, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4077
    :cond_21
    const-string v44, "value"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    const-string v44, "uiGrayOut"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    const-string v44, "uiHide"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4082
    .end local v4    # "arr$":[Lcom/android/internal/telephony/MobileNetwork$Setting;
    .end local v22    # "i$":I
    .end local v26    # "len$":I
    .end local v32    # "sbGrayout":Ljava/lang/StringBuilder;
    .end local v33    # "sbHide":Ljava/lang/StringBuilder;
    .end local v34    # "sbValue":Ljava/lang/StringBuilder;
    :cond_22
    if-eqz v30, :cond_23

    if-gtz v24, :cond_23

    .line 4083
    const-string v44, " into [---]"

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4085
    :cond_23
    const-string v44, "value"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4086
    const-string v44, "uiGrayOut"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4087
    const-string v44, "uiHide"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4090
    :cond_24
    move-object/from16 v0, p3

    instance-of v0, v0, [Ljava/lang/String;

    move/from16 v44, v0

    if-eqz v44, :cond_29

    .line 4091
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    if-lez v44, :cond_26

    .line 4092
    const-string v45, "value"

    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    check-cast v44, [Ljava/lang/String;

    const/16 v46, 0x0

    aget-object v44, v44, v46

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4093
    if-eqz v30, :cond_25

    if-gtz v24, :cond_25

    .line 4094
    const-string v44, " into S["

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4095
    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    check-cast v44, [Ljava/lang/String;

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4096
    const/16 v44, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4097
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_25

    .line 4098
    const/16 v44, 0x2a

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4099
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4108
    :cond_25
    :goto_10
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->size()I

    move-result v44

    if-lez v44, :cond_27

    .line 4109
    const/16 v44, 0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v44

    move/from16 v0, v44

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v43, v0

    .line 4110
    const/16 v44, 0x0

    aput-object v42, v43, v44

    .line 4111
    const/16 v23, 0x1

    .line 4112
    .local v23, "idxArray":I
    :goto_11
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v23

    move/from16 v1, v44

    if-ge v0, v1, :cond_28

    .line 4113
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    aput-object v44, v43, v23

    .line 4114
    aget-object v45, v43, v23

    const-string v46, "value"

    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    check-cast v44, [Ljava/lang/String;

    aget-object v44, v44, v23

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    .line 4104
    .end local v23    # "idxArray":I
    :cond_26
    if-eqz v30, :cond_25

    if-gtz v24, :cond_25

    .line 4105
    const-string v44, " into S*0"

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 4119
    :cond_27
    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v43, v0

    .line 4121
    :cond_28
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 4123
    :cond_29
    move-object/from16 v0, p3

    instance-of v0, v0, [Ljava/lang/Long;

    move/from16 v44, v0

    if-eqz v44, :cond_12

    .line 4124
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    if-lez v44, :cond_2b

    .line 4125
    const-string v45, "value"

    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/Long;

    move-object/from16 v44, v0

    check-cast v44, [Ljava/lang/Long;

    const/16 v46, 0x0

    aget-object v44, v44, v46

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4126
    if-eqz v30, :cond_2a

    if-gtz v24, :cond_2a

    .line 4127
    const-string v44, " into L["

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/Long;

    move-object/from16 v44, v0

    check-cast v44, [Ljava/lang/Long;

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4129
    const/16 v44, 0x5d

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4130
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_2a

    .line 4131
    const/16 v44, 0x2a

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4132
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4141
    :cond_2a
    :goto_12
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->size()I

    move-result v44

    if-lez v44, :cond_2c

    .line 4142
    const/16 v44, 0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v44

    move/from16 v0, v44

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v43, v0

    .line 4143
    const/16 v44, 0x0

    aput-object v42, v43, v44

    .line 4144
    const/16 v23, 0x1

    .line 4145
    .restart local v23    # "idxArray":I
    :goto_13
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v23

    move/from16 v1, v44

    if-ge v0, v1, :cond_2d

    .line 4146
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    aput-object v44, v43, v23

    .line 4147
    aget-object v45, v43, v23

    const-string v46, "value"

    move-object/from16 v0, p3

    check-cast v0, [Ljava/lang/Long;

    move-object/from16 v44, v0

    check-cast v44, [Ljava/lang/Long;

    aget-object v44, v44, v23

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4148
    add-int/lit8 v23, v23, 0x1

    goto :goto_13

    .line 4137
    .end local v23    # "idxArray":I
    :cond_2b
    if-eqz v30, :cond_2a

    if-gtz v24, :cond_2a

    .line 4138
    const-string v44, " into L*0"

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 4152
    :cond_2c
    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v43, v0

    .line 4154
    :cond_2d
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 4159
    :cond_2e
    if-eqz v30, :cond_2f

    if-gtz v24, :cond_2f

    .line 4160
    const-string v44, " into null"

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4162
    :cond_2f
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 4178
    .restart local v39    # "updated":I
    :cond_30
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-result v39

    goto/16 :goto_9

    .line 4199
    .end local v25    # "isBulkInsert":Z
    .end local v39    # "updated":I
    .end local v40    # "userId":Ljava/lang/Long;
    .end local v42    # "values":Landroid/content/ContentValues;
    .end local v43    # "valuesArry":[Landroid/content/ContentValues;
    :cond_31
    if-nez v12, :cond_17

    .line 4200
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 4201
    .restart local v35    # "sbWrite":Ljava/lang/StringBuilder;
    const-string v44, "set value ["

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4202
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4203
    const-string v44, "] to HTC"

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    .end local v12    # "exEachTry":Ljava/lang/Throwable;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/MobileNetwork;->logExceptionPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-direct {v12, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .restart local v12    # "exEachTry":Ljava/lang/Throwable;
    goto/16 :goto_b

    .line 4214
    .end local v35    # "sbWrite":Ljava/lang/StringBuilder;
    .restart local v38    # "tryToRetry":Z
    :cond_32
    if-nez v5, :cond_33

    if-lez v24, :cond_33

    const/16 v38, 0x1

    :goto_14
    goto/16 :goto_c

    :cond_33
    const/16 v38, 0x0

    goto :goto_14

    .line 4227
    :cond_34
    add-int/lit8 v24, v27, 0x1

    goto/16 :goto_4

    .line 4230
    .end local v5    # "client":Landroid/content/ContentProviderClient;
    .end local v19    # "htcInterface":Landroid/net/Uri$Builder;
    .end local v38    # "tryToRetry":Z
    :cond_35
    move-object/from16 v17, v12

    .line 4233
    .end local v12    # "exEachTry":Ljava/lang/Throwable;
    .end local v20    # "htcUri":Landroid/net/Uri;
    .end local v24    # "indexRetry":I
    .end local v27    # "maxRetry":I
    :cond_36
    if-eqz v30, :cond_1

    .line 4234
    const-string v44, "LibMobileNetwork"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4197
    .restart local v5    # "client":Landroid/content/ContentProviderClient;
    .restart local v12    # "exEachTry":Ljava/lang/Throwable;
    .restart local v19    # "htcInterface":Landroid/net/Uri$Builder;
    .restart local v20    # "htcUri":Landroid/net/Uri;
    .restart local v24    # "indexRetry":I
    .restart local v27    # "maxRetry":I
    .restart local v40    # "userId":Ljava/lang/Long;
    .restart local v42    # "values":Landroid/content/ContentValues;
    .restart local v43    # "valuesArry":[Landroid/content/ContentValues;
    :catch_4
    move-exception v44

    goto/16 :goto_b

    .line 4223
    .end local v40    # "userId":Ljava/lang/Long;
    .end local v42    # "values":Landroid/content/ContentValues;
    .end local v43    # "valuesArry":[Landroid/content/ContentValues;
    .restart local v38    # "tryToRetry":Z
    :catch_5
    move-exception v44

    goto/16 :goto_d
.end method

.method private static shepUiNotify(Landroid/content/Context;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3777
    const/4 v0, 0x0

    .line 3826
    .local v0, "exception":Ljava/lang/Throwable;
    return-object v0
.end method
