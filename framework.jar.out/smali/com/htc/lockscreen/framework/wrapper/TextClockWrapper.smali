.class public Lcom/htc/lockscreen/framework/wrapper/TextClockWrapper;
.super Ljava/lang/Object;
.source "TextClockWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextClockReflection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setShowCurrentUserTime(Landroid/widget/TextClock;Z)V
    .locals 0
    .param p0, "clock"    # Landroid/widget/TextClock;
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 20
    :cond_0
    return-void
.end method
