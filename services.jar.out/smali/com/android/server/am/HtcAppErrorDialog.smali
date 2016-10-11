.class Lcom/android/server/am/HtcAppErrorDialog;
.super Landroid/app/Dialog;
.source "HtcAppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_AUTO_REPORT:I = 0x2

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcAppErrorDialog"


# instance fields
.field private mDismissMsgId:I

.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mWindowTitle:Ljava/lang/String;

.field private final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v14, Lcom/android/server/am/HtcAppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/am/HtcAppErrorDialog$1;-><init>(Lcom/android/server/am/HtcAppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 53
    .local v9, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v14, "com.htc.feedback"

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 59
    .local v12, "res":Landroid/content/res/Resources;
    :goto_0
    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;I)Z

    move-result v2

    .line 61
    .local v2, "autoSend":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 62
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 63
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 64
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Application Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    .line 65
    new-instance v14, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    .line 67
    move-object/from16 v0, p4

    iget-boolean v14, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v14, :cond_2

    .line 68
    const/16 v14, 0x7da

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    .line 73
    :goto_1
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "name":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    .line 79
    :goto_2
    const/4 v8, 0x0

    .local v8, "negativeBtnName":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .local v11, "positiveBtnName":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 80
    .local v3, "dlgMsg":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "negativeBtnMsgId":I
    const/4 v10, 0x0

    .line 81
    .local v10, "positiveBtnMsgId":I
    const/4 v5, 0x0

    .line 82
    .local v5, "hasTwoBtns":Z
    const/4 v13, 0x0

    .line 83
    .local v13, "resId":I
    if-eqz v2, :cond_4

    const/4 v14, 0x2

    :goto_3
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDismissMsgId:I

    .line 86
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v14, v15}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_6

    const-string v14, "com.htc.feedback"

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 90
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDismissMsgId:I

    .line 91
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 93
    const v14, 0x1040359

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 102
    :goto_4
    const v14, 0x1040360

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 103
    const/4 v10, 0x0

    .line 126
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const v15, 0x1040358

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v14, v3}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v14, v11, v10}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    .line 131
    if-eqz v5, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v14, v8, v7}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    .line 135
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDismissMsgId:I

    const-wide/32 v16, 0x493e0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/am/HtcErrorDialogBase;->sendMessageDelayed(IJ)V

    .line 137
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :goto_6
    return-void

    .line 54
    .end local v2    # "autoSend":Z
    .end local v3    # "dlgMsg":Ljava/lang/CharSequence;
    .end local v5    # "hasTwoBtns":Z
    .end local v6    # "name":Ljava/lang/CharSequence;
    .end local v7    # "negativeBtnMsgId":I
    .end local v8    # "negativeBtnName":Ljava/lang/CharSequence;
    .end local v10    # "positiveBtnMsgId":I
    .end local v11    # "positiveBtnName":Ljava/lang/CharSequence;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "resId":I
    :catch_0
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "HtcAppErrorDialog"

    const-string v15, "Exception when getResourcesForApplicationAsUser: "

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .restart local v12    # "res":Landroid/content/res/Resources;
    goto/16 :goto_0

    .line 70
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "autoSend":Z
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    goto/16 :goto_1

    .line 76
    :cond_3
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .restart local v6    # "name":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 83
    .restart local v3    # "dlgMsg":Ljava/lang/CharSequence;
    .restart local v5    # "hasTwoBtns":Z
    .restart local v7    # "negativeBtnMsgId":I
    .restart local v8    # "negativeBtnName":Ljava/lang/CharSequence;
    .restart local v10    # "positiveBtnMsgId":I
    .restart local v11    # "positiveBtnName":Ljava/lang/CharSequence;
    .restart local v13    # "resId":I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 97
    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 98
    const v14, 0x104035a

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 104
    :cond_6
    if-eqz v2, :cond_7

    .line 105
    const-string v14, "msg_app_crash_auto"

    const-string v15, "string"

    const-string v16, "com.htc.feedback"

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 106
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v14, "btn_close"

    const-string v15, "string"

    const-string v16, "com.htc.feedback"

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 108
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 109
    const/4 v10, 0x2

    goto/16 :goto_5

    .line 111
    :cond_7
    const-string v14, "msg_app_crash"

    const-string v15, "string"

    const-string v16, "com.htc.feedback"

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 112
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v14, "btn_dont_send"

    const-string v15, "string"

    const-string v16, "com.htc.feedback"

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 114
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 115
    const/4 v10, 0x0

    .line 118
    const-string v14, "btn_send_report"

    const-string v15, "string"

    const-string v16, "com.htc.feedback"

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 119
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 120
    const/4 v7, 0x1

    .line 123
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 138
    :catch_1
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDismissMsgId:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 140
    const-string v14, "HtcAppErrorDialog"

    const-string v15, "Constructor()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAppErrorDialog;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAppErrorDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/HtcAppErrorDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDismissMsgId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/HtcErrorDialogBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    return-object v0
.end method

.method private generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 18
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 198
    const/4 v8, 0x0

    .line 200
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 201
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    if-nez v12, :cond_0

    .line 202
    const/4 v12, 0x0

    monitor-exit v13

    .line 258
    :goto_0
    return-object v12

    .line 204
    :cond_0
    const/4 v3, 0x0

    .line 205
    .local v3, "dropboxTag":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 206
    .local v4, "entryTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "dropboxTag"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "dropboxTag"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dropboxTag":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 208
    .restart local v3    # "dropboxTag":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "entryTime"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "entryTime"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 210
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 211
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_0

    .line 259
    .end local v3    # "dropboxTag":Ljava/lang/String;
    .end local v4    # "entryTime":J
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 212
    .restart local v3    # "dropboxTag":Ljava/lang/String;
    .restart local v4    # "entryTime":J
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-gtz v12, :cond_4

    .line 213
    const/4 v12, 0x0

    :try_start_1
    monitor-exit v13

    goto :goto_0

    .line 215
    :cond_4
    const/4 v11, 0x0

    .line 216
    .local v11, "tombstoneName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "tombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "tombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "tombstoneName":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 218
    .restart local v11    # "tombstoneName":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    .line 219
    .local v9, "mediaServerTombstoneName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "mediaServerTombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "mediaServerTombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mediaServerTombstoneName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 221
    .restart local v9    # "mediaServerTombstoneName":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .line 222
    .local v7, "errorReportKey":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportKey"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [B

    if-eqz v12, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportKey"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v7, v0

    .line 224
    :cond_7
    const/4 v6, 0x0

    .line 225
    .local v6, "errorReportIv":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportIv"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [B

    if-eqz v12, :cond_8

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportIv"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v6, v0

    .line 227
    :cond_8
    const/4 v10, 0x0

    .line 228
    .local v10, "oomPid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "oomPid"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_9

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "oomPid"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 232
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 235
    new-instance v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 236
    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v12, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 241
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v8

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    const/4 v14, 0x0

    iput-object v14, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 244
    if-eqz v8, :cond_e

    .line 245
    const-string v12, "dropboxTag"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 247
    const-string v12, "tombstoneName"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 249
    const-string v12, "mediaServerTombstoneName"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_c
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    .line 251
    const-string v12, "errorReportKey"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 252
    const-string v12, "errorReportIv"

    invoke-virtual {v8, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 254
    :cond_d
    if-lez v10, :cond_e

    .line 255
    const-string v12, "oomPid"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    :cond_e
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    .line 152
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    const/4 v3, 0x0

    const/16 v4, 0x110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;III)V

    .line 147
    :cond_0
    return-void
.end method
