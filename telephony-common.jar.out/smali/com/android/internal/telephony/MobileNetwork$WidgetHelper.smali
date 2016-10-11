.class public Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
.super Landroid/app/Service;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetHelper"
.end annotation


# static fields
.field private static final EVENT_END_INTENT:I = 0x3

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_NEW_INTENT:I = 0x2

.field private static final SHARED_PREFERENCE_FILE:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mainHandler:Landroid/os/Handler;

.field private receivedIntents:I

.field private seqNoIntents:I

.field private stopReceiveIntents:Z

.field private thread:Landroid/os/HandlerThread;

.field private threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2785
    const-class v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2555
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 2555
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;)Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadConfig:Lcom/android/internal/telephony/MobileNetwork$ThreadConfiguration;

    return-object p1
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2555
    sget-object v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 2555
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2555
    iget v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    return v0
.end method

.method static synthetic access$2810(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2555
    iget v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 2555
    iput-boolean p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z

    return p1
.end method

.method private static activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetHelperClass"    # Ljava/lang/Class;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2986
    const/4 v2, 0x0

    .line 2987
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 2988
    .local v0, "compService":Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 2989
    const-class v3, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2990
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2994
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2998
    :goto_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 2999
    new-instance v2, Ljava/lang/ClassNotFoundException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "No service existed"

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 3001
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v2

    .line 2995
    :catch_0
    move-exception v1

    .line 2996
    .local v1, "exStart":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_0
.end method

.method private appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "givenPostfix"    # Ljava/lang/String;

    .prologue
    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2793
    .local v0, "sbTag":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2794
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2796
    if-eqz p2, :cond_0

    .line 2797
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    :cond_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    if-eqz p1, :cond_1

    .line 2801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "cls"    # Ljava/lang/Class;
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 2941
    const/4 v1, 0x0

    .line 2942
    .local v1, "errMessage":Ljava/lang/String;
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2700()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2944
    .local v3, "sbErr":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 2945
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    :cond_0
    const-string v5, "Fail to load previous status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2948
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2951
    .end local v3    # "sbErr":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    const-string v6, "LibMobileNetwork"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->getCachedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    invoke-static {p0, v5, v6, v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2953
    .local v4, "shpref":Landroid/content/SharedPreferences;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v4, p1, p3, p4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 2954
    .local v0, "cacheLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    new-instance v2, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>(Lcom/android/internal/telephony/MobileNetwork$1;)V

    .line 2955
    .local v2, "filter":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3002(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 2956
    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static {v2, p2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3402(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 2957
    # setter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;
    invoke-static {v2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;

    .line 2958
    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public static final forceCallbackUpdate(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2703
    const/4 v0, 0x0

    const-string v1, "E."

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createForceQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/telephony/MobileNetwork;->access$1200(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final forceToggleDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2681
    const-string v0, "D."

    .line 2682
    .local v0, "logTag":Ljava/lang/String;
    const-string v1, "dataPath"

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2686
    return-object p1
.end method

.method public static final forceToggleDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2621
    const-string v5, "B."

    .line 2622
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "roamingSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2625
    move-object v6, p2

    .line 2626
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v6, :cond_0

    .line 2627
    const-string v0, "roamingSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$1000(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v6

    .line 2630
    const-string v0, "roamingSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2632
    :cond_0
    return-object v6
.end method

.method public static final forceToggleDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2651
    const-string v5, "C."

    .line 2652
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "roamSoundSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2655
    move-object v6, p2

    .line 2656
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v6, :cond_0

    .line 2657
    const-string v0, "roamSoundSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v6

    .line 2660
    const-string v0, "roamSoundSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2662
    :cond_0
    return-object v6
.end method

.method public static final forceToggleMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2591
    const-string v5, "A."

    .line 2592
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "dataSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2595
    move-object v6, p2

    .line 2596
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v6, :cond_0

    .line 2597
    const-string v0, "dataSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v6

    .line 2600
    const-string v0, "dataSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2602
    :cond_0
    return-object v6
.end method

.method private handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "tagPostfix"    # Ljava/lang/String;
    .param p2, "writeback"    # Ljava/lang/Object;

    .prologue
    .line 2904
    if-eqz p2, :cond_5

    .line 2905
    const/4 v0, 0x0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v5, p2

    .line 2907
    check-cast v5, Ljava/util/LinkedList;

    .line 2908
    .local v5, "updateList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 2909
    .local v4, "updateItem":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    const/4 v2, 0x0

    .line 2910
    .local v2, "performUpdate":Z
    if-eqz v4, :cond_2

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dataSetting"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dataSettingMenu"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "roamingSetting"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "roamSoundSetting"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    # getter for: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dataPath"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2918
    :cond_1
    const/4 v2, 0x1

    .line 2920
    :cond_2
    if-eqz v2, :cond_0

    .line 2921
    if-nez v0, :cond_3

    .line 2922
    iget-object v6, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    const-string v8, "LibMobileNetwork"

    const-string v9, " Fail to update current status"

    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->getCachedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$3100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2925
    .local v3, "pref":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_3

    .line 2926
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2929
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 2934
    .end local v2    # "performUpdate":Z
    .end local v4    # "updateItem":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_4
    if-eqz v0, :cond_5

    .line 2935
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2938
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "updateList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    :cond_5
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 2807
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    .line 2808
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;-><init>(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    .line 2897
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 2898
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2899
    aput-object p1, v0, v3

    .line 2900
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2901
    return-void
.end method

.method private static logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 4
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "preview"    # Landroid/os/Parcelable;

    .prologue
    .line 2962
    if-eqz p1, :cond_1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2964
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "preview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2967
    .local v1, "writer":Ljava/io/CharArrayWriter;
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v2, :cond_2

    .line 2968
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 2970
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    :cond_0
    :goto_0
    const-string v2, "LibMobileNetwork"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    :cond_1
    return-void

    .line 2972
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "writer":Ljava/io/CharArrayWriter;
    .restart local p1    # "preview":Landroid/os/Parcelable;
    :cond_2
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v2, :cond_3

    .line 2973
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$3700(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 2975
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2977
    .restart local p1    # "preview":Landroid/os/Parcelable;
    :cond_3
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v2, :cond_0

    .line 2978
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$3800(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCallbackClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 2572
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2711
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 2719
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2720
    invoke-virtual {p0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->init(Landroid/content/Context;)V

    .line 2721
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1300(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    .line 2771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2772
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2773
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 2728
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z

    if-nez v5, :cond_0

    .line 2729
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    .line 2730
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    .line 2731
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    invoke-virtual {v6, v8, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2762
    :goto_0
    return v8

    .line 2734
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2735
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_5

    const-string v5, "logTag"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2736
    const-string v5, "resend "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2738
    if-eqz p1, :cond_1

    .line 2739
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2740
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    :cond_1
    const/4 v1, 0x0

    .line 2744
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2746
    .local v4, "stopResult":Z
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopSelfResult(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2750
    :goto_2
    if-eqz v1, :cond_2

    .line 2751
    const-string v5, " stop-fail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    invoke-static {v5, v6, p1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v2

    .line 2754
    .local v2, "exceptionService":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 2755
    const-string v5, " resend-fail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    :cond_3
    if-nez v1, :cond_4

    .line 2758
    move-object v1, v2

    .line 2760
    :cond_4
    const-string v5, "LibMobileNetwork"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v2    # "exceptionService":Ljava/lang/Throwable;
    .end local v4    # "stopResult":Z
    :cond_5
    move-object v5, v6

    .line 2735
    goto :goto_1

    .line 2747
    .restart local v1    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "stopResult":Z
    :catch_0
    move-exception v0

    .line 2748
    .local v0, "exStopSelf":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_2
.end method
