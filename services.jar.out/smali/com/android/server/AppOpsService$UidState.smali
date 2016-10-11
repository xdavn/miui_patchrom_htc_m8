.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidState"
.end annotation


# instance fields
.field public opModes:Landroid/util/SparseIntArray;

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 125
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 129
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 130
    return-void
.end method

.method getMode(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    const/16 v1, -0x64

    .line 134
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 135
    .local v0, "ops":Landroid/util/SparseIntArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHint(I)Z
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$UidState;->getMode(I)I

    move-result v0

    .line 140
    .local v0, "mode":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    .line 144
    invoke-static {p1}, Landroid/app/AppOpsManager;->opDefaultHint(I)Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isHintChangedToAllowed(I)Z
    .locals 1
    .param p1, "op"    # I

    .prologue
    .line 150
    invoke-static {p1}, Landroid/app/AppOpsManager;->opDefaultHint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$UidState;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
