.class abstract Lcom/android/server/policy/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 955
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 956
    iput p2, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 957
    iput p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    .line 958
    iput p4, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 959
    iput p5, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 960
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1043
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1044
    return-void

    .line 1043
    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->willCreate()V

    .line 979
    const v5, 0x1090062

    .line 980
    .local v5, "itemLayoutResID":I
    const v4, 0x1020006

    .line 981
    .local v4, "iconViewResID":I
    const v7, 0x102000b

    .line 982
    .local v7, "messageViewResID":I
    const v10, 0x102032b

    .line 984
    .local v10, "statusViewResID":I
    # getter for: Lcom/android/server/policy/GlobalActions;->sSenseVersion:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1300()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 985
    const-string v12, "layout.phone_options_item"

    # invokes: Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I
    invoke-static {v12, v5}, Lcom/android/server/policy/GlobalActions;->access$1400(Ljava/lang/String;I)I

    move-result v5

    .line 986
    const-string v12, "id.icon"

    # invokes: Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I
    invoke-static {v12, v4}, Lcom/android/server/policy/GlobalActions;->access$1400(Ljava/lang/String;I)I

    move-result v4

    .line 987
    const-string v12, "id.message"

    # invokes: Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I
    invoke-static {v12, v7}, Lcom/android/server/policy/GlobalActions;->access$1400(Ljava/lang/String;I)I

    move-result v7

    .line 988
    const-string v12, "id.status"

    # invokes: Lcom/android/server/policy/GlobalActions;->getCustomResourceID(Ljava/lang/String;I)I
    invoke-static {v12, v10}, Lcom/android/server/policy/GlobalActions;->access$1400(Ljava/lang/String;I)I

    move-result v10

    .line 992
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 994
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 995
    .local v3, "icon":Landroid/widget/ImageView;
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 996
    .local v6, "messageView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 997
    .local v9, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v2

    .line 999
    .local v2, "enabled":Z
    if-eqz v6, :cond_1

    .line 1000
    iget v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    .line 1001
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1004
    :cond_1
    iget-object v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v13, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v12, v13, :cond_2

    iget-object v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v13, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v12, v13, :cond_5

    :cond_2
    const/4 v8, 0x1

    .line 1005
    .local v8, "on":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 1006
    if-eqz v8, :cond_6

    iget v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {p1, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1011
    :cond_3
    if-eqz v9, :cond_4

    .line 1012
    if-eqz v8, :cond_7

    iget v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 1013
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1016
    :cond_4
    invoke-virtual {v11, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1018
    return-object v11

    .line 1004
    .end local v8    # "on":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 1006
    .restart local v8    # "on":Z
    :cond_6
    iget v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 1012
    :cond_7
    iget v12, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 971
    iget v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1028
    .local v0, "nowOn":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 1029
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 1027
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1050
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method
