.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$IonInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    }
.end annotation


# static fields
.field private static final DURATION_DUMP_AM_LOW_MEMORY:I = 0x927c0

.field private static final DURATION_DUMP_LOW_MEMORY:I = 0x4e20

.field static final FORCE_DUMP_ADJ:I = 0x4

.field static final MIN_DUMP_ADJ:I = 0x6

.field private static final NUM_EXTRAM_MEMINFO:I = 0x10

.field static final PLATFORM_BRCM:I = 0x3

.field static final PLATFORM_MTK_MALI:I = 0x5

.field static final PLATFORM_MTK_PVR:I = 0x4

.field static final PLATFORM_NONE:I = 0x0

.field static final PLATFORM_NV:I = 0x1

.field static final PLATFORM_QCT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemoryLogUtilAm"

.field static mPlatform:I = 0x0

.field private static sBuffers:J = 0x0L

.field private static sCached:J = 0x0L

.field private static sFree:J = 0x0L

.field private static sFreeCma:J = 0x0L

.field private static sIONInUse:J = 0x0L

.field private static sIONTotal:J = 0x0L

.field private static sIsDumping:Z = false

.field private static sIsLargeRam:Z = false

.field private static sKGSLAlloc:J = 0x0L

.field private static sKernelStack:J = 0x0L

.field private static final sLargeRamCriteria:J = 0x100000L

.field private static sLastTimeDumpLowMemory:J

.field private static sPageTables:J

.field private static sShmem:J

.field private static sSlab:J

.field private static sSwapCached:J

.field private static sSwapFree:J

.field private static sSwapTotal:J

.field private static sTotal:J

.field private static sZramInUse:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 46
    sput-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsLargeRam:Z

    .line 47
    sput-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 58
    sput v2, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    return-void
.end method

.method static doDump(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;
    .locals 24
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "isHtcLauncherKilled"    # Z
    .param p4, "doInBg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ProcessRecord;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x0

    .line 203
    :goto_0
    return-object v2

    .line 146
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v8, "allProcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 151
    .local v19, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v22, "serviceInfo":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v20, "providerInfo":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ProcessRecord;

    .line 155
    .local v21, "rec":Lcom/android/server/am/ProcessRecord;
    const/4 v15, 0x0

    .line 156
    .local v15, "isBinded":Z
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 157
    const/4 v15, 0x1

    .line 159
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 161
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v4, "service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    .line 163
    .local v23, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v15, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v12, v4, v6

    .line 168
    .local v12, "duration":J
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 170
    const-string v2, " <- "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    const-string v2, " For "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 173
    .end local v12    # "duration":J
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v23    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v4, "provider"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 174
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 175
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_6
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 176
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ContentProviderRecord;

    .line 177
    .local v10, "cpRec":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v15, :cond_7

    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    :cond_7
    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 183
    const-string v2, " <- "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_8
    const-string v2, "."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 188
    .end local v10    # "cpRec":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_9
    new-instance v2, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 192
    .end local v15    # "isBinded":Z
    .end local v21    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const-string v2, "/proc"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v18

    .line 193
    .local v18, "pids":[I
    move-object/from16 v9, v18

    .local v9, "arr$":[I
    array-length v0, v9

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v11, v0, :cond_c

    aget v3, v9, v11

    .line 194
    .local v3, "id":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 195
    new-instance v2, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    const/4 v4, 0x0

    const-string v5, "native"

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 199
    .end local v3    # "id":I
    :cond_c
    if-eqz p4, :cond_e

    .line 200
    if-nez p1, :cond_d

    const-string v2, ""

    :goto_5
    invoke-static {v8, v2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpInBackground(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 201
    const-string v2, ""

    goto/16 :goto_0

    .line 200
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_5

    .line 203
    :cond_e
    if-nez p1, :cond_f

    const-string v2, ""

    :goto_6
    move/from16 v0, p3

    invoke-static {v8, v2, v0}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_6
.end method

.method static doDump(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p1, "TOP_APP"    # Ljava/lang/String;
    .param p2, "isHtcLauncherKilled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "allProc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v12, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 212
    .local v10, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    .end local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v11, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_1
    const-string v0, "MemoryLogUtilAm"

    const-string v1, "dump begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOP_APP= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "log":Ljava/lang/String;
    const-string v0, "MemoryLogUtilAm"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .end local v9    # "log":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 222
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    .line 227
    .local v8, "info":Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
    iget v0, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mPid:I

    iget-object v1, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mName:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mAdjType:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mServiceinfo:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mProviderInfo:Ljava/lang/String;

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 228
    .restart local v9    # "log":Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "info":Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
    .end local v9    # "log":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v10, v11

    .line 246
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v6, "e":Ljava/lang/Exception;
    .restart local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_2
    :try_start_2
    const-string v0, "MemoryLogUtilAm"

    const-string v1, "Error while dumping low memory logs."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 250
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    .end local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    move-object v10, v11

    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    throw v0

    .line 233
    .end local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 234
    :try_start_4
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-static {p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkGraphic(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_5
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpNVAllocationLog()V

    .line 244
    const-string v0, "MemoryLogUtilAm"

    const-string v1, "dump end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    move-object v10, v11

    .line 249
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 238
    .end local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    .line 239
    invoke-static {p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    .line 240
    invoke-static {p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkGraphic(Z)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 248
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v10    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 245
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static final native dumpHeader()Ljava/lang/String;
.end method

.method static dumpInBackground(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "TOP_APP"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "allProcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v0, Lcom/android/server/am/MemoryLogUtilAm$1;

    const-string v1, "DumpMemoryLog"

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/am/MemoryLogUtilAm$1;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/MemoryLogUtilAm$1;->start()V

    .line 138
    return-void
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 12
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v3, 0x0

    .line 97
    .local v3, "isHtcLauncherKilled":Z
    const/4 v1, 0x0

    .line 98
    .local v1, "forceDump":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    sub-long v6, v8, v10

    .line 100
    .local v6, "timeDiff":J
    if-eqz p2, :cond_0

    .line 101
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v8, Lcom/android/server/am/ProcessList;->HOME_APP_ADJ:I

    if-gt v5, v8, :cond_1

    const-string v5, "com.htc.launcher"

    iget-object v8, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    const/4 v3, 0x1

    .line 117
    :cond_0
    :goto_0
    if-nez v3, :cond_6

    if-nez v1, :cond_6

    const-wide/16 v8, 0x4e20

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 118
    const/4 v5, 0x0

    .line 126
    .end local v6    # "timeDiff":J
    :goto_1
    return-object v5

    .line 103
    .restart local v6    # "timeDiff":J
    :cond_1
    const-string v5, "home"

    iget-object v8, p2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 105
    .local v4, "pr":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v8, 0x6

    if-le v5, v8, :cond_2

    .line 106
    sget-boolean v5, Lcom/android/server/am/MemoryLogUtilAm;->sIsLargeRam:Z

    if-eqz v5, :cond_4

    const-wide/32 v8, 0x927c0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_4

    .line 107
    :cond_3
    const/4 v5, 0x1

    invoke-static {p0, p1, p2, v3, v5}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 109
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 113
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :cond_6
    const/4 v5, 0x1

    invoke-static {p0, p1, p2, v3, v5}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 123
    .end local v6    # "timeDiff":J
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MemoryLogUtilAm"

    const-string v8, "Error while dumping low memory logs."

    invoke-static {v5, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 126
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static dumpMemInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->readExtraMemInfo()V

    .line 292
    const-string v1, "RAM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB Total, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFree()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB Free, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getBuffers()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB Buffers, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getCached()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB Cached, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getShmem()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB Shmem, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSlab()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB Slab, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKernelStack()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB KernelStack, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getPageTable()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB PageTable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKGSLAlloc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB KGSL_ALLOC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONToal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB ION_Total, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONInUse()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB ION_InUse, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFreeCma()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB FreeCma, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB SwapTotal, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapFree()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB SwapFree, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getZramInUse()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB ZramInUse, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapCached()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB SwapCached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "MemoryLogUtilAm"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dumpMemoryLogFromFile(Z)Ljava/lang/String;
    .locals 38
    .param p0, "isHomeKilled"    # Z

    .prologue
    .line 536
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v26, "result":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 538
    .local v15, "input":Ljava/io/BufferedReader;
    const/16 v19, 0x0

    .line 539
    .local v19, "line":Ljava/lang/String;
    const/16 v22, 0x0

    .line 541
    .local v22, "path":Ljava/lang/String;
    sget v31, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 542
    const-string v22, "/sys/kernel/debug/nvmap/iovmm/clients"

    .line 547
    :cond_0
    :goto_0
    if-eqz v22, :cond_1

    .line 549
    :try_start_0
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    .end local v15    # "input":Ljava/io/BufferedReader;
    .local v16, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 551
    const-string v32, "MemoryLogUtilAm"

    sget v31, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    move-object/from16 v31, v19

    :goto_2
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_1

    .line 553
    :catch_0
    move-exception v6

    move-object/from16 v15, v16

    .line 554
    .end local v16    # "input":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v31, "MemoryLogUtilAm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error logging memory file "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    if-eqz v15, :cond_1

    .line 558
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 564
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    const-string v22, "/d/ion/iommu"

    .line 566
    :try_start_4
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 568
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v4, "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v14, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 572
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_5
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_17

    .line 573
    const-string v31, "client              pid"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_13

    const-string v31, "client          creator"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 574
    const-string v31, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 575
    .local v28, "split":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 576
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v27, "sb":Ljava/lang/StringBuilder;
    const/16 v31, 0x1

    aget-object v31, v28, v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget-object v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 578
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_f

    .line 579
    const/16 v31, 0x3

    aget-object v31, v28, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 627
    .end local v18    # "key":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "split":[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object/from16 v15, v16

    .line 628
    .end local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_6
    :try_start_6
    const-string v31, "MemoryLogUtilAm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error logging memory file "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 630
    if-eqz v15, :cond_3

    .line 632
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 637
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_7
    const-string v22, "/d/ion/heaps/system"

    .line 639
    :try_start_8
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_23

    .line 641
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 643
    .local v25, "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 644
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_4
    :goto_8
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_22

    .line 645
    const-string v31, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 647
    .restart local v28    # "split":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 648
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 649
    .local v30, "trim":Ljava/lang/String;
    const-string v31, "client              pid"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    const-string v31, "total orphaned"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    const-string v31, "deferred free"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 651
    :cond_6
    const-string v31, "MemoryLogUtilAm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ion-heaps : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-eqz p0, :cond_4

    .line 653
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion-heaps : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_8

    .line 680
    .end local v28    # "split":[Ljava/lang/String;
    .end local v30    # "trim":Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object/from16 v15, v16

    .line 681
    .end local v7    # "file":Ljava/io/File;
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_9
    :try_start_a
    const-string v31, "MemoryLogUtilAm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error logging memory file "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 683
    if-eqz v15, :cond_7

    .line 685
    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 690
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_a
    const-string v22, "/d/ion/heaps/ion_mm_heap"

    .line 692
    :try_start_c
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 694
    const/4 v10, -0x1

    .line 695
    .local v10, "indexClient":I
    const/4 v13, -0x1

    .line 696
    .local v13, "indexlDbgName":I
    const/4 v11, -0x1

    .line 697
    .local v11, "indexPid":I
    const/4 v12, -0x1

    .line 698
    .local v12, "indexSize":I
    const/16 v17, 0x0

    .line 699
    .local v17, "isMatch":Z
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 701
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    const-string v29, ""

    .line 703
    .local v29, "tmp":Ljava/lang/String;
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 704
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_8
    :goto_b
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2e

    .line 705
    const-string v31, "mm_heap_freelist total_size"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 706
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 707
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz p0, :cond_2e

    .line 709
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v15, v16

    .line 770
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :cond_9
    :goto_c
    if-eqz v15, :cond_a

    .line 772
    :try_start_e
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 776
    .end local v7    # "file":Ljava/io/File;
    :cond_a
    :goto_d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    return-object v31

    .line 543
    :cond_b
    sget v31, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 544
    const-string v22, "/d/ion/ion-system-extra"

    goto/16 :goto_0

    .line 551
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_c
    :try_start_f
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ion-extra : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-result-object v31

    goto/16 :goto_2

    .line 556
    :cond_d
    if-eqz v16, :cond_2f

    .line 558
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    move-object/from16 v15, v16

    .line 560
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 559
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v31

    move-object/from16 v15, v16

    .line 560
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 556
    :catchall_0
    move-exception v31

    :goto_e
    if-eqz v15, :cond_e

    .line 558
    :try_start_11
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 560
    :cond_e
    :goto_f
    throw v31

    .line 581
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    .restart local v28    # "split":[Ljava/lang/String;
    :cond_f
    :try_start_12
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const/16 v31, 0x3

    aget-object v31, v28, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    add-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_5

    .line 630
    .end local v18    # "key":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "split":[Ljava/lang/String;
    :catchall_1
    move-exception v31

    move-object/from16 v15, v16

    .end local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_10
    if-eqz v15, :cond_10

    .line 632
    :try_start_13
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 634
    :cond_10
    :goto_11
    throw v31

    .line 584
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v28    # "split":[Ljava/lang/String;
    :cond_11
    :try_start_14
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 585
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    const/16 v31, 0x1

    aget-object v31, v28, v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget-object v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 587
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    .line 588
    new-instance v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    const/16 v32, 0x1

    aget-object v32, v28, v32

    const/16 v33, 0x2

    aget-object v33, v28, v33

    const/16 v34, 0x3

    aget-object v34, v28, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    invoke-direct/range {v31 .. v35}, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 590
    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v32, v0

    const/16 v34, 0x3

    aget-object v34, v28, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    goto/16 :goto_5

    .line 595
    .end local v18    # "key":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "split":[Ljava/lang/String;
    :cond_13
    const-string v31, "Total bytes currently"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 596
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 597
    .restart local v18    # "key":Ljava/lang/String;
    const-string v31, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 598
    .local v9, "index":I
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "client":Ljava/lang/String;
    add-int/lit8 v31, v9, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 600
    .local v23, "pid":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%1$16s %2$16s %3$16d"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v5, v33, v34

    const/16 v34, 0x1

    aput-object v23, v33, v34

    const/16 v34, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 602
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    if-eqz p0, :cond_14

    .line 604
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 607
    .end local v5    # "client":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v23    # "pid":Ljava/lang/String;
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_15
    const-string v31, "client          creator"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 608
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "size (hex)"

    const-string v33, "      size"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 609
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-eqz p0, :cond_2

    .line 611
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 614
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_16
    const-string v31, "MemoryLogUtilAm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "iommu : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-eqz p0, :cond_2

    .line 616
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 618
    :cond_17
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_18
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 619
    .restart local v18    # "key":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%1$16s %2$16s %3$14d"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 622
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz p0, :cond_18

    .line 624
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_13

    .end local v18    # "key":Ljava/lang/String;
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_19
    move-object/from16 v15, v16

    .line 630
    .end local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :cond_1a
    if-eqz v15, :cond_3

    .line 632
    :try_start_15
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_7

    .line 633
    :catch_4
    move-exception v31

    goto/16 :goto_7

    .line 656
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v28    # "split":[Ljava/lang/String;
    .restart local v30    # "trim":Ljava/lang/String;
    :cond_1b
    const/16 v31, 0x3

    :try_start_16
    aget-object v31, v28, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 657
    .local v20, "memory":J
    new-instance v24, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const/16 v31, 0x1

    aget-object v31, v28, v31

    const/16 v32, 0x2

    aget-object v32, v28, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 658
    .local v24, "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 659
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    add-long v32, v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_8

    .line 683
    .end local v20    # "memory":J
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v28    # "split":[Ljava/lang/String;
    .end local v30    # "trim":Ljava/lang/String;
    :catchall_2
    move-exception v31

    move-object/from16 v15, v16

    .end local v7    # "file":Ljava/io/File;
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_14
    if-eqz v15, :cond_1c

    .line 685
    :try_start_17
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 687
    :cond_1c
    :goto_15
    throw v31

    .line 661
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v20    # "memory":J
    .restart local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v28    # "split":[Ljava/lang/String;
    .restart local v30    # "trim":Ljava/lang/String;
    :cond_1d
    :try_start_18
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 664
    .end local v20    # "memory":J
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v30    # "trim":Ljava/lang/String;
    :cond_1e
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_21

    .line 665
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 666
    .local v18, "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string v31, "ion-heaps : %1$16s  %2$15d  %3$15d"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 668
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-eqz p0, :cond_1f

    .line 670
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 672
    .end local v18    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_20
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->clear()V

    .line 674
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_21
    const-string v31, "MemoryLogUtilAm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ion-heaps : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-eqz p0, :cond_4

    .line 676
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion-heaps : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_8

    .end local v28    # "split":[Ljava/lang/String;
    :cond_22
    move-object/from16 v15, v16

    .line 683
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :cond_23
    if-eqz v15, :cond_7

    .line 685
    :try_start_19
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    goto/16 :goto_a

    .line 686
    :catch_5
    move-exception v31

    goto/16 :goto_a

    .line 712
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_24
    if-nez v17, :cond_26

    :try_start_1a
    const-string v31, "          client("

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_26

    .line 713
    const-string v31, "client("

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v10, v31, 0x7

    .line 714
    const-string v31, "dbg_name)"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v13, v31, 0x9

    .line 715
    const-string v31, "pid"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v11, v31, 0x3

    .line 716
    const-string v31, "size"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v12, v31, 0x4

    .line 717
    if-lez v10, :cond_25

    if-lez v13, :cond_25

    if-lez v11, :cond_25

    if-lez v12, :cond_25

    .line 718
    const/16 v17, 0x1

    .line 720
    :cond_25
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "address"

    const-string v33, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 721
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz p0, :cond_8

    .line 723
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_b

    .line 768
    :catch_6
    move-exception v31

    move-object/from16 v15, v16

    .line 770
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_17
    if-eqz v15, :cond_a

    .line 772
    :try_start_1b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7

    goto/16 :goto_d

    .line 773
    :catch_7
    move-exception v31

    goto/16 :goto_d

    .line 727
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_26
    if-eqz v17, :cond_29

    :try_start_1c
    const-string v31, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    if-ne v0, v10, :cond_29

    const-string v31, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-result v31

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    if-ne v0, v13, :cond_29

    .line 729
    add-int/lit8 v31, v11, 0x1

    :try_start_1d
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 730
    .restart local v20    # "memory":J
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 732
    .restart local v5    # "client":Ljava/lang/String;
    add-int/lit8 v31, v13, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 733
    .local v23, "pid":I
    new-instance v24, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 734
    .restart local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 735
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    add-long v32, v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto/16 :goto_b

    .line 739
    .end local v5    # "client":Ljava/lang/String;
    .end local v20    # "memory":J
    .end local v23    # "pid":I
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :catch_8
    move-exception v6

    .line 740
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_1e
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 741
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-eqz p0, :cond_8

    .line 743
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto/16 :goto_b

    .line 770
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v31

    move-object/from16 v15, v16

    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_18
    if-eqz v15, :cond_27

    .line 772
    :try_start_1f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_10

    .line 774
    :cond_27
    :goto_19
    throw v31

    .line 737
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "client":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v20    # "memory":J
    .restart local v23    # "pid":I
    .restart local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_28
    :try_start_20
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto/16 :goto_b

    .line 745
    .end local v5    # "client":Ljava/lang/String;
    .end local v20    # "memory":J
    .end local v23    # "pid":I
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_29
    :try_start_21
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    const-string v32, "--------------------------------"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2d

    .line 746
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_2c

    .line 747
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 748
    .restart local v18    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string v31, "ion_mm_heap : %1$34s %2$16d  %3$15d"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 750
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-eqz p0, :cond_2a

    .line 752
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 754
    .end local v18    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_2b
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->clear()V

    .line 756
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2c
    move-object/from16 v29, v19

    .line 757
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz p0, :cond_8

    .line 759
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 761
    :cond_2d
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 762
    const-string v31, "MemoryLogUtilAm"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz p0, :cond_8

    .line 764
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto/16 :goto_b

    .line 559
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :catch_9
    move-exception v31

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v32

    goto/16 :goto_f

    .line 633
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v31

    goto/16 :goto_7

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v32

    goto/16 :goto_11

    .line 686
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v31

    goto/16 :goto_a

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v32

    goto/16 :goto_15

    .line 773
    .restart local v7    # "file":Ljava/io/File;
    :catch_f
    move-exception v31

    goto/16 :goto_d

    .end local v7    # "file":Ljava/io/File;
    :catch_10
    move-exception v32

    goto/16 :goto_19

    .line 770
    :catchall_4
    move-exception v31

    goto/16 :goto_18

    .line 768
    :catch_11
    move-exception v31

    goto/16 :goto_17

    .line 683
    :catchall_5
    move-exception v31

    goto/16 :goto_14

    .line 680
    :catch_12
    move-exception v6

    goto/16 :goto_9

    .line 630
    :catchall_6
    move-exception v31

    goto/16 :goto_10

    .line 627
    :catch_13
    move-exception v6

    goto/16 :goto_6

    .line 556
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v31

    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 553
    :catch_14
    move-exception v6

    goto/16 :goto_3

    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_2e
    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v15    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_2f
    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method static dumpMtkGraphic(Z)Ljava/lang/String;
    .locals 2
    .param p0, "isHtcLauncherKilled"    # Z

    .prologue
    .line 254
    sget v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 255
    invoke-static {p0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkPvrGraphic(Z)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 256
    :cond_0
    sget v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 257
    invoke-static {p0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkMaliGraphic(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static dumpMtkMaliGraphic(Z)Ljava/lang/String;
    .locals 22
    .param p0, "isHtcLauncherKilled"    # Z

    .prologue
    .line 906
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v14, ""

    .line 908
    .local v14, "tmp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 910
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string v9, "/d/mali/mem/"

    .line 911
    .local v9, "parentPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 913
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 914
    .local v8, "list":[Ljava/lang/String;
    const-string v14, "MTK_Mali       Tid          HW Accel  Process"

    .line 915
    const-string v15, "MemoryLogUtilAm"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    if-eqz p0, :cond_0

    .line 917
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 918
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    array-length v15, v8

    if-ge v5, v15, :cond_9

    .line 919
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v18, v8, v5

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 920
    .local v10, "procPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v11, "process":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v15

    if-eqz v15, :cond_8

    .line 923
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 925
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_3
    const-string v12, ""

    .line 926
    .local v12, "processName":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 927
    .local v16, "value":J
    const/4 v6, 0x0

    .line 928
    .local v6, "isFoundProcessName":Z
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 929
    if-nez v6, :cond_2

    .line 930
    const/4 v15, 0x0

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 931
    const/4 v6, 0x1

    .line 933
    :cond_2
    const-string v15, "Total allocated memory:"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 934
    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 938
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MTK_Mali  %1$8s  %2$16d  "

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v8, v5

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 939
    const-string v15, "MemoryLogUtilAm"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    if-eqz p0, :cond_4

    .line 941
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 944
    :cond_4
    if-eqz v2, :cond_5

    .line 946
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 918
    .end local v6    # "isFoundProcessName":Z
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    .end local v16    # "value":J
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 942
    :catch_0
    move-exception v15

    move-object v2, v3

    .line 944
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_5

    .line 946
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 947
    :catch_1
    move-exception v15

    goto :goto_1

    .line 944
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v15

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_6

    .line 946
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 948
    :cond_6
    :goto_4
    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 954
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .end local v8    # "list":[Ljava/lang/String;
    .end local v9    # "parentPath":Ljava/lang/String;
    .end local v10    # "procPath":Ljava/lang/String;
    .end local v11    # "process":Ljava/io/File;
    :catch_2
    move-exception v15

    .line 956
    :cond_7
    :goto_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 947
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v6    # "isFoundProcessName":Z
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "list":[Ljava/lang/String;
    .restart local v9    # "parentPath":Ljava/lang/String;
    .restart local v10    # "procPath":Ljava/lang/String;
    .restart local v11    # "process":Ljava/io/File;
    .restart local v12    # "processName":Ljava/lang/String;
    .restart local v16    # "value":J
    :catch_3
    move-exception v15

    goto :goto_1

    .end local v6    # "isFoundProcessName":Z
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    .end local v16    # "value":J
    :catch_4
    move-exception v18

    goto :goto_4

    .line 954
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v10    # "procPath":Ljava/lang/String;
    .end local v11    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v15

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 944
    .restart local v10    # "procPath":Ljava/lang/String;
    .restart local v11    # "process":Ljava/io/File;
    :catchall_1
    move-exception v15

    goto :goto_3

    .line 942
    :catch_6
    move-exception v15

    goto :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v10    # "procPath":Ljava/lang/String;
    .end local v11    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_9
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method static dumpMtkPvrGraphic(Z)Ljava/lang/String;
    .locals 18
    .param p0, "isHtcLauncherKilled"    # Z

    .prologue
    .line 854
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 856
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v11, ""

    .line 858
    .local v11, "tmp":Ljava/lang/String;
    :try_start_0
    const-string v7, "/d/pvr/pid/"

    .line 859
    .local v7, "parentPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 860
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 861
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, "list":[Ljava/lang/String;
    const-string v11, "MTK_Pvr       Pid          HW Accel"

    .line 863
    const-string v14, "MemoryLogUtilAm"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-eqz p0, :cond_0

    .line 865
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 866
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    array-length v14, v6

    if-ge v4, v14, :cond_9

    .line 867
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v6, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, "procPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    .local v9, "process":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 870
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/process_stats"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v3, "gl":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v14

    if-eqz v14, :cond_8

    .line 873
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 875
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    const-wide/16 v12, 0x0

    .line 876
    .local v12, "value":J
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 877
    const-string v14, "MemoryUsageKMalloc "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "MemoryUsageAllocPTMemoryUMA "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "MemoryUsageAllocGPUMemUMA "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 880
    :cond_2
    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v12, v14

    goto :goto_1

    .line 883
    :cond_3
    const-string v14, "MTK_Pvr  %1$8s  %2$16d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v6, v4

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 884
    const-string v14, "MemoryLogUtilAm"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    if-eqz p0, :cond_4

    .line 886
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 889
    :cond_4
    if-eqz v0, :cond_5

    .line 891
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 866
    .end local v3    # "gl":Ljava/io/File;
    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "value":J
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 887
    .restart local v3    # "gl":Ljava/io/File;
    :catch_0
    move-exception v14

    move-object v0, v1

    .line 889
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_5

    .line 891
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 892
    :catch_1
    move-exception v14

    goto :goto_2

    .line 889
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v14

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v0, :cond_6

    .line 891
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 893
    :cond_6
    :goto_5
    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 900
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "gl":Ljava/io/File;
    .end local v4    # "i":I
    .end local v6    # "list":[Ljava/lang/String;
    .end local v7    # "parentPath":Ljava/lang/String;
    .end local v8    # "procPath":Ljava/lang/String;
    .end local v9    # "process":Ljava/io/File;
    :catch_2
    move-exception v14

    .line 902
    :cond_7
    :goto_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 892
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "gl":Ljava/io/File;
    .restart local v4    # "i":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "list":[Ljava/lang/String;
    .restart local v7    # "parentPath":Ljava/lang/String;
    .restart local v8    # "procPath":Ljava/lang/String;
    .restart local v9    # "process":Ljava/io/File;
    .restart local v12    # "value":J
    :catch_3
    move-exception v14

    goto :goto_2

    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "value":J
    :catch_4
    move-exception v15

    goto :goto_5

    .line 900
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "gl":Ljava/io/File;
    .end local v8    # "procPath":Ljava/lang/String;
    .end local v9    # "process":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v14

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 889
    .restart local v3    # "gl":Ljava/io/File;
    .restart local v8    # "procPath":Ljava/lang/String;
    .restart local v9    # "process":Ljava/io/File;
    .restart local v12    # "value":J
    :catchall_1
    move-exception v14

    goto :goto_4

    .line 887
    :catch_6
    move-exception v14

    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "gl":Ljava/io/File;
    .end local v12    # "value":J
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v8    # "procPath":Ljava/lang/String;
    .end local v9    # "process":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method static dumpNVAllocationLog()V
    .locals 24

    .prologue
    .line 780
    sget v19, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 851
    .local v4, "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v7, "input":Ljava/io/BufferedReader;
    .local v9, "isFirst":Z
    .local v12, "line":Ljava/lang/String;
    .local v14, "nvmapFile":Ljava/io/File;
    .local v15, "pid":I
    .local v16, "processName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 783
    .end local v4    # "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "input":Ljava/io/BufferedReader;
    .end local v9    # "isFirst":Z
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "nvmapFile":Ljava/io/File;
    .end local v15    # "pid":I
    .end local v16    # "processName":Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/io/File;

    const-string v19, "/sys/kernel/debug/nvmap/iovmm/allocations"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .restart local v14    # "nvmapFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 785
    .restart local v7    # "input":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 786
    .restart local v12    # "line":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 787
    .restart local v4    # "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v9, 0x1

    .line 788
    .restart local v9    # "isFirst":Z
    const/4 v15, 0x0

    .line 789
    .restart local v15    # "pid":I
    const-string v16, ""

    .line 792
    .restart local v16    # "processName":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 793
    .end local v7    # "input":Ljava/io/BufferedReader;
    .local v8, "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 794
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v22, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 795
    .local v17, "strs":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 797
    const/16 v19, 0x2

    aget-object v19, v17, v19

    const-string v22, "PID"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 799
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v22, "total"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 800
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 801
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 802
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 803
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v22, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v23, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 842
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v17    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v7, v8

    .line 843
    .end local v8    # "input":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error logging mvmap allocation file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 845
    if-eqz v7, :cond_0

    .line 847
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 848
    :catch_1
    move-exception v19

    goto/16 :goto_0

    .line 806
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v17    # "strs":[Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NVMapInfo, Total: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 845
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v17    # "strs":[Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_b

    .line 847
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v7, v8

    .line 849
    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 809
    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "strs":[Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    :try_start_6
    aget-object v19, v17, v19

    const-string v22, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 810
    if-nez v9, :cond_7

    .line 811
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 812
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 813
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 814
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v22, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v23, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 845
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v17    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v7, :cond_6

    .line 847
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 849
    :cond_6
    :goto_6
    throw v19

    .line 817
    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "strs":[Ljava/lang/String;
    :cond_7
    :try_start_8
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 818
    const/16 v19, 0x1

    aget-object v16, v17, v19

    .line 819
    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 820
    const/16 v19, 0x3

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 821
    .local v20, "value":I
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NVMapInfo, processName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", pid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", total: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v9, 0x0

    .line 823
    goto/16 :goto_1

    .line 824
    .end local v20    # "value":I
    :cond_8
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 826
    .local v20, "value":J
    const-string v18, ""

    .line 827
    .local v18, "typeKey":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v11

    .line 828
    .local v11, "length":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    .line 829
    const-string v18, "0"

    .line 834
    :goto_7
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 835
    .local v13, "mapValue":Ljava/lang/Long;
    if-nez v13, :cond_a

    .line 836
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 831
    .end local v13    # "mapValue":Ljava/lang/Long;
    :cond_9
    const/16 v19, 0x2

    aget-object v19, v17, v19

    const/16 v22, 0x0

    add-int/lit8 v23, v11, -0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    .line 838
    .restart local v13    # "mapValue":Ljava/lang/Long;
    :cond_a
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 848
    .end local v11    # "length":I
    .end local v13    # "mapValue":Ljava/lang/Long;
    .end local v17    # "strs":[Ljava/lang/String;
    .end local v18    # "typeKey":Ljava/lang/String;
    .end local v20    # "value":J
    :catch_2
    move-exception v19

    move-object v7, v8

    .line 849
    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 848
    :catch_3
    move-exception v22

    goto/16 :goto_6

    .line 845
    :catchall_1
    move-exception v19

    goto/16 :goto_5

    .line 842
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    :cond_b
    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.method public static final native dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static getBuffers()J
    .locals 2

    .prologue
    .line 512
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    return-wide v0
.end method

.method private static getCached()J
    .locals 2

    .prologue
    .line 532
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    return-wide v0
.end method

.method public static final native getDetailRegionMemory(ILjava/lang/String;)[I
.end method

.method private static getFree()J
    .locals 2

    .prologue
    .line 528
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    return-wide v0
.end method

.method private static getFreeCma()J
    .locals 2

    .prologue
    .line 492
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    return-wide v0
.end method

.method private static getIONInUse()J
    .locals 2

    .prologue
    .line 488
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    return-wide v0
.end method

.method private static getIONToal()J
    .locals 2

    .prologue
    .line 484
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    return-wide v0
.end method

.method private static getKGSLAlloc()J
    .locals 2

    .prologue
    .line 480
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    return-wide v0
.end method

.method private static getKernelStack()J
    .locals 2

    .prologue
    .line 472
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    return-wide v0
.end method

.method private static getPageTable()J
    .locals 2

    .prologue
    .line 476
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    return-wide v0
.end method

.method static getProcessNameFromPid(I)Ljava/lang/String;
    .locals 8
    .param p0, "pid"    # I

    .prologue
    .line 264
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cmdline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 266
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/16 v5, 0x32

    :try_start_1
    new-array v4, v5, [C

    .line 271
    .local v4, "temp":[C
    invoke-virtual {v1, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 272
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 273
    .local v3, "proc":Ljava/lang/String;
    const-string v5, "MemoryLogUtilAm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    if-eqz v1, :cond_0

    .line 280
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 285
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "proc":Ljava/lang/String;
    .end local v4    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 278
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":[C
    :cond_1
    if-eqz v1, :cond_4

    .line 280
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 285
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string v3, ""

    goto :goto_1

    .line 281
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":[C
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 282
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 276
    .end local v4    # "temp":[C
    :catch_1
    move-exception v5

    .line 278
    :goto_3
    if-eqz v0, :cond_2

    .line 280
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 281
    :catch_2
    move-exception v5

    goto :goto_2

    .line 278
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_3

    .line 280
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 282
    :cond_3
    :goto_5
    throw v5

    .line 281
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "proc":Ljava/lang/String;
    .restart local v4    # "temp":[C
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "proc":Ljava/lang/String;
    .end local v4    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_5

    .line 278
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":[C
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static final native getRegionMemory(ILjava/lang/String;)J
.end method

.method private static getShmem()J
    .locals 2

    .prologue
    .line 516
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    return-wide v0
.end method

.method private static getSlab()J
    .locals 2

    .prologue
    .line 520
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    return-wide v0
.end method

.method private static getSwapCached()J
    .locals 2

    .prologue
    .line 508
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    return-wide v0
.end method

.method private static getSwapFree()J
    .locals 2

    .prologue
    .line 500
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    return-wide v0
.end method

.method private static getSwapTotal()J
    .locals 2

    .prologue
    .line 496
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    return-wide v0
.end method

.method private static getTotal()J
    .locals 2

    .prologue
    .line 524
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    return-wide v0
.end method

.method private static getValue(Ljava/lang/String;)J
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "split":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 467
    .local v2, "value":J
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 468
    return-wide v2
.end method

.method private static getZramInUse()J
    .locals 2

    .prologue
    .line 504
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    return-wide v0
.end method

.method static init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 61
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 62
    .local v1, "memInfoReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 63
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    .line 64
    .local v2, "total":J
    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 65
    sput-boolean v6, Lcom/android/server/am/MemoryLogUtilAm;->sIsLargeRam:Z

    .line 67
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    sput v6, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    .line 87
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v4, "/d/pvr/pid/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    const/4 v4, 0x4

    sput v4, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v4, "/d/mali/mem/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    const/4 v4, 0x5

    sput v4, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 79
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v4, "/system/lib/libbrcm_ril.so"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    const/4 v4, 0x3

    sput v4, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 83
    :cond_4
    const/4 v4, 0x2

    sput v4, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method

.method private static readExtraMemInfo()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 314
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 315
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 316
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    .line 317
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    .line 318
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    .line 319
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    .line 320
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 321
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 322
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 323
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    .line 324
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    .line 325
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    .line 326
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    .line 327
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    .line 328
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    .line 329
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    .line 331
    const/4 v2, 0x0

    .line 333
    .local v2, "count":I
    const/4 v0, 0x0

    .line 335
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_13

    const/16 v6, 0x10

    if-ge v2, v6, :cond_13

    .line 337
    const-string v6, "KernelStack:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_1
    const-string v6, "PageTables:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kgslalloc:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kgsl_alloc:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 344
    :cond_3
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :cond_4
    const-string v6, "IonTotal:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ION_ALLOC:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 347
    :cond_5
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ioninuse:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 350
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_7
    const-string v6, "FreeCma:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "CmaFree:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 353
    :cond_8
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 355
    :cond_9
    const-string v6, "SwapTotal:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 356
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 358
    :cond_a
    const-string v6, "SwapFree:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 359
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 361
    :cond_b
    const-string v6, "ZramAlloc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 362
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 364
    :cond_c
    const-string v6, "SwapCached:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 365
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 367
    :cond_d
    const-string v6, "Buffers:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 368
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 370
    :cond_e
    const-string v6, "Shmem:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 371
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 373
    :cond_f
    const-string v6, "Slab:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 374
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 376
    :cond_10
    const-string v6, "MemTotal:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 377
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 379
    :cond_11
    const-string v6, "MemFree:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 380
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 382
    :cond_12
    const-string v6, "Cached:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1c
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 389
    :cond_13
    if-eqz v1, :cond_27

    .line 391
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 395
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_14
    :goto_1
    const/4 v3, 0x0

    .line 396
    .local v3, "file":Ljava/io/File;
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    .line 398
    :try_start_3
    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/block/zram0/mem_used_total"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 400
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1b
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 401
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_17

    .line 402
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    goto :goto_2

    .line 405
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .line 407
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_25

    .line 409
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 414
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_4
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/block/zram1/mem_used_total"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_18
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 415
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 416
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_19
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 417
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_1b

    .line 418
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    goto :goto_5

    .line 421
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 423
    :goto_6
    if-eqz v0, :cond_24

    .line 425
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 430
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_7
    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/block/zram2/mem_used_total"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 431
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 432
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 433
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_8
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_1e

    .line 434
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_8

    .line 437
    .end local v5    # "line":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 439
    :goto_9
    if-eqz v0, :cond_23

    .line 441
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 446
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_a
    :try_start_f
    new-instance v3, Ljava/io/File;

    const-string v6, "/sys/block/zram3/mem_used_total"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 447
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 448
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 449
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_b
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_21

    .line 450
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_b

    .line 453
    .end local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 455
    :goto_c
    if-eqz v0, :cond_15

    .line 457
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    .line 462
    :cond_15
    :goto_d
    return-void

    .line 392
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_4
    move-exception v6

    move-object v0, v1

    .line 393
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 387
    .end local v5    # "line":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 389
    :goto_e
    if-eqz v0, :cond_14

    .line 391
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_1

    .line 392
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .line 389
    :catchall_0
    move-exception v6

    :goto_f
    if-eqz v0, :cond_16

    .line 391
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    .line 393
    :cond_16
    :goto_10
    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_17
    move-object v0, v1

    .line 407
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_18
    if-eqz v0, :cond_26

    .line 409
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    move-object v1, v0

    .line 411
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 410
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v1, v0

    .line 411
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 410
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 411
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 407
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    :goto_11
    if-eqz v0, :cond_19

    .line 409
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 411
    :cond_19
    :goto_12
    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1a
    move-object v0, v1

    .line 423
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1b
    if-eqz v0, :cond_24

    .line 425
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 427
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 426
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_9
    move-exception v6

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 427
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 426
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_a
    move-exception v6

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 427
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 423
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_13
    if-eqz v0, :cond_1c

    .line 425
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 427
    :cond_1c
    :goto_14
    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1d
    move-object v0, v1

    .line 439
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1e
    if-eqz v0, :cond_23

    .line 441
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 443
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 442
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_b
    move-exception v6

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 443
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 442
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_c
    move-exception v6

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 443
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 439
    :catchall_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_15
    if-eqz v0, :cond_1f

    .line 441
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 443
    :cond_1f
    :goto_16
    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_20
    move-object v0, v1

    .line 455
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_21
    if-eqz v0, :cond_15

    .line 457
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d

    goto :goto_d

    .line 458
    :catch_d
    move-exception v6

    goto :goto_d

    .line 455
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_4
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_17
    if-eqz v0, :cond_22

    .line 457
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 459
    :cond_22
    :goto_18
    throw v6

    .line 392
    .end local v3    # "file":Ljava/io/File;
    :catch_e
    move-exception v7

    goto :goto_10

    .line 410
    .restart local v3    # "file":Ljava/io/File;
    :catch_f
    move-exception v7

    goto :goto_12

    .line 426
    :catch_10
    move-exception v7

    goto :goto_14

    .line 442
    :catch_11
    move-exception v7

    goto :goto_16

    .line 458
    :catch_12
    move-exception v6

    goto/16 :goto_d

    :catch_13
    move-exception v7

    goto :goto_18

    .line 455
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_17

    :catchall_6
    move-exception v6

    goto :goto_17

    .line 453
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_14
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_15
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 439
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_15

    :catchall_8
    move-exception v6

    goto :goto_15

    .line 437
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_16
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_17
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 423
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_9
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_13

    :catchall_a
    move-exception v6

    goto :goto_13

    .line 421
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_18
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_19
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 407
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_b
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_11

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_c
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_11

    .line 405
    :catch_1a
    move-exception v6

    goto/16 :goto_3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_1b
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_3

    .line 389
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_d
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 387
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1c
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .restart local v3    # "file":Ljava/io/File;
    :cond_23
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :cond_24
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :cond_25
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_26
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_27
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method
