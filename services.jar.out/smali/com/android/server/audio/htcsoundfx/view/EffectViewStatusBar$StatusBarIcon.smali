.class public final Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
.super Ljava/lang/Object;
.source "EffectViewStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatusBarIcon"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public iconId:I

.field public iconLevel:I

.field public slot:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->this$0:Lcom/android/server/audio/htcsoundfx/view/EffectViewStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
