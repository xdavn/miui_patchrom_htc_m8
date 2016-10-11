.class public Lcom/htc/lockscreen/framework/wrapper/TrustManagerWrapper;
.super Ljava/lang/Object;
.source "TrustManagerWrapper.java"


# instance fields
.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "trust"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/TrustManagerWrapper;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 10
    return-void
.end method


# virtual methods
.method public hasUserAuthenticatedSinceBoot(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/TrustManagerWrapper;->mTrustManager:Landroid/app/trust/TrustManager;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/TrustManagerWrapper;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->hasUserAuthenticatedSinceBoot(I)Z

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportKeyguardShowingChanged()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/TrustManagerWrapper;->mTrustManager:Landroid/app/trust/TrustManager;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/TrustManagerWrapper;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 16
    :cond_0
    return-void
.end method
