.class public Lcom/htc/server/report/error/HtcErrorReportAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcErrorReportAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/report/error/HtcErrorReportAmsListener$1;,
        Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;
    }
.end annotation


# instance fields
.field private final mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

.field private final mErrController:Lcom/htc/server/report/error/ErrorReportController;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 29
    invoke-static {}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isSenseFeatureROM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 32
    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 35
    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;-><init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener;Lcom/htc/server/report/error/HtcErrorReportAmsListener$1;)V

    aput-object v2, v0, v1

    .line 38
    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/htc/server/report/error/ErrorReportController;

    invoke-direct {v0}, Lcom/htc/server/report/error/ErrorReportController;-><init>()V

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    goto :goto_0

    .line 41
    :cond_1
    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    goto :goto_0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 5

    .prologue
    .line 59
    iget-object v4, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    if-eqz v4, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, "arr$":[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 61
    .local v1, "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "arr$":[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v1    # "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iget-object v4, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    if-eqz v4, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, "arr$":[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 49
    .local v1, "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v1, p1, p2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "arr$":[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v1    # "checker":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    invoke-virtual {v4, p2}, Lcom/htc/server/report/error/ErrorReportController;->startWatching(Landroid/content/Context;)V

    .line 55
    :cond_1
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener;->mErrController:Lcom/htc/server/report/error/ErrorReportController;

    invoke-virtual {v0}, Lcom/htc/server/report/error/ErrorReportController;->stopWatching()V

    .line 69
    :cond_0
    return-void
.end method
