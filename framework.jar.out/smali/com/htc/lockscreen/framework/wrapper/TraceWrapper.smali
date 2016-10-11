.class public Lcom/htc/lockscreen/framework/wrapper/TraceWrapper;
.super Ljava/lang/Object;
.source "TraceWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceWrapper"

.field public static final TRACE_TAG_VIEW:J = 0x8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncTraceBegin(JLjava/lang/String;I)V
    .locals 0
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 11
    return-void
.end method

.method public static asyncTraceEnd(JLjava/lang/String;I)V
    .locals 0
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15
    return-void
.end method
