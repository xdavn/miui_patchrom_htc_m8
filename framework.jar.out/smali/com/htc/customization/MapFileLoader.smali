.class public abstract Lcom/htc/customization/MapFileLoader;
.super Lcom/htc/customization/BaseLoader;
.source "MapFileLoader.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default.xml"

.field private static final TAG:Ljava/lang/String; = "MapFileReader"


# instance fields
.field protected mProfiles:Ljava/util/HashMap;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/customization/BaseLoader;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/htc/customization/MapFileLoader;->mConfigName:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/htc/customization/MapFileLoader;->init()V

    .line 42
    return-void
.end method


# virtual methods
.method public getAllXmls()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "xmlHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    iget-object v0, p0, Lcom/htc/customization/MapFileLoader;->mProfiles:Ljava/util/HashMap;

    .line 68
    return-object v0
.end method

.method public getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXMLWithCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/htc/customization/MapFileLoader;->mProfiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "xml":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 56
    const-string v0, "default.xml"

    .line 58
    :cond_0
    return-object v0
.end method

.method protected abstract init()V
.end method
