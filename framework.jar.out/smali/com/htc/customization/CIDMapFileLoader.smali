.class public Lcom/htc/customization/CIDMapFileLoader;
.super Lcom/htc/customization/MapFileLoader;
.source "CIDMapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default.xml"

.field private static final TAG:Ljava/lang/String; = "CIDMapFileReader"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/customization/MapFileLoader;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    .line 44
    new-instance v0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;-><init>(Lcom/htc/customization/CIDMapFileLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/CIDMapFileLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 45
    return-void
.end method
