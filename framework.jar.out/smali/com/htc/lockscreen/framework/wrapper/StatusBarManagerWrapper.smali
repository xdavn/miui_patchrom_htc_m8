.class public Lcom/htc/lockscreen/framework/wrapper/StatusBarManagerWrapper;
.super Ljava/lang/Object;
.source "StatusBarManagerWrapper.java"


# static fields
.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000


# instance fields
.field public mStatusBarMng:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/StatusBarManagerWrapper;->mStatusBarMng:Landroid/app/StatusBarManager;

    .line 22
    return-void
.end method


# virtual methods
.method public disable(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/StatusBarManagerWrapper;->mStatusBarMng:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 26
    return-void
.end method
