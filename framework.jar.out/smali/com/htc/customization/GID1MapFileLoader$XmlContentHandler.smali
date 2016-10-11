.class Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;
.super Lcom/htc/customization/BaseXmlHandler;
.source "GID1MapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/GID1MapFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlContentHandler"
.end annotation


# instance fields
.field private mGID1:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mMCCMNC:Ljava/lang/String;

.field private mMapFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/customization/GID1MapFileLoader;


# direct methods
.method public constructor <init>(Lcom/htc/customization/GID1MapFileLoader;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->this$0:Lcom/htc/customization/GID1MapFileLoader;

    invoke-direct {p0}, Lcom/htc/customization/BaseXmlHandler;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mMCCMNC:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mGID1:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mMapFile:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mKey:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->reset()V

    .line 79
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->reset()V

    .line 58
    const-string v0, "item"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mKey:Ljava/lang/String;

    const-string v1, "GID1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "GID1"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mGID1:Ljava/lang/String;

    .line 62
    const-string v0, "mapfile"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mMapFile:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->this$0:Lcom/htc/customization/GID1MapFileLoader;

    iget-object v0, v0, Lcom/htc/customization/GID1MapFileLoader;->mProfiles:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mGID1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mMapFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "key"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "MCCMNC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/customization/GID1MapFileLoader$XmlContentHandler;->mMCCMNC:Ljava/lang/String;

    goto :goto_0
.end method
