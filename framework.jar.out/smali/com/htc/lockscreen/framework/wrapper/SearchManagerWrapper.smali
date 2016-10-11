.class public Lcom/htc/lockscreen/framework/wrapper/SearchManagerWrapper;
.super Ljava/lang/Object;
.source "SearchManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssistIntent(Landroid/app/SearchManager;Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "searchMng"    # Landroid/app/SearchManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inclContext"    # Z

    .prologue
    .line 15
    invoke-virtual {p0, p2}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
