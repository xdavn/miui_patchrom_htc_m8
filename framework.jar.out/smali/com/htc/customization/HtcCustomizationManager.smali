.class public Lcom/htc/customization/HtcCustomizationManager;
.super Ljava/lang/Object;
.source "HtcCustomizationManager.java"


# static fields
.field public static final CUSTOMIZE_TYPE_CUSTOMER:I = 0x10011

.field public static final CUSTOMIZE_TYPE_DEVICE:I = 0x10010

.field private static final DEBUG_CID:Ljava/lang/String; = "htc.customization.cid"

.field public static final HTC_ACC_READER:Ljava/lang/String; = "acc"

.field public static final HTC_CID_MAP:Ljava/lang/String; = "cid_map"

.field public static final HTC_MNS_MAP:Ljava/lang/String; = "mns_map"

.field public static final HTC_MVNO_MAP:Ljava/lang/String; = "mvno_map"

.field public static final HTC_SPN_MAP:Ljava/lang/String; = "spn_map"

.field public static final READER_TYPE_BINARY:I = 0x2

.field public static final READER_TYPE_XML:I = 0x1

.field private static final RO_CID:Ljava/lang/String; = "ro.cid"

.field private static final TAG:Ljava/lang/String; = "CustomizationManager"

.field private static final mInstance:Lcom/htc/customization/HtcCustomizationManager;


# instance fields
.field private mAccLoader:Lcom/htc/customization/CustomizationAccLoader;

.field private mCIDLoader:Lcom/htc/customization/CustomizationCIDLoader;

.field private mGroupIdLevel1:Ljava/lang/String;

.field private mMNSLoader:Lcom/htc/customization/CustomizationMNSLoader;

.field private mNativeContext:I

.field private mServiceProviderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/htc/customization/HtcCustomizationManager;

    invoke-direct {v0}, Lcom/htc/customization/HtcCustomizationManager;-><init>()V

    sput-object v0, Lcom/htc/customization/HtcCustomizationManager;->mInstance:Lcom/htc/customization/HtcCustomizationManager;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v7, "CustomizationManager"

    invoke-static {v7}, Lcom/htc/customization/Utils;->startRecUseTime(Ljava/lang/String;)V

    .line 83
    const-string v7, "htc.customization.log.level"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/customization/Utils;->setCustomizationLogLevel(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/customization/HtcCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "cid":Ljava/lang/String;
    new-instance v7, Lcom/htc/customization/CustomizationAccLoader;

    invoke-direct {v7, v1}, Lcom/htc/customization/CustomizationAccLoader;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/customization/HtcCustomizationManager;->mAccLoader:Lcom/htc/customization/CustomizationAccLoader;

    .line 86
    const-string v7, "CustomizationManager"

    const-string v8, "Read ACC file"

    invoke-static {v7, v8}, Lcom/htc/customization/Utils;->printUseTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v3, Lcom/htc/customization/CIDMapFileLoader;

    const-string v7, "cid_map"

    invoke-direct {v3, v7}, Lcom/htc/customization/CIDMapFileLoader;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "mapFile":Lcom/htc/customization/CIDMapFileLoader;
    invoke-virtual {v3, v1}, Lcom/htc/customization/CIDMapFileLoader;->getXMLWithCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "xml":Ljava/lang/String;
    new-instance v7, Lcom/htc/customization/CustomizationCIDLoader;

    invoke-direct {v7, v6}, Lcom/htc/customization/CustomizationCIDLoader;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/customization/HtcCustomizationManager;->mCIDLoader:Lcom/htc/customization/CustomizationCIDLoader;

    .line 93
    new-instance v4, Lcom/htc/customization/MNSMapFileLoader;

    const-string v7, "mns_map"

    invoke-direct {v4, v7}, Lcom/htc/customization/MNSMapFileLoader;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "mnsMapFile":Lcom/htc/customization/MNSMapFileLoader;
    invoke-virtual {v4}, Lcom/htc/customization/MNSMapFileLoader;->getAllXmls()Ljava/util/HashMap;

    move-result-object v0

    .line 99
    .local v0, "allMnsXmls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/htc/customization/SPNMapFileLoader;

    const-string v7, "spn_map"

    invoke-direct {v5, v7}, Lcom/htc/customization/SPNMapFileLoader;-><init>(Ljava/lang/String;)V

    .line 100
    .local v5, "spnMapFile":Lcom/htc/customization/SPNMapFileLoader;
    invoke-virtual {v5}, Lcom/htc/customization/SPNMapFileLoader;->getAllXmls()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 103
    new-instance v2, Lcom/htc/customization/GID1MapFileLoader;

    const-string v7, "mvno_map"

    invoke-direct {v2, v7}, Lcom/htc/customization/GID1MapFileLoader;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "gid1MapFile":Lcom/htc/customization/GID1MapFileLoader;
    invoke-virtual {v2}, Lcom/htc/customization/GID1MapFileLoader;->getAllXmls()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 106
    new-instance v7, Lcom/htc/customization/CustomizationMNSLoader;

    invoke-direct {v7, v0}, Lcom/htc/customization/CustomizationMNSLoader;-><init>(Ljava/util/HashMap;)V

    iput-object v7, p0, Lcom/htc/customization/HtcCustomizationManager;->mMNSLoader:Lcom/htc/customization/CustomizationMNSLoader;

    .line 107
    return-void
.end method

.method public static getInstance()Lcom/htc/customization/HtcCustomizationManager;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/htc/customization/HtcCustomizationManager;->mInstance:Lcom/htc/customization/HtcCustomizationManager;

    return-object v0
.end method

.method private isSIMReady()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method private setGroupIdLevel1(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid1"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/customization/HtcCustomizationManager;->mGroupIdLevel1:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private setServiceProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/customization/HtcCustomizationManager;->mServiceProviderName:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public declared-synchronized getCustomizationReader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/htc/customization/HtcCustomizationManager;->setServiceProviderName(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p4}, Lcom/htc/customization/HtcCustomizationManager;->setGroupIdLevel1(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "needSIMReady"    # Z

    .prologue
    .line 204
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    .line 205
    :goto_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 207
    .local v4, "tempVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/htc/customization/HtcCustomizationReader;>;"
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/htc/customization/HtcCustomizationManager;->isSIMReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 208
    const/4 v3, 0x0

    .line 270
    :goto_1
    monitor-exit p0

    return-object v3

    .line 204
    .end local v4    # "tempVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/htc/customization/HtcCustomizationReader;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 210
    .restart local v4    # "tempVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/htc/customization/HtcCustomizationReader;>;"
    :cond_1
    const/4 v3, 0x0

    .line 211
    .local v3, "mnsReader":Lcom/htc/customization/HtcCustomizationReader;
    const/4 v2, 0x0

    .line 212
    .local v2, "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    const/4 v1, 0x0

    .line 214
    .local v1, "accReader":Lcom/htc/customization/HtcCustomizationReader;
    iget-object v5, p0, Lcom/htc/customization/HtcCustomizationManager;->mMNSLoader:Lcom/htc/customization/CustomizationMNSLoader;

    iget-object v6, p0, Lcom/htc/customization/HtcCustomizationManager;->mServiceProviderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/customization/HtcCustomizationManager;->mGroupIdLevel1:Ljava/lang/String;

    invoke-virtual {v5, p1, v6, v7}, Lcom/htc/customization/CustomizationMNSLoader;->getCustomizationConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 215
    iget-object v5, p0, Lcom/htc/customization/HtcCustomizationManager;->mCIDLoader:Lcom/htc/customization/CustomizationCIDLoader;

    invoke-virtual {v5, p1}, Lcom/htc/customization/CustomizationCIDLoader;->getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 216
    iget-object v5, p0, Lcom/htc/customization/HtcCustomizationManager;->mAccLoader:Lcom/htc/customization/CustomizationAccLoader;

    invoke-virtual {v5, p1}, Lcom/htc/customization/CustomizationAccLoader;->getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 218
    if-nez v3, :cond_8

    .line 219
    if-eqz v2, :cond_6

    .line 220
    move-object v3, v2

    .line 221
    if-eqz v1, :cond_3

    .line 222
    instance-of v5, v1, Lcom/htc/customization/AccAppReader;

    if-eqz v5, :cond_5

    .line 223
    check-cast v1, Lcom/htc/customization/AccAppReader;

    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_2
    :goto_2
    move-object v0, v3

    check-cast v0, Lcom/htc/customization/ModuleReader;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/htc/customization/ModuleReader;->setDefaultReader(Ljava/util/Vector;)V

    .line 262
    .end local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_3
    :goto_3
    if-nez v3, :cond_4

    .line 264
    new-instance v3, Lcom/htc/customization/SystemReader;

    .end local v3    # "mnsReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-direct {v3}, Lcom/htc/customization/SystemReader;-><init>()V

    .line 265
    .restart local v3    # "mnsReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v5, "CustomizationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mnsReader is null, return default reader"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_4
    const/4 v4, 0x0

    .line 270
    goto :goto_1

    .line 225
    .restart local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_5
    instance-of v5, v1, Lcom/htc/customization/SystemReader;

    if-eqz v5, :cond_2

    .line 226
    check-cast v1, Lcom/htc/customization/SystemReader;

    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 204
    .end local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "mnsReader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v4    # "tempVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/htc/customization/HtcCustomizationReader;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 231
    .restart local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v3    # "mnsReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v4    # "tempVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/htc/customization/HtcCustomizationReader;>;"
    :cond_6
    if-eqz v1, :cond_7

    .line 232
    move-object v3, v1

    goto :goto_3

    .line 235
    :cond_7
    :try_start_2
    const-string v5, "CustomizationManager"

    const-string v6, "all Reader are null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 239
    :cond_8
    if-nez v1, :cond_a

    if-eqz v2, :cond_a

    .line 240
    check-cast v2, Lcom/htc/customization/ModuleReader;

    .end local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_9
    :goto_4
    move-object v0, v3

    check-cast v0, Lcom/htc/customization/ModuleReader;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/htc/customization/ModuleReader;->setDefaultReader(Ljava/util/Vector;)V

    goto :goto_3

    .line 241
    .restart local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_a
    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    .line 242
    instance-of v5, v1, Lcom/htc/customization/AccAppReader;

    if-eqz v5, :cond_b

    .line 243
    check-cast v1, Lcom/htc/customization/AccAppReader;

    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 245
    .restart local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_b
    instance-of v5, v1, Lcom/htc/customization/SystemReader;

    if-eqz v5, :cond_9

    .line 246
    check-cast v1, Lcom/htc/customization/SystemReader;

    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 248
    .restart local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_c
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 250
    check-cast v2, Lcom/htc/customization/ModuleReader;

    .end local v2    # "cidReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 251
    instance-of v5, v1, Lcom/htc/customization/AccAppReader;

    if-eqz v5, :cond_d

    .line 252
    check-cast v1, Lcom/htc/customization/AccAppReader;

    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 254
    .restart local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_d
    instance-of v5, v1, Lcom/htc/customization/SystemReader;

    if-eqz v5, :cond_9

    .line 255
    check-cast v1, Lcom/htc/customization/SystemReader;

    .end local v1    # "accReader":Lcom/htc/customization/HtcCustomizationReader;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public readCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    const-string v1, "htc.customization.cid"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "cid":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method
