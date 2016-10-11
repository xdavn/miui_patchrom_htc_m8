.class Lcom/htc/widget/ContainerClockView$PathClassInfo;
.super Ljava/lang/Object;
.source "ContainerClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ContainerClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathClassInfo"
.end annotation


# instance fields
.field public mClassLoader:Ldalvik/system/PathClassLoader;

.field final synthetic this$0:Lcom/htc/widget/ContainerClockView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/ContainerClockView;Ljava/lang/String;)V
    .locals 2
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/widget/ContainerClockView$PathClassInfo;->this$0:Lcom/htc/widget/ContainerClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/htc/widget/ContainerClockView$PathClassInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 150
    return-void
.end method
