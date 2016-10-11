.class final Landroid/app/SystemServiceRegistry$70;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Lcom/sprint/net/cdma/ConnectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Lcom/sprint/net/cdma/ConnectionManager;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 746
    const-string v4, "cdma"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 747
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 748
    const-string v4, "SystemServiceRegistry"

    const-string v5, "Unable to create Sprint CDMA Connection Service due to IBinder b is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 764
    :cond_0
    :goto_0
    return-object v1

    .line 752
    :cond_1
    invoke-static {v0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprint/net/cdma/ICdmaConnectionManager;

    move-result-object v2

    .line 753
    .local v2, "s":Lcom/sprint/net/cdma/ICdmaConnectionManager;
    if-nez v2, :cond_2

    .line 754
    const-string v4, "SystemServiceRegistry"

    const-string v5, "Unable to create Sprint CDMA Connection Service due to IConnectionService s is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 755
    goto :goto_0

    .line 758
    :cond_2
    new-instance v1, Lcom/sprint/net/cdma/ConnectionManager;

    invoke-direct {v1, v2}, Lcom/sprint/net/cdma/ConnectionManager;-><init>(Lcom/sprint/net/cdma/ICdmaConnectionManager;)V

    .line 759
    .local v1, "m":Lcom/sprint/net/cdma/ConnectionManager;
    if-nez v1, :cond_0

    .line 760
    const-string v4, "SystemServiceRegistry"

    const-string v5, "Unable to create Sprint CDMA Connection Service due to ConnectionManager m is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 761
    goto :goto_0
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$70;->createService()Lcom/sprint/net/cdma/ConnectionManager;

    move-result-object v0

    return-object v0
.end method
