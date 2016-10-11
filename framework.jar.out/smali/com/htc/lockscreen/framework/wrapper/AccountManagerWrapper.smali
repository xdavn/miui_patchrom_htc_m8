.class public Lcom/htc/lockscreen/framework/wrapper/AccountManagerWrapper;
.super Ljava/lang/Object;
.source "AccountManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManagerWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmCredentialsAsUser(Landroid/accounts/AccountManager;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 35
    .local v0, "result":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual/range {p0 .. p6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method public static getAccountsByTypeAsUser(Landroid/accounts/AccountManager;Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .locals 1
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "result":[Landroid/accounts/Account;
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 24
    :cond_0
    return-object v0
.end method
