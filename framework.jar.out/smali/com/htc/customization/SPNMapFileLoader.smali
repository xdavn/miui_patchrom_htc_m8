.class public Lcom/htc/customization/SPNMapFileLoader;
.super Lcom/htc/customization/MapFileLoader;
.source "SPNMapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/SPNMapFileLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default.xml"

.field private static final TAG:Ljava/lang/String; = "SPNMapFileLoader"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/customization/MapFileLoader;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/SPNMapFileLoader;->mProfiles:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/htc/customization/SPNMapFileLoader$XmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/SPNMapFileLoader$XmlContentHandler;-><init>(Lcom/htc/customization/SPNMapFileLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/SPNMapFileLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 43
    return-void
.end method
