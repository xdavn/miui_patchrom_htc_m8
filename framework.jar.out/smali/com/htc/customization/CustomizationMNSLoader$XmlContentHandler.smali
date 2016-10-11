.class Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;
.super Lcom/htc/customization/BaseXmlHandler;
.source "CustomizationMNSLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/CustomizationMNSLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlContentHandler"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCurrentModule:Lcom/htc/customization/ModuleReader;

.field private mItemName:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mSetName:Ljava/lang/String;

.field private mSetType:Ljava/lang/String;

.field private mTarget:Ljava/util/HashMap;
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

.field private mTempIntVals:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempStrVals:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/customization/CustomizationMNSLoader;


# direct methods
.method public constructor <init>(Lcom/htc/customization/CustomizationMNSLoader;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    invoke-direct {p0}, Lcom/htc/customization/BaseXmlHandler;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private clearForArrayType()V
    .locals 1

    .prologue
    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 103
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 104
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/htc/customization/BaseXmlHandler;->characters([CII)V

    .line 177
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v1, "module"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    iget-object v3, v3, Lcom/htc/customization/CustomizationMNSLoader;->mConfigName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    iget-object v5, v5, Lcom/htc/customization/CustomizationMNSLoader;->mConfigName:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v3}, Lcom/htc/customization/ModuleReader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v1}, Lcom/htc/customization/ModuleReader;->dumpValues()V

    .line 226
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->reset()V

    goto :goto_0

    .line 189
    :cond_2
    const-string v1, "item"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    const-string v1, "boolean"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_3
    const-string v1, "integer"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleInteger(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_4
    const-string v1, "string"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_5
    const-string v1, "byte"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleByte(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_6
    const-string v1, "integer-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_2
    const-string v1, "CustomizationMNSLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add int-array item, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v1, "string-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 208
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "CustomizationMNSLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add string-array item, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 211
    :cond_8
    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 213
    :cond_9
    const-string v1, "set"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 214
    const-string v1, "integer-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 215
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Lcom/htc/customization/ModuleReader;->handleIntArray(Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 220
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->clearForArrayType()V

    goto/16 :goto_1

    .line 216
    :cond_b
    const-string v1, "string-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 217
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/customization/ModuleReader;->handleStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 221
    :cond_c
    const-string v1, "category"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 223
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
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
    .line 112
    invoke-virtual {p0}, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->reset()V

    .line 114
    const-string v2, "category"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "name":Ljava/lang/String;
    const-string v2, "Parsing tag %s name = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "log":Ljava/lang/String;
    const-string v2, "CustomizationMNSLoader"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "ACC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    # getter for: Lcom/htc/customization/CustomizationMNSLoader;->mAppSettings:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/customization/CustomizationMNSLoader;->access$000(Lcom/htc/customization/CustomizationMNSLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 121
    const-string v2, "app"

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    .line 169
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0    # "log":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 125
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    goto :goto_0

    .line 144
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/CustomizationMNSLoader;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v2, "module"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/customization/ModuleReader;

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    goto :goto_0

    .line 153
    :cond_3
    new-instance v2, Lcom/htc/customization/ModuleReader;

    invoke-direct {v2}, Lcom/htc/customization/ModuleReader;-><init>()V

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    .line 154
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/ModuleReader;->setName(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/customization/ModuleReader;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_4
    const-string v2, "function"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/ModuleReader;->setFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_5
    const-string v2, "set"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 161
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/ModuleReader;->setSet(Ljava/lang/String;)V

    .line 162
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    .line 163
    const-string v2, "type"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_6
    const-string v2, "item"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 166
    const-string v2, "type"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    goto/16 :goto_0
.end method
