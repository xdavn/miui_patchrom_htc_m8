.class Lcom/android/server/AppOpsService$HintDialogData;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HintDialogData"
.end annotation


# instance fields
.field allow:Z

.field final code:I

.field consumed:Z

.field dialog:Lcom/android/server/AppOpsService$HintDialog;

.field final info:Landroid/content/pm/ApplicationInfo;

.field requestCount:I

.field final uid:I

.field updating:Z


# direct methods
.method constructor <init>(IILandroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppOpsService$HintDialogData;->requestCount:I

    .line 2065
    iput p1, p0, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    .line 2066
    iput p2, p0, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    .line 2067
    iput-object p3, p0, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    .line 2068
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2072
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
