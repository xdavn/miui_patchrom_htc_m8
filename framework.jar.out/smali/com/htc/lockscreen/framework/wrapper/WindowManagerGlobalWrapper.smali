.class public Lcom/htc/lockscreen/framework/wrapper/WindowManagerGlobalWrapper;
.super Ljava/lang/Object;
.source "WindowManagerGlobalWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManagerGlobalWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trimMemory(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 10
    return-void
.end method
