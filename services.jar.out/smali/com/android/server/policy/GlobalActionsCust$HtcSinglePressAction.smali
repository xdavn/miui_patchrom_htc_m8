.class public abstract Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActionsCust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActionsCust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HtcSinglePressAction"
.end annotation


# instance fields
.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I
    .param p3, "statusResId"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 170
    iput p3, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    .line 171
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    .line 166
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;I)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "statusResId"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(ILjava/lang/CharSequence;)V

    .line 176
    iput p3, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    .line 177
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "status":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const v1, 0x1030001

    .line 197
    .local v1, "layout":I
    :goto_0
    invoke-virtual {p4, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 198
    .local v5, "v":Landroid/view/View;
    const/high16 v6, 0x1090000

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 199
    .local v0, "icon":Landroid/widget/ImageView;
    const v6, 0x1090001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 200
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x1090002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 203
    .local v4, "statusView":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    iget v6, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    if-eqz v6, :cond_0

    .line 204
    iget v6, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 205
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 211
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getMessage()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_2
    return-object v5

    .line 193
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "layout":I
    .end local v2    # "messageView":Landroid/widget/TextView;
    .end local v4    # "statusView":Landroid/widget/TextView;
    .end local v5    # "v":Landroid/view/View;
    :cond_3
    const v1, 0x1030002

    goto :goto_0

    .line 216
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "layout":I
    .restart local v2    # "messageView":Landroid/widget/TextView;
    .restart local v4    # "statusView":Landroid/widget/TextView;
    .restart local v5    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getIconResId()I

    move-result v6

    if-eqz v6, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getIconResId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 223
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->getMessageResId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public bridge synthetic getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/GlobalActionsCust$HtcSinglePressAction;->mStatusResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic isEnabled()Z
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method
