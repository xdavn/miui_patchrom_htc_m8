.class public Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "AuthenticationCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 60
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;->onAuthenticationAcquired(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 25
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;->onAuthenticationFailed()V

    .line 28
    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 33
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;->onAuthenticationSucceeded(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method
