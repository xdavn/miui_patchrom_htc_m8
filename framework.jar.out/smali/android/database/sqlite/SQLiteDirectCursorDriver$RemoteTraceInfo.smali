.class final Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDirectCursorDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteTraceInfo"
.end annotation


# instance fields
.field final mRemotePid:I

.field final mRemoteTid:I

.field final mRemoteTrace:[Ljava/lang/String;


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "rPid"    # I
    .param p2, "rTid"    # I
    .param p3, "trace"    # [Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemotePid:I

    .line 167
    iput p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTid:I

    .line 168
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTrace:[Ljava/lang/String;

    .line 169
    return-void
.end method
