.class public interface abstract Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper$HtcAuthenticationCallbackInvokeHandler;
.super Ljava/lang/Object;
.source "AuthenticationCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/wrapper/AuthenticationCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HtcAuthenticationCallbackInvokeHandler"
.end annotation


# virtual methods
.method public abstract onAuthenticationAcquired(I)V
.end method

.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded(Ljava/lang/Object;)V
.end method
