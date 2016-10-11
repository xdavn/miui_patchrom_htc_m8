.class Lcom/htc/customization/CustomizationMNSLoader$ParseThread;
.super Ljava/lang/Thread;
.source "CustomizationMNSLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/CustomizationMNSLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/customization/CustomizationMNSLoader;

.field private xmlVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/customization/CustomizationMNSLoader;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "xmlVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->xmlVector:Ljava/util/Vector;

    .line 283
    iput-object p2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->xmlVector:Ljava/util/Vector;

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 288
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->xmlVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->xmlVector:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 296
    .restart local v1    # "temp":Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    # getter for: Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/customization/CustomizationMNSLoader;->access$100(Lcom/htc/customization/CustomizationMNSLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    iput-object v1, v2, Lcom/htc/customization/CustomizationMNSLoader;->mConfigName:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    # getter for: Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/customization/CustomizationMNSLoader;->access$100(Lcom/htc/customization/CustomizationMNSLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->xmlVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    const/4 v3, 0x0

    # setter for: Lcom/htc/customization/CustomizationMNSLoader;->tempMap:Ljava/util/HashMap;
    invoke-static {v2, v3}, Lcom/htc/customization/CustomizationMNSLoader;->access$102(Lcom/htc/customization/CustomizationMNSLoader;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 307
    const/4 v1, 0x0

    .line 309
    const-string v2, "CustomizationMNSLoader"

    const-string v3, "Read MNS file"

    invoke-static {v2, v3}, Lcom/htc/customization/Utils;->printUseTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "CustomizationMNSLoader"

    const-string v3, "All configurations done"

    invoke-static {v2, v3}, Lcom/htc/customization/Utils;->printUseTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    new-instance v3, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;

    iget-object v4, p0, Lcom/htc/customization/CustomizationMNSLoader$ParseThread;->this$0:Lcom/htc/customization/CustomizationMNSLoader;

    invoke-direct {v3, v4}, Lcom/htc/customization/CustomizationMNSLoader$XmlContentHandler;-><init>(Lcom/htc/customization/CustomizationMNSLoader;)V

    invoke-virtual {v2, v3}, Lcom/htc/customization/CustomizationMNSLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    return-void
.end method
