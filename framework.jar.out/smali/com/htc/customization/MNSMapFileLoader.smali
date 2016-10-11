.class public Lcom/htc/customization/MNSMapFileLoader;
.super Lcom/htc/customization/MapFileLoader;
.source "MNSMapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/MNSMapFileLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default.xml"

.field private static final TAG:Ljava/lang/String; = "MNSMapFileLoader"


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

    iput-object v0, p0, Lcom/htc/customization/MNSMapFileLoader;->mProfiles:Ljava/util/HashMap;

    .line 44
    new-instance v0, Lcom/htc/customization/MNSMapFileLoader$XmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/MNSMapFileLoader$XmlContentHandler;-><init>(Lcom/htc/customization/MNSMapFileLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/MNSMapFileLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 45
    return-void
.end method
