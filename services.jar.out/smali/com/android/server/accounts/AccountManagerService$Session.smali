.class abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 10
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z

    .prologue
    .line 2921
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 2923
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 5
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z
    .param p9, "updateLastAuthenticatedTime"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2927
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2928
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 2909
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 2910
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 2911
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 2913
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2930
    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2931
    :cond_0
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 2932
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 2933
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2934
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 2935
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 2936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 2937
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 2938
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 2939
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 2941
    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 2942
    :try_start_0
    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2943
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    if-eqz p3, :cond_1

    .line 2946
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2952
    :cond_1
    :goto_0
    return-void

    .line 2943
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2947
    :catch_0
    move-exception v0

    .line 2948
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2949
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    goto :goto_0
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 8
    .param p1, "authenticatorType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 3233
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService;->access$3400(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v4

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 3235
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_2

    .line 3236
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3237
    :cond_0
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there is no authenticator for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bailing out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_1
    :goto_0
    return v2

    .line 3243
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3244
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3245
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3246
    const-string v4, "AccountManagerService"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3247
    :cond_3
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performing bindService to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_4
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService;->access$1300(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, p0, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3251
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3252
    :cond_5
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v2, v3

    .line 3258
    goto :goto_0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 2973
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2975
    monitor-exit v1

    .line 2987
    :goto_0
    return-void

    .line 2977
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2978
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 2980
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2985
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 2986
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    goto :goto_0

    .line 2977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 3019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3020
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1300(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3022
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    .prologue
    .line 3008
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3009
    :cond_0
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3012
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 3015
    :cond_2
    return-void
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 2991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2992
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 2993
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$3000(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3026
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 4

    .prologue
    .line 2955
    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2956
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getResponseAndClose(), Session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v1, :cond_2

    .line 2960
    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2961
    const-string v1, "AccountManagerService"

    const-string v2, "mResponse = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_1
    const/4 v0, 0x0

    .line 2968
    :goto_0
    return-object v0

    .line 2966
    :cond_2
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2967
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 3206
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 3207
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3208
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_4

    .line 3209
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3210
    :cond_0
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    :cond_2
    :goto_0
    return-void

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3217
    :cond_3
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3222
    :cond_5
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestContinued()V
    .locals 1

    .prologue
    .line 3201
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 3202
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 3075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 3076
    const/4 v13, 0x0

    .line 3077
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_4

    .line 3078
    const-string v23, "booleanResult"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 3080
    .local v14, "isSuccessfulConfirmCreds":Z
    const-string v23, "authAccount"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    const-string v23, "accountType"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/4 v15, 0x1

    .line 3086
    .local v15, "isSuccessfulUpdateCredsOrAddAccount":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    if-nez v14, :cond_0

    if-eqz v15, :cond_7

    :cond_0
    const/16 v18, 0x1

    .line 3088
    .local v18, "needUpdate":Z
    :goto_1
    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 3089
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v23 .. v25}, Lcom/android/server/accounts/AccountManagerService;->access$3100(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 3090
    .local v6, "accountPresent":Z
    if-eqz v18, :cond_2

    if-eqz v6, :cond_2

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v23, v0

    new-instance v24, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/accounts/AccountManagerService;->access$3200(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    .line 3093
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 3094
    const-wide/16 v16, -0x1

    .line 3095
    .local v16, "lastAuthenticatedTime":J
    if-eqz v6, :cond_3

    .line 3096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {v23 .. v23}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    const-string v24, "select last_password_entry_time_millis_epoch from accounts WHERE name=? AND type=?"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v16

    .line 3106
    :cond_3
    const-string v23, "lastAuthenticatedTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3111
    .end local v6    # "accountPresent":Z
    .end local v14    # "isSuccessfulConfirmCreds":Z
    .end local v15    # "isSuccessfulUpdateCredsOrAddAccount":Z
    .end local v16    # "lastAuthenticatedTime":J
    .end local v18    # "needUpdate":Z
    :cond_4
    if-eqz p1, :cond_9

    const-string v23, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .end local v13    # "intent":Landroid/content/Intent;
    check-cast v13, Landroid/content/Intent;

    .restart local v13    # "intent":Landroid/content/Intent;
    if-eqz v13, :cond_9

    .line 3114
    const/4 v9, 0x0

    .line 3115
    .local v9, "bGrantCredentialsIntent":Z
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    if-eqz v23, :cond_5

    const-class v23, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3118
    const/4 v9, 0x1

    .line 3120
    :cond_5
    if-nez v9, :cond_9

    .line 3128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3129
    .local v8, "authenticatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3131
    .local v10, "bid":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/accounts/AccountManagerService;->access$1300(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 3132
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 3133
    .local v20, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    .line 3134
    .local v22, "targetUid":I
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v23

    if-eqz v23, :cond_8

    .line 3136
    new-instance v23, Ljava/lang/SecurityException;

    const-string v24, "Activity to be started with KEY_INTENT must share Authenticator\'s signatures"

    invoke-direct/range {v23 .. v24}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3141
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v22    # "targetUid":I
    :catchall_0
    move-exception v23

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    .line 3080
    .end local v8    # "authenticatorUid":I
    .end local v9    # "bGrantCredentialsIntent":Z
    .end local v10    # "bid":J
    .restart local v14    # "isSuccessfulConfirmCreds":Z
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3086
    .restart local v15    # "isSuccessfulUpdateCredsOrAddAccount":Z
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 3141
    .end local v14    # "isSuccessfulConfirmCreds":Z
    .end local v15    # "isSuccessfulUpdateCredsOrAddAccount":Z
    .restart local v8    # "authenticatorUid":I
    .restart local v9    # "bGrantCredentialsIntent":Z
    .restart local v10    # "bid":J
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "targetUid":I
    :cond_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3147
    .end local v8    # "authenticatorUid":I
    .end local v9    # "bGrantCredentialsIntent":Z
    .end local v10    # "bid":J
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v22    # "targetUid":I
    :cond_9
    if-eqz p1, :cond_a

    const-string v23, "authtoken"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 3149
    const-string v23, "authAccount"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3150
    .local v5, "accountName":Ljava/lang/String;
    const-string v23, "accountType"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3151
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 3152
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v5, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    .local v4, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    invoke-static {v0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->access$3300(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 3158
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    if-eqz p1, :cond_e

    const-string v23, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    move-object/from16 v21, v0

    .line 3164
    .local v21, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_2
    if-eqz v21, :cond_d

    .line 3166
    if-nez p1, :cond_f

    .line 3167
    :try_start_1
    const-string v23, "AccountManagerService"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-nez v23, :cond_b

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 3168
    :cond_b
    const-string v23, "AccountManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " calling onError() on response "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_c
    const/16 v23, 0x5

    const-string v24, "null bundle returned"

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3197
    :cond_d
    :goto_3
    return-void

    .line 3162
    .end local v21    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v21

    .restart local v21    # "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_2

    .line 3174
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 3175
    const-string v23, "authtoken"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3177
    :cond_10
    const-string v23, "AccountManagerService"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-nez v23, :cond_11

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 3178
    :cond_11
    const-string v23, "AccountManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " calling onResult() on response "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    :cond_12
    const-string v23, "errorCode"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    if-lez v23, :cond_14

    if-nez v13, :cond_14

    .line 3184
    const-string v23, "errorCode"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    const-string v24, "errorMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 3190
    :catch_0
    move-exception v12

    .line 3192
    .local v12, "e":Landroid/os/RemoteException;
    const-string v23, "AccountManagerService"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-nez v23, :cond_13

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 3193
    :cond_13
    const-string v23, "AccountManagerService"

    const-string v24, "failure while notifying response"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 3187
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_14
    :try_start_3
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3030
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3032
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3037
    :goto_0
    return-void

    .line 3033
    :catch_0
    move-exception v0

    .line 3034
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    const-string v2, "remote exception"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3041
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3042
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3043
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 3045
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "disconnected"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3054
    :cond_0
    :goto_0
    return-void

    .line 3047
    :catch_0
    move-exception v0

    .line 3048
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3049
    :cond_1
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTimedOut()V
    .locals 4

    .prologue
    .line 3059
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3060
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 3062
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "timeout"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 3064
    :catch_0
    move-exception v0

    .line 3065
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/accounts/AccountManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3066
    :cond_1
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2996
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 3000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
