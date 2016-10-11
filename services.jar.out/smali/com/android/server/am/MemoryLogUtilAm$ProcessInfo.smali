.class Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryLogUtilAm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInfo"
.end annotation


# instance fields
.field public mAdjType:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPid:I

.field public mProviderInfo:Ljava/lang/String;

.field public mServiceinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "serviceInfo"    # Ljava/lang/String;
    .param p5, "providerInfo"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput p1, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mPid:I

    .line 1011
    iput-object p2, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mName:Ljava/lang/String;

    .line 1012
    iput-object p3, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mAdjType:Ljava/lang/String;

    .line 1013
    iput-object p4, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mServiceinfo:Ljava/lang/String;

    .line 1014
    iput-object p5, p0, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mProviderInfo:Ljava/lang/String;

    .line 1015
    return-void
.end method
