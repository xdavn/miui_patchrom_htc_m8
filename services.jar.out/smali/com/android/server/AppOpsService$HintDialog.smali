.class Lcom/android/server/AppOpsService$HintDialog;
.super Landroid/app/AlertDialog;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintDialog"
.end annotation


# static fields
.field static final BUTTON_ALLOW:I = -0x1

.field static final BUTTON_DENY:I = -0x2


# instance fields
.field final mData:Lcom/android/server/AppOpsService$HintDialogData;

.field mDontHintAgain:Z

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
    .locals 9
    .param p2, "data"    # Lcom/android/server/AppOpsService$HintDialogData;

    .prologue
    const/high16 v8, 0x20000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2084
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    .line 2085
    iget-object v3, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v4, 0x1030239

    invoke-direct {p0, v3, v4}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2082
    iput-boolean v7, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    .line 2086
    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x1030000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2088
    .local v2, "panel":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/server/AppOpsService$HintDialog;->getAccessMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/server/AppOpsService$HintDialog;->getConfigMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2090
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2092
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const v3, 0x10700f6

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 2093
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2094
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2095
    iget-boolean v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2096
    new-instance v3, Lcom/android/server/AppOpsService$HintDialog$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/AppOpsService$HintDialog$1;-><init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2105
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService$HintDialog;->setView(Landroid/view/View;)V

    .line 2106
    const/4 v3, -0x1

    iget-object v4, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v5, 0x10700f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/server/AppOpsService$HintDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2107
    const/4 v3, -0x2

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/android/server/AppOpsService$HintDialog;->getDenyButtonString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/server/AppOpsService$HintDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2108
    invoke-virtual {p0, p0}, Lcom/android/server/AppOpsService$HintDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2109
    invoke-virtual {p0, v7}, Lcom/android/server/AppOpsService$HintDialog;->setCancelable(Z)V

    .line 2110
    invoke-virtual {p0, v6}, Lcom/android/server/AppOpsService$HintDialog;->setCanceledOnTouchOutside(Z)V

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2112
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppOpsHint for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v4, v4, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 2118
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AppOpsService$HintDialog;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;
    .param p1, "x1"    # I

    .prologue
    .line 2076
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$HintDialog;->getDenyButtonString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccessMessage()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2185
    const/4 v5, 0x0

    .line 2186
    .local v5, "stringId":I
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v6, v6, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    sparse-switch v6, :sswitch_data_0

    .line 2230
    :goto_0
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v7, v7, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2231
    .local v0, "appLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 2232
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v6, v6, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2234
    :cond_0
    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do you want to grant %s permission to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v7, v7, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2236
    .local v3, "fmt":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/text/SpannableString;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2238
    .local v4, "message":Landroid/text/SpannableString;
    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2239
    .local v2, "appLabelStart":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2241
    .local v1, "appLabelLength":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x22000000

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v2, v1

    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2243
    return-object v4

    .line 2188
    .end local v0    # "appLabel":Ljava/lang/CharSequence;
    .end local v1    # "appLabelLength":I
    .end local v2    # "appLabelStart":I
    .end local v3    # "fmt":Ljava/lang/String;
    .end local v4    # "message":Landroid/text/SpannableString;
    :sswitch_0
    const v5, 0x10700f7

    .line 2189
    goto :goto_0

    .line 2191
    :sswitch_1
    const v5, 0x10700f8

    .line 2192
    goto :goto_0

    .line 2194
    :sswitch_2
    const v5, 0x10700f9

    .line 2195
    goto :goto_0

    .line 2197
    :sswitch_3
    const v5, 0x10700fa

    .line 2198
    goto :goto_0

    .line 2200
    :sswitch_4
    const v5, 0x10700fb

    .line 2201
    goto :goto_0

    .line 2203
    :sswitch_5
    const v5, 0x1070104

    .line 2204
    goto :goto_0

    .line 2206
    :sswitch_6
    const v5, 0x10700fc

    .line 2207
    goto :goto_0

    .line 2209
    :sswitch_7
    const v5, 0x10700fd

    .line 2210
    goto :goto_0

    .line 2212
    :sswitch_8
    const v5, 0x10700fe

    .line 2213
    goto/16 :goto_0

    .line 2215
    :sswitch_9
    const v5, 0x1070102

    .line 2216
    goto/16 :goto_0

    .line 2218
    :sswitch_a
    const v5, 0x1070103

    .line 2219
    goto/16 :goto_0

    .line 2221
    :sswitch_b
    const v5, 0x10700ff

    .line 2222
    goto/16 :goto_0

    .line 2224
    :sswitch_c
    const v5, 0x1070100

    .line 2225
    goto/16 :goto_0

    .line 2227
    :sswitch_d
    const v5, 0x1070101

    goto/16 :goto_0

    .line 2234
    .restart local v0    # "appLabel":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x14 -> :sswitch_6
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
        0x3e8 -> :sswitch_b
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_d
    .end sparse-switch
.end method

.method private getConfigMessage()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 2170
    const-string v0, "com.htc.securitycenter"

    .line 2171
    .local v0, "SC_PKG_NAME":Ljava/lang/String;
    const v2, 0x1070106

    .line 2173
    .local v2, "configStrId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2174
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "com.htc.securitycenter"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2175
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2176
    .local v1, "appName":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2181
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v6

    .line 2177
    :catch_0
    move-exception v3

    .line 2178
    .local v3, "e":Ljava/lang/Exception;
    const v2, 0x1070105

    .line 2179
    const-string v6, "AppOps"

    const-string v7, "com.htc.securitycenter not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getDenyButtonString(I)Ljava/lang/String;
    .locals 5
    .param p1, "countDown"    # I

    .prologue
    .line 2257
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v4, 0x10700f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 3
    .param p1, "fromTimeout"    # Z

    .prologue
    .line 2247
    # getter for: Lcom/android/server/AppOpsService;->DEBUG_HINT:Z
    invoke-static {}, Lcom/android/server/AppOpsService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    const-string v1, "AppOps"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismiss "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ft="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_0
    if-nez p1, :cond_1

    .line 2251
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2253
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->dismiss()V

    .line 2254
    return-void

    .line 2248
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    .line 2128
    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppOpsService$HintDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 2129
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "btn"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 2122
    iput-boolean p2, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    .line 2123
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2133
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    move v0, v2

    .line 2134
    .local v0, "allow":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    .line 2135
    .local v1, "noAgain":Z
    # getter for: Lcom/android/server/AppOpsService;->DEBUG_HINT:Z
    invoke-static {}, Lcom/android/server/AppOpsService;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2136
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Click hint allow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v6, v6, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v6, v6, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " noAgain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_0
    if-eqz v1, :cond_1

    .line 2140
    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mWaitingList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AppOpsService;->access$300(Lcom/android/server/AppOpsService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 2141
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/AppOpsService$HintDialogData;->updating:Z

    .line 2142
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/AppOpsService$HintDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/AppOpsService$HintDialog$2;-><init>(Lcom/android/server/AppOpsService$HintDialog;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2162
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    monitor-enter v3

    .line 2163
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iput-boolean v0, v2, Lcom/android/server/AppOpsService$HintDialogData;->allow:Z

    .line 2164
    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/AppOpsService$HintDialogData;->consumed:Z

    .line 2165
    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2166
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2167
    return-void

    .end local v0    # "allow":Z
    .end local v1    # "noAgain":Z
    :cond_2
    move v0, v3

    .line 2133
    goto/16 :goto_0

    .restart local v0    # "allow":Z
    .restart local v1    # "noAgain":Z
    :cond_3
    move v2, v3

    .line 2136
    goto :goto_1

    .line 2142
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2166
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
