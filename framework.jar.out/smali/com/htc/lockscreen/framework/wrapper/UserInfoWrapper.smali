.class public Lcom/htc/lockscreen/framework/wrapper/UserInfoWrapper;
.super Ljava/lang/Object;
.source "UserInfoWrapper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "UserInfoWrapper"

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/UserInfoWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserInfo(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 13
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isGuest(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "userInfo"    # Ljava/lang/Object;

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "isGust":Z
    instance-of v1, p0, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_0

    .line 19
    check-cast p0, Landroid/content/pm/UserInfo;

    .end local p0    # "userInfo":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    .line 21
    :cond_0
    return v0
.end method
