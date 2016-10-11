.class Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedSetting"
.end annotation


# static fields
.field private static final DEBUG_CACHED_SETTING:Z = false

.field private static final seperator:Ljava/lang/String; = ":"


# instance fields
.field private cachedTime:Ljava/lang/Long;

.field private clsOfSetting:Ljava/lang/Class;

.field private field:Ljava/lang/String;

.field private setting:Ljava/lang/Object;

.field private slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/MobileNetwork$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/MobileNetwork$1;

    .prologue
    .line 5034
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5034
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 5034
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->getCachedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 5034
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 5034
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 5034
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$3600(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/LinkedList;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 5034
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/LinkedList;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 5034
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->isReQueryRequired(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 5034
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 5034
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6000(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/LinkedList;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p2, "x2"    # Z

    .prologue
    .line 5034
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Z)Z

    move-result v0

    return v0
.end method

.method private static findCachedStatus(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            ")",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;"
        }
    .end annotation

    .prologue
    .line 5285
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    if-eqz p0, :cond_3

    .line 5286
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 5287
    .local v0, "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v0, :cond_0

    .line 5288
    const/4 v2, 0x1

    .line 5289
    .local v2, "match":Z
    if-eqz v2, :cond_1

    .line 5290
    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 5292
    :cond_1
    if-eqz v2, :cond_2

    .line 5293
    iget-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v3, p2}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5100(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v2

    .line 5295
    :cond_2
    if-eqz v2, :cond_0

    .line 5301
    .end local v0    # "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Z
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCachedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namePreference"    # Ljava/lang/String;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "errLog"    # Ljava/lang/String;

    .prologue
    .line 5047
    const/4 v1, 0x0

    .line 5048
    .local v1, "shpref":Landroid/content/SharedPreferences;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5050
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5061
    :cond_0
    :goto_0
    return-object v1

    .line 5051
    :catch_0
    move-exception v0

    .line 5052
    .local v0, "exLoadSp":Ljava/lang/Throwable;
    if-eqz p3, :cond_0

    .line 5053
    move-object v2, p2

    .line 5054
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 5055
    const-string v2, "LibMobileNetwork"

    .line 5057
    :cond_1
    invoke-static {v2, p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isReQueryRequired(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Z
    .locals 10
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "reQueryTime"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 5168
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/4 v4, 0x0

    .line 5173
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 5174
    .local v1, "result":Z
    if-eqz p3, :cond_6

    .line 5175
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v0

    .line 5176
    .local v0, "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v0, :cond_5

    .line 5177
    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    if-eqz v6, :cond_4

    .line 5178
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 5180
    .local v2, "offsetFromCachedStatus":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    const/4 v1, 0x1

    .line 5181
    :goto_0
    if-eqz v4, :cond_0

    .line 5182
    if-eqz v1, :cond_3

    const-string v6, "request update"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5183
    const/16 v6, 0x28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5184
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5185
    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5199
    .end local v0    # "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v2    # "offsetFromCachedStatus":J
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 5200
    const-string v6, " slot"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5201
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5000(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v5

    .line 5202
    .local v5, "slotNphoneString":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 5203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5208
    :goto_3
    const-string v6, "LibMobileNetwork"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    .end local v5    # "slotNphoneString":Ljava/lang/String;
    :cond_1
    return v1

    .line 5180
    .restart local v0    # "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .restart local v2    # "offsetFromCachedStatus":J
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 5182
    :cond_3
    const-string v6, "already updated"

    goto :goto_1

    .line 5188
    .end local v2    # "offsetFromCachedStatus":J
    :cond_4
    if-eqz v4, :cond_0

    .line 5189
    const-string v6, "update query"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5192
    :cond_5
    if-eqz v4, :cond_0

    .line 5193
    const-string v6, "first query"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5196
    .end local v0    # "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_6
    if-eqz v4, :cond_0

    .line 5197
    const-string v6, "force refresh"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5206
    .restart local v5    # "slotNphoneString":Ljava/lang/String;
    :cond_7
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 19
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5065
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 5066
    .local v12, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    if-nez p2, :cond_1

    .line 5163
    :cond_0
    :goto_0
    return-object v12

    .line 5069
    :cond_1
    const/4 v11, 0x0

    .line 5070
    .local v11, "rawValues":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5072
    .local v6, "exception":Ljava/lang/Throwable;
    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5073
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 5074
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5075
    .local v3, "cacheLines":[Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 5076
    const/4 v7, 0x0

    .line 5077
    .local v7, "indexLine":I
    const/4 v4, 0x0

    .line 5078
    .local v4, "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_2
    :goto_1
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 5079
    rem-int/lit8 v17, v7, 0x3

    packed-switch v17, :pswitch_data_0

    .line 5099
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 5100
    rem-int/lit8 v17, v7, 0x3

    if-eqz v17, :cond_4

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 5101
    :cond_4
    iget-object v15, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 5102
    .local v15, "value":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 5103
    new-instance v16, Ljava/io/CharArrayReader;

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/CharArrayReader;-><init>([C)V

    .line 5104
    .local v16, "valueReader":Ljava/io/CharArrayReader;
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 5105
    const/16 v17, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    .line 5141
    .end local v16    # "valueReader":Ljava/io/CharArrayReader;
    :cond_5
    :goto_3
    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5146
    .end local v3    # "cacheLines":[Ljava/lang/String;
    .end local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v7    # "indexLine":I
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 5147
    .local v5, "exLoad":Ljava/lang/Throwable;
    move-object v6, v5

    .line 5149
    .end local v5    # "exLoad":Ljava/lang/Throwable;
    :cond_6
    if-nez v6, :cond_7

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2700()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 5150
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5151
    .local v13, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_8

    .line 5152
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5154
    :cond_8
    const-string v17, "load "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5155
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5156
    if-eqz v11, :cond_9

    .line 5157
    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5158
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5159
    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5161
    :cond_9
    const-string v17, "LibMobileNetwork"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 5081
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "cacheLines":[Ljava/lang/String;
    .restart local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .restart local v7    # "indexLine":I
    :pswitch_0
    :try_start_1
    new-instance v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .end local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    invoke-direct {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>()V

    .line 5082
    .restart local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    .line 5083
    aget-object v17, v3, v7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 5084
    aget-object v17, v3, v7

    const/16 v18, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$4800(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    goto/16 :goto_2

    .line 5088
    :pswitch_1
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;

    .line 5089
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_2

    .line 5092
    :pswitch_2
    aget-object v17, v3, v7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    if-nez v17, :cond_3

    .line 5094
    :try_start_2
    aget-object v17, v3, v7

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 5095
    :catch_1
    move-exception v17

    goto/16 :goto_2

    .line 5107
    .restart local v15    # "value":Ljava/lang/String;
    .restart local v16    # "valueReader":Ljava/io/CharArrayReader;
    :cond_a
    :try_start_3
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 5108
    const/16 v17, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$4900(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 5110
    :cond_b
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 5111
    new-instance v10, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct {v10}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>()V

    .line 5112
    .local v10, "menu":Lcom/android/internal/telephony/MobileNetwork$Menu;
    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 5114
    iput-object v10, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 5116
    .end local v10    # "menu":Lcom/android/internal/telephony/MobileNetwork$Menu;
    :cond_c
    const-class v17, Ljava/lang/Long;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 5117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 5118
    .local v9, "longSb":Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->ready()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 5119
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->read()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 5121
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 5123
    .end local v9    # "longSb":Ljava/lang/StringBuilder;
    :cond_e
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 5124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 5125
    .restart local v9    # "longSb":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->ready()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 5126
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->read()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5128
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 5130
    .end local v9    # "longSb":Ljava/lang/StringBuilder;
    :cond_10
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 5131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 5132
    .local v8, "intSb":Ljava/lang/StringBuilder;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->ready()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 5133
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->read()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 5135
    :cond_11
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    .line 5136
    .local v14, "selection":Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 5138
    iput-object v14, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 5079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static readCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    .locals 4
    .param p1, "filterConfig"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 5306
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/4 v1, 0x0

    .line 5307
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 5308
    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v0

    .line 5309
    .local v0, "cache":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v0, :cond_0

    .line 5310
    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    .line 5311
    if-eqz v1, :cond_0

    .line 5312
    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5313
    const/4 v1, 0x0

    .line 5318
    .end local v0    # "cache":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method private static updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Z)Z
    .locals 12
    .param p1, "update"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p2, "clearOthers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 5214
    const/4 v4, 0x0

    .line 5215
    .local v4, "result":Z
    if-eqz p1, :cond_13

    iget-object v8, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    if-eqz v8, :cond_13

    .line 5216
    const/4 v2, 0x0

    .line 5217
    .local v2, "idxCache":I
    const/4 v0, 0x1

    .line 5218
    .local v0, "appendStatus":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_12

    .line 5219
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 5220
    .local v5, "reviewItem":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->field:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5222
    if-eqz p2, :cond_1

    .line 5223
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 5224
    add-int/lit8 v2, v2, -0x1

    .line 5273
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 5274
    goto :goto_0

    .line 5226
    :cond_1
    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v9, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5100(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5227
    iget-object v6, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->clsOfSetting:Ljava/lang/Class;

    .line 5228
    .local v6, "settingClass":Ljava/lang/Class;
    if-nez v6, :cond_3

    .line 5229
    const/4 v4, 0x1

    .line 5264
    :cond_2
    :goto_2
    if-eqz v4, :cond_11

    .line 5265
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 5270
    :goto_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v2

    goto :goto_1

    .line 5231
    :cond_3
    const-class v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5232
    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    iget-object v9, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->equals(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$5200(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z

    move-result v8

    if-nez v8, :cond_4

    move v4, v10

    :goto_4
    goto :goto_2

    :cond_4
    move v4, v11

    goto :goto_4

    .line 5235
    :cond_5
    const-class v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 5236
    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v9, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$800(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z

    move-result v8

    if-nez v8, :cond_6

    move v4, v10

    :goto_5
    goto :goto_2

    :cond_6
    move v4, v11

    goto :goto_5

    .line 5239
    :cond_7
    const-class v8, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 5240
    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Menu;

    iget-object v9, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MobileNetwork$Menu;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->equals(Lcom/android/internal/telephony/MobileNetwork$Menu;Lcom/android/internal/telephony/MobileNetwork$Menu;)Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$5300(Lcom/android/internal/telephony/MobileNetwork$Menu;Lcom/android/internal/telephony/MobileNetwork$Menu;)Z

    move-result v8

    if-nez v8, :cond_8

    move v4, v10

    :goto_6
    goto :goto_2

    :cond_8
    move v4, v11

    goto :goto_6

    .line 5243
    :cond_9
    const-class v8, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 5244
    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v9, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$5100(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v8

    if-nez v8, :cond_a

    move v4, v10

    :goto_7
    goto :goto_2

    :cond_a
    move v4, v11

    goto :goto_7

    .line 5247
    :cond_b
    const-class v8, [Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5248
    iget-object v8, v5, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v3, v8

    check-cast v3, [Ljava/lang/String;

    .line 5249
    .local v3, "orgSetting":[Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 5250
    .local v7, "updateSetting":[Ljava/lang/String;
    if-eqz v3, :cond_e

    if-eqz v7, :cond_e

    .line 5251
    array-length v8, v3

    array-length v9, v7

    if-ne v8, v9, :cond_d

    .line 5252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v8, v3

    if-ge v1, v8, :cond_2

    if-nez v4, :cond_2

    .line 5253
    aget-object v8, v3, v1

    aget-object v9, v7, v1

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    move v4, v10

    .line 5252
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    move v4, v11

    .line 5253
    goto :goto_9

    .line 5257
    .end local v1    # "i":I
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 5261
    :cond_e
    if-nez v3, :cond_f

    if-eqz v7, :cond_10

    :cond_f
    move v4, v10

    :goto_a
    goto/16 :goto_2

    :cond_10
    move v4, v11

    goto :goto_a

    .line 5268
    .end local v3    # "orgSetting":[Ljava/lang/String;
    .end local v7    # "updateSetting":[Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 5275
    .end local v5    # "reviewItem":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v6    # "settingClass":Ljava/lang/Class;
    :cond_12
    if-eqz v0, :cond_13

    .line 5276
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5277
    const/4 v4, 0x1

    .line 5280
    .end local v0    # "appendStatus":Z
    .end local v2    # "idxCache":I
    :cond_13
    return v4
.end method
