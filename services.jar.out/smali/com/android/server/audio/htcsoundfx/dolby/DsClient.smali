.class public Lcom/android/server/audio/htcsoundfx/dolby/DsClient;
.super Ljava/lang/Object;
.source "DsClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcDsClient"


# instance fields
.field private BIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

.field private DsClientClass:Ljava/lang/Class;

.field private GET_DS_ON:Lcom/android/server/audio/htcutil/HtcMethod;

.field private GET_DS_VERSION:Lcom/android/server/audio/htcutil/HtcMethod;

.field private GET_PROFILE_COUNT:Lcom/android/server/audio/htcutil/HtcMethod;

.field private GET_PROFILE_NAMES:Lcom/android/server/audio/htcutil/HtcMethod;

.field private GET_SELECTED_PRIFOLE:Lcom/android/server/audio/htcutil/HtcMethod;

.field private IDsClientEventsClass:Ljava/lang/Class;

.field private SET_DS_ON_CHECKED:Lcom/android/server/audio/htcutil/HtcMethod;

.field private SET_EVENT_LISTENER:Lcom/android/server/audio/htcutil/HtcMethod;

.field private SET_SELETCED_PROFILE:Lcom/android/server/audio/htcutil/HtcMethod;

.field private UNBIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    const-string v3, "android.dolby.IDsClientEvents"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->IDsClientEventsClass:Ljava/lang/Class;

    .line 36
    const-string v3, "android.dolby.DsClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->DsClientClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    new-instance v3, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v5, "setEventListener"

    new-array v6, v9, [Ljava/lang/Class;

    iget-object v7, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->IDsClientEventsClass:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-direct {v3, v5, v6}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_EVENT_LISTENER:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 43
    new-instance v3, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v5, "setDsOnChecked"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-direct {v3, v5, v6}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_DS_ON_CHECKED:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 44
    new-instance v5, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v6, "getDsOn"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-direct {v5, v6, v3}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_DS_ON:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 45
    new-instance v5, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v6, "getProfileCount"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-direct {v5, v6, v3}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_PROFILE_COUNT:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 46
    new-instance v5, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v6, "getProfileNames"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-direct {v5, v6, v3}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_PROFILE_NAMES:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 47
    new-instance v3, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v5, "setSelectedProfile"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-direct {v3, v5, v6}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_SELETCED_PROFILE:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 48
    new-instance v5, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v6, "getSelectedProfile"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-direct {v5, v6, v3}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_SELECTED_PRIFOLE:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 49
    new-instance v3, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v5, "getDsVersion"

    check-cast v4, [Ljava/lang/Class;

    invoke-direct {v3, v5, v4}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_DS_VERSION:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 50
    new-instance v3, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v4, "bindDsService"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->BIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 51
    new-instance v3, Lcom/android/server/audio/htcutil/HtcMethod;

    const-string v4, "unBindDsService"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/android/server/audio/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->UNBIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

    .line 53
    const/16 v3, 0xa

    new-array v2, v3, [Lcom/android/server/audio/htcutil/HtcMethod;

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_EVENT_LISTENER:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_DS_ON_CHECKED:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v3, v2, v9

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_DS_ON:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_PROFILE_COUNT:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_PROFILE_NAMES:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_SELETCED_PROFILE:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_SELECTED_PRIFOLE:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_DS_VERSION:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->BIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->UNBIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

    aput-object v4, v2, v3

    .line 65
    .local v2, "list":[Lcom/android/server/audio/htcutil/HtcMethod;
    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->DsClientClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->initMethods([Lcom/android/server/audio/htcutil/HtcMethod;Ljava/lang/Class;)V

    .line 68
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->DsClientClass:Ljava/lang/Class;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 69
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 70
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    const-string v4, "HtcDsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInitialized "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "true"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v2    # "list":[Lcom/android/server/audio/htcutil/HtcMethod;
    :goto_2
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "list":[Lcom/android/server/audio/htcutil/HtcMethod;
    :catch_1
    move-exception v1

    .line 72
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "false"

    goto :goto_1
.end method


# virtual methods
.method public bindDsService(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->BIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public getDsOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 105
    :goto_0
    return v1

    .line 102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_DS_ON:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v1, v2

    .line 105
    goto :goto_0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 167
    :goto_0
    return-object v1

    .line 164
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_DS_VERSION:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 167
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 118
    :goto_0
    return v1

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_PROFILE_COUNT:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    aput-object v2, v1, v4

    .line 131
    :goto_0
    return-object v1

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_PROFILE_NAMES:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 131
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method public getSelectedProfile()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 149
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 155
    :goto_0
    return v1

    .line 152
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->GET_SELECTED_PRIFOLE:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->DsClientClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->IDsClientEventsClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDsOnChecked(Z)I
    .locals 6
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    sget v1, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_REQUEST_FAILED_EFFECT_SUSPENDED:I

    .line 93
    :goto_0
    return v1

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_DS_ON_CHECKED:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 93
    sget v1, Lcom/android/server/audio/htcsoundfx/dolby/DsConstants;->DS_REQUEST_FAILED_EFFECT_SUSPENDED:I

    goto :goto_0
.end method

.method public setEventListener(Ljava/lang/Object;)V
    .locals 6
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_EVENT_LISTENER:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->IDsClientEventsClass:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSelectedProfile(I)V
    .locals 6
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->SET_SELETCED_PROFILE:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public unBindDsService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/htcsoundfx/dolby/DsClient;->UNBIND_DS_SERVICE:Lcom/android/server/audio/htcutil/HtcMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
