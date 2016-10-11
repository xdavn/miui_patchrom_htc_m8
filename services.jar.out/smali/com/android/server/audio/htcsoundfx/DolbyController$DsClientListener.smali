.class final Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;
.super Ljava/lang/Object;
.source "DolbyController.java"

# interfaces
.implements Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/DolbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DsClientListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyController.DsClientListener"


# instance fields
.field private mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/DolbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/htcsoundfx/DolbyController;Lcom/android/server/audio/htcsoundfx/DolbyController;)V
    .locals 0
    .param p2, "owner"    # Lcom/android/server/audio/htcsoundfx/DolbyController;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->this$0:Lcom/android/server/audio/htcsoundfx/DolbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    .line 289
    return-void
.end method


# virtual methods
.method public getProxeyInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 314
    :try_start_0
    const-string v3, "android.dolby.IDsClientEvents"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 315
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 316
    .local v1, "clazzs":[Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 320
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "clazzs":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 295
    .local v3, "result":Ljava/lang/Object;
    :try_start_0
    const-string v4, "DolbyController.DsClientListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v2, Lcom/android/server/audio/htcutil/HtcMethod;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 298
    .local v2, "methodImpl":Lcom/android/server/audio/htcutil/HtcMethod;
    const/4 v4, 0x1

    new-array v1, v4, [Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 299
    .local v1, "list":[Lcom/android/server/audio/htcutil/HtcMethod;
    const-class v4, Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    invoke-static {v1, v4}, Lcom/android/server/audio/htcutil/HtcMethod;->initMethods([Lcom/android/server/audio/htcutil/HtcMethod;Ljava/lang/Class;)V

    .line 301
    invoke-static {p0, v2, p3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    # getter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mObserver:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v4}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$200(Lcom/android/server/audio/htcsoundfx/DolbyController;)Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    # getter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mObserver:Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v4}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$200(Lcom/android/server/audio/htcsoundfx/DolbyController;)Lcom/android/server/audio/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v4

    invoke-static {v4, v2, p3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "list":[Lcom/android/server/audio/htcutil/HtcMethod;
    .end local v2    # "methodImpl":Lcom/android/server/audio/htcutil/HtcMethod;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 6

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    # getter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$000(Lcom/android/server/audio/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    # getter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClient:Lcom/android/server/audio/htcsoundfx/dolby/DsClient;
    invoke-static {v2}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$300(Lcom/android/server/audio/htcsoundfx/DolbyController;)Lcom/android/server/audio/htcsoundfx/dolby/DsClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->getDsVersion()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "version":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientConnected:Z
    invoke-static {v2, v4}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$402(Lcom/android/server/audio/htcsoundfx/DolbyController;Z)Z

    .line 331
    const-string v2, "DolbyController.DsClientListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onClientConnected] Ds connected, version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v1    # "version":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 337
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const-string v2, "DolbyController.DsClientListener"

    const-string v4, "[onClientConnected] DsClient not exist cause of AudioEffect init fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onClientDisconnected()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    # getter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$000(Lcom/android/server/audio/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 342
    :try_start_0
    const-string v0, "DolbyController.DsClientListener"

    const-string v2, "onClientDisconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientConnected:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$402(Lcom/android/server/audio/htcsoundfx/DolbyController;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/DolbyController$DsClientListener;->mOwner:Lcom/android/server/audio/htcsoundfx/DolbyController;

    # getter for: Lcom/android/server/audio/htcsoundfx/DolbyController;->mDsClientBound:Z
    invoke-static {v0}, Lcom/android/server/audio/htcsoundfx/DolbyController;->access$500(Lcom/android/server/audio/htcsoundfx/DolbyController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "DolbyController.DsClientListener"

    const-string v2, "DsClient disconnected unexpectly, DsClient should auto reconnect later"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDsOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 353
    const-string v0, "DolbyController.DsClientListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDsOn]+ on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 359
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 364
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 374
    return-void
.end method
