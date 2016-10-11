.class public Lcom/htc/customization/CustomizationMNSLoader;
.super Lcom/htc/customization/BaseLoader;
.source "CustomizationMNSLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/CustomizationMNSLoader$ParseThread;,
        Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomizationMNSLoader"


# instance fields
.field private mAppSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;"
        }
    .end annotation
.end field

.field private mMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;"
        }
    .end annotation
.end field

.field private parseThread:Lcom/htc/customization/CustomizationMNSLoader$ParseThread;

.field private tempMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "xmlHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/htc/customization/BaseLoader;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/htc/customization/CustomizationMNSLoader;->init()V

    .line 49
    iput-object p1, p0, Lcom/htc/customization/CustomizationMNSLoader;->mMapping:Ljava/util/HashMap;

    .line 51
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 53
    .local v3, "xmlVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;

    invoke-direct {v4, p0, v3}, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;-><init>(Lcom/htc/customization/CustomizationMNSLoader;Ljava/util/Vector;)V

    iput-object v4, p0, Lcom/htc/customization/CustomizationMNSLoader;->parseThread:Lcom/htc/customization/CustomizationMNSLoader$ParseThread;

    .line 58
    iget-object v4, p0, Lcom/htc/customization/CustomizationMNSLoader;->parseThread:Lcom/htc/customization/CustomizationMNSLoader$ParseThread;

    invoke-virtual {v4}, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->start()V

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/htc/customization/CustomizationMNSLoader;->parseThread:Lcom/htc/customization/CustomizationMNSLoader$ParseThread;

    invoke-virtual {v4}, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/customization/CustomizationMNSLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/htc/customization/CustomizationMNSLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->mAppSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/customization/CustomizationMNSLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/htc/customization/CustomizationMNSLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/customization/CustomizationMNSLoader;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/htc/customization/CustomizationMNSLoader;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;

    return-object p1
.end method

.method private getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mns"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "gid1"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 336
    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader;->mMapping:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    .local v2, "spnFileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader;->mMapping:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, "gid1FileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader;->mMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "mnsFileName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 341
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 348
    :goto_0
    return-object v3

    .line 342
    :cond_0
    if-eqz v0, :cond_1

    .line 343
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 344
    :cond_1
    if-eqz v1, :cond_2

    .line 345
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 348
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getOperatorCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    const-string v0, "gsm.sim.operator.numeric"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->mSystemSettings:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->mAppSettings:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;

    .line 73
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->mSystemSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->mAppSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    return-void
.end method


# virtual methods
.method public getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomizationConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "gid1"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/htc/customization/CustomizationMNSLoader;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "mns":Ljava/lang/String;
    invoke-direct {p0, v1, p2, p3}, Lcom/htc/customization/CustomizationMNSLoader;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader;->mAppSettings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/customization/HtcCustomizationReader;

    .line 269
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-nez v2, :cond_1

    .line 271
    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader;->mSystemSettings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    check-cast v2, Lcom/htc/customization/HtcCustomizationReader;

    .line 273
    .restart local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    return-object v2
.end method

.method public getXmlFilenameWithFullPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/customization/CustomizationMNSLoader;->CUSTOMIZATION_PATH_MNS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader;->mConfigName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "fileFullPath":Ljava/lang/String;
    const-string v1, "CustomizationMNSLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0
.end method
