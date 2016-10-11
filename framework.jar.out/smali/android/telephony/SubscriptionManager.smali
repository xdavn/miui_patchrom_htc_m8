.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 390
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1298
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1301
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1306
    :goto_0
    return v2

    .line 1301
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    move v2, p2

    .line 1306
    goto :goto_0
.end method

.method public static getDefaultDataSubId()I
    .locals 3

    .prologue
    .line 1024
    const/4 v1, -0x1

    .line 1027
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1028
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1029
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1036
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 1031
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultSmsSubId()I
    .locals 3

    .prologue
    .line 984
    const/4 v1, -0x1

    .line 987
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 988
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 989
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 996
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 991
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultSubId()I
    .locals 3

    .prologue
    .line 922
    const/4 v1, -0x1

    .line 925
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 926
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 927
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 934
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 929
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    .prologue
    .line 974
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .locals 3

    .prologue
    .line 939
    const/4 v1, -0x1

    .line 942
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 943
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 944
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 951
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 946
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1319
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1322
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1327
    .end local p2    # "defValue":I
    :cond_0
    :goto_0
    return p2

    .line 1323
    .restart local p2    # "defValue":I
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhoneId(I)I
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v1, -0x1

    .line 874
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 877
    sget-object v2, Lcom/android/internal/telephony/ACCCustomizationManager;->SENSE_VERSION:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v1

    .line 884
    :cond_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isDummySubId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    :cond_2
    const/4 v1, -0x1

    .line 898
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 899
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 900
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 902
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1338
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1341
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1342
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1343
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1344
    if-eqz v4, :cond_0

    .line 1345
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 1346
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 1348
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1349
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1350
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1351
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method public static getSimStateForSlotIdx(I)I
    .locals 4
    .param p0, "slotIdx"    # I

    .prologue
    .line 1235
    const/4 v1, 0x0

    .line 1238
    .local v1, "simState":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1239
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1240
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIdx(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1244
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimStateForSubscriber: simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1245
    return v1

    .line 1242
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSlotId(I)I
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 830
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    :cond_0
    const/4 v1, -0x1

    .line 839
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 840
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 841
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 847
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v1

    .line 843
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubId(I)[I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 853
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 854
    const-string v2, "[getSubId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 855
    const/4 v1, 0x0

    .line 869
    :cond_0
    :goto_0
    return-object v1

    .line 858
    :cond_1
    const/4 v1, 0x0

    .line 861
    .local v1, "subId":[I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 862
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 863
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 865
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1275
    const/4 v1, 0x0

    .line 1277
    .local v1, "resultValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1278
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, p1, v2}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1285
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-object v1

    .line 1282
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDummySubId(I)Z
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 1114
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 1115
    .local v1, "numSubs":I
    const/4 v2, -0x2

    if-gt p0, v2, :cond_0

    rsub-int/lit8 v2, v1, -0x2

    if-le p0, v2, :cond_0

    const/4 v0, 0x1

    .line 1116
    .local v0, "isDummySubId":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDummySubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1117
    return v0

    .line 1115
    .end local v0    # "isDummySubId":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 1135
    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 1145
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 1140
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 1126
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1150
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1153
    .local v0, "subIds":[I
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v1, "slot"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1158
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1162
    :goto_0
    return-void

    .line 1160
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1167
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1172
    return-void
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 1257
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1258
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1259
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 414
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 424
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_0

    .line 425
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 414
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0

    .line 427
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 672
    const-string v1, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 674
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    const-string v1, "[addSubscriptionInfoRecord]- invalid slotId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 679
    :cond_1
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 680
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 682
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 684
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1079
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return v0

    .line 1082
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 2

    .prologue
    .line 1099
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1100
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1101
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public clearSubscriptionInfo()V
    .locals 2

    .prologue
    .line 1065
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1066
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1067
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 3

    .prologue
    .line 1180
    const/4 v1, 0x0

    .line 1183
    .local v1, "subId":[I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1184
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1185
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1191
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1192
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 1195
    :cond_1
    return-object v1

    .line 1187
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 465
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    const/4 v1, 0x0

    .line 483
    :cond_0
    :goto_0
    return-object v1

    .line 472
    :cond_1
    const/4 v1, 0x0

    .line 475
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 476
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 477
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 479
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 3

    .prologue
    .line 628
    const/4 v1, 0x0

    .line 631
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 632
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 633
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 639
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 635
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 3

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 651
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 652
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 653
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 495
    if-nez p1, :cond_1

    .line 496
    const-string v2, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x0

    .line 511
    :cond_0
    :goto_0
    return-object v1

    .line 500
    :cond_1
    const/4 v1, 0x0

    .line 503
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 504
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 505
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 507
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "slotIdx"    # I

    .prologue
    .line 521
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    const-string v2, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x0

    .line 538
    :cond_0
    :goto_0
    return-object v1

    .line 526
    :cond_1
    const/4 v1, 0x0

    .line 529
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 530
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 531
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 534
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 590
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 591
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 592
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 597
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-object v1

    .line 594
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 3

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 611
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 612
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 613
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 619
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 615
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    const/4 v1, 0x0

    .line 552
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 553
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 554
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 560
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    return-object v1

    .line 556
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 1059
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1054
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    .prologue
    .line 1019
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1014
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 969
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public isActiveSubId(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1361
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1362
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1363
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1367
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_0
    return v1

    .line 1365
    :catch_0
    move-exception v1

    .line 1367
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1209
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1210
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 1212
    const/4 v1, 0x0

    .line 1214
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    goto :goto_0
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 440
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 450
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_0

    .line 451
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 440
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0

    .line 453
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setDataRoaming(II)I
    .locals 3
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 804
    if-ltz p1, :cond_0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 805
    :cond_0
    const-string v2, "[setDataRoaming]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 806
    const/4 v1, -0x1

    .line 820
    :cond_1
    :goto_0
    return v1

    .line 809
    :cond_2
    const/4 v1, 0x0

    .line 812
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 813
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 814
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 816
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDefaultDataSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1043
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1044
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1045
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1003
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1004
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1005
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 958
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 959
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 960
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 962
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 730
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 747
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 748
    const-string v2, "[setDisplayName]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 749
    const/4 v1, -0x1

    .line 763
    :cond_0
    :goto_0
    return v1

    .line 752
    :cond_1
    const/4 v1, 0x0

    .line 755
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 756
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 757
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 759
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 775
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 776
    :cond_0
    const-string v2, "[setDisplayNumber]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 777
    const/4 v1, -0x1

    .line 791
    :cond_1
    :goto_0
    return v1

    .line 780
    :cond_2
    const/4 v1, 0x0

    .line 783
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 784
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 785
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 787
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setIconTint(II)I
    .locals 3
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 702
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    const-string v2, "[setIconTint]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 704
    const/4 v1, -0x1

    .line 718
    :cond_0
    :goto_0
    return v1

    .line 707
    :cond_1
    const/4 v1, 0x0

    .line 710
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 711
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 712
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 714
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
