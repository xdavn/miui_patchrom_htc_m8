.class final Lcom/android/server/power/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcPMSExtension$LogRecord;,
        Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;,
        Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field private static final PROHIBITION_WAKELOCK_TAG_RILJ:Ljava/lang/String; = "RILJ"

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"

.field private static mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;


# instance fields
.field private final mActualScreenOffIntent:Landroid/content/Intent;

.field private final mActualScreenOnIntent:Landroid/content/Intent;

.field private final mBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsStockUI:Z

.field private final mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

.field private final mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x50000000

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;-><init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    .line 34
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;-><init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcPMSExtension;->mIsStockUI:Z

    .line 266
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcPMSExtension$1;-><init>(Lcom/android/server/power/HtcPMSExtension;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HPE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const-string v0, "sense_version"

    invoke-static {v0, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/HtcPMSExtension;->mIsStockUI:Z

    .line 66
    const-string v0, "HtcPMSExtension"

    const-string v1, "no sense version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcPMSExtension;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcPMSExtension;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenStateHelper(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    return v0
.end method

.method protected static canPrintWakeLockLog(ILjava/lang/String;)Z
    .locals 2
    .param p0, "flags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "printLog":Z
    const v1, 0xffff

    and-int/2addr v1, p0

    packed-switch v1, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 76
    :pswitch_0
    if-nez p1, :cond_1

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "RILJ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 4
    .param p0, "CATEGORY"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    sget-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 132
    :cond_0
    sget-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "HtcPMSExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHtcCustomizationReader: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSkuId()I
    .locals 4

    .prologue
    .line 143
    const/4 v0, -0x1

    .line 144
    .local v0, "nSkuId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, "Android_Core_Framework"

    invoke-static {v1}, Lcom/android/server/power/HtcPMSExtension;->getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "Android_Core_Framework"

    invoke-static {v1}, Lcom/android/server/power/HtcPMSExtension;->getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "sku_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method protected static getWakeLockTypeInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 89
    const-string v0, ""

    .line 91
    .local v0, "info":Ljava/lang/String;
    const v1, 0xffff

    and-int/2addr v1, p0

    sparse-switch v1, :sswitch_data_0

    .line 123
    :goto_0
    return-object v0

    .line 93
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 94
    goto :goto_0

    .line 96
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 97
    goto :goto_0

    .line 99
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 100
    goto :goto_0

    .line 102
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 103
    goto :goto_0

    .line 105
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 106
    goto :goto_0

    .line 108
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    .line 109
    goto :goto_0

    .line 111
    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    .line 112
    goto :goto_0

    .line 114
    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    .line 115
    goto :goto_0

    .line 117
    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    .line 118
    goto :goto_0

    .line 120
    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_9
    .end sparse-switch
.end method

.method protected static isVzwSku()Z
    .locals 3

    .prologue
    .line 151
    const/16 v0, 0xd

    .line 152
    .local v0, "VERIZON_WWE_SKU_ID":I
    const/16 v1, 0xd

    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->getSkuId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 153
    const/4 v1, 0x1

    .line 155
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeScreenStateHelper(Z)V
    .locals 12
    .param p1, "on"    # Z

    .prologue
    .line 213
    const-string v1, "system"

    .line 214
    .local v1, "SYSTEM_PATH":Ljava/lang/String;
    const-string v0, "screen_state"

    .line 216
    .local v0, "SCREEN_FILE_NAME":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    .line 217
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeSS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    const/4 v6, 0x0

    .line 221
    .local v6, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 224
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v8, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "screen_state"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 228
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 231
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 232
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_2

    .line 233
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: creating screen_state file."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 236
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    .line 237
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: screen_state created."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 242
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    if-eqz p1, :cond_6

    :try_start_2
    const-string v9, "1"

    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 256
    if-eqz v5, :cond_e

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x0

    .line 257
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :goto_1
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/4 v6, 0x0

    .line 261
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "systemDir":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_5

    .line 262
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeSS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " E"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_5
    return-void

    .line 244
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :cond_6
    :try_start_5
    const-string v9, "0"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 258
    :catch_0
    move-exception v9

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :goto_3
    move-object v6, v7

    .line 259
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 246
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "systemDir":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_7

    .line 248
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: could not write to file. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 256
    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 257
    :cond_8
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v6, 0x0

    goto :goto_2

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_9

    .line 252
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: exception occurred. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 256
    :cond_9
    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 257
    :cond_a
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v6, 0x0

    goto :goto_2

    .line 255
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 256
    :goto_6
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 257
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v6, 0x0

    .line 258
    :cond_c
    :goto_7
    throw v9

    :catch_3
    move-exception v10

    goto :goto_7

    .line 255
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 258
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "systemDir":Ljava/io/File;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto/16 :goto_2

    .line 250
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 258
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "systemDir":Ljava/io/File;
    .local v2, "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "systemDir":Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 258
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v9

    goto/16 :goto_3

    :cond_d
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_e
    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method


# virtual methods
.method protected notifyActualScreenState(Z)V
    .locals 9
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/android/server/power/HtcPMSExtension;->mIsStockUI:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    .line 167
    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    if-eqz p1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 178
    :goto_1
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "logBody"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPMSExtension$LogRecord;

    .line 285
    .local v0, "recentLog":Lcom/android/server/power/HtcPMSExtension$LogRecord;
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/android/server/power/HtcPMSExtension$LogRecord;

    .end local v0    # "recentLog":Lcom/android/server/power/HtcPMSExtension$LogRecord;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/power/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/power/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .restart local v0    # "recentLog":Lcom/android/server/power/HtcPMSExtension$LogRecord;
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeScreenState(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/server/power/HtcPMSExtension;->mIsStockUI:Z

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    if-eqz v0, :cond_0

    .line 190
    if-eqz p1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
