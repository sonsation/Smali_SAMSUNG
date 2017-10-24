.class Lcom/samsung/android/settings/localepicker/LocaleDragCell;
.super Landroid/widget/RelativeLayout;
.source "LocaleDragCell.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mLabel:Landroid/widget/TextView;

.field private mLocalized:Landroid/widget/TextView;

.field private mMiniLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f110430

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f11046a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f110469

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f1100f4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    .line 43
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    return-void
.end method

.method public setDragHandlerPadding(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 99
    .local v1, "endPadding":I
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 100
    add-int v1, v2, v3

    .line 104
    :cond_0
    invoke-virtual {p0, v5, v5, v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setPaddingRelative(IIII)V

    .line 96
    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "labelText"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 76
    return-void
.end method

.method public setLocalized(Z)V
    .locals 2
    .param p1, "localized"    # Z

    .prologue
    .line 84
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 83
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMiniLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "miniLabelText"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 71
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 2
    .param p1, "showCheckbox"    # Z

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 51
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShowMiniLabel(Z)V
    .locals 2
    .param p1, "showMiniLabel"    # Z

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 65
    return-void

    .line 66
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
