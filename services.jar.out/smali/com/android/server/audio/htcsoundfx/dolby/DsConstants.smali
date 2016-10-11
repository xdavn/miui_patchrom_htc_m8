.class public Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;
.super Ljava/lang/Object;
.source "DsConstants.java"


# static fields
.field public static final DS_NO_ERROR:I

.field public static final DS_REQUEST_FAILED_EFFECT_SUSPENDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 19
    .local v2, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v5, "android.dolby.DsConstants"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 23
    :goto_0
    if-eqz v2, :cond_0

    .line 24
    new-instance v0, Lcom/android/server/audio/htcutil/HtcField;

    const-string v5, "DS_NO_ERROR"

    invoke-direct {v0, v5}, Lcom/android/server/audio/htcutil/HtcField;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "FIELD_DS_NO_ERROR":Lcom/android/server/audio/htcutil/HtcField;
    new-instance v1, Lcom/android/server/audio/htcutil/HtcField;

    const-string v5, "DS_REQUEST_FAILED_EFFECT_SUSPENDED"

    invoke-direct {v1, v5}, Lcom/android/server/audio/htcutil/HtcField;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "FIELD_DS_REQUEST_FAILED_EFFECT_SUSPENDED":Lcom/android/server/audio/htcutil/HtcField;
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/android/server/audio/htcutil/HtcField;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    .line 28
    .local v4, "list":[Lcom/android/server/audio/htcutil/HtcField;
    invoke-static {v4, v2}, Lcom/android/server/audio/htcutil/HtcField;->initFields([Lcom/android/server/audio/htcutil/HtcField;Ljava/lang/Class;)V

    .line 29
    invoke-static {v0, v8}, Lcom/android/server/audio/htcutil/HtcField;->getField_int(Lcom/android/server/audio/htcutil/HtcField;Ljava/lang/Object;)I

    move-result v5

    sput v5, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    .line 30
    invoke-static {v1, v8}, Lcom/android/server/audio/htcutil/HtcField;->getField_int(Lcom/android/server/audio/htcutil/HtcField;Ljava/lang/Object;)I

    move-result v5

    sput v5, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_REQUEST_FAILED_EFFECT_SUSPENDED:I

    .line 35
    .end local v0    # "FIELD_DS_NO_ERROR":Lcom/android/server/audio/htcutil/HtcField;
    .end local v1    # "FIELD_DS_REQUEST_FAILED_EFFECT_SUSPENDED":Lcom/android/server/audio/htcutil/HtcField;
    .end local v4    # "list":[Lcom/android/server/audio/htcutil/HtcField;
    :goto_1
    return-void

    .line 20
    :catch_0
    move-exception v3

    .line 21
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    sput v6, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    .line 33
    sput v7, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_REQUEST_FAILED_EFFECT_SUSPENDED:I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
