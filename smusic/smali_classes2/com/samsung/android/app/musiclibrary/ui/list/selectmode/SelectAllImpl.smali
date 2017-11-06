.class public Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;
.super Ljava/lang/Object;
.source "SelectAllImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBlurUi:Z

.field private final mSelectAllTextResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "selectAllTextResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;IZ)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "selectAllTextResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "blurUi"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 33
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mSelectAllTextResId:I

    .line 34
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mBlurUi:Z

    .line 35
    return-void
.end method


# virtual methods
.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 8

    .prologue
    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;-><init>()V

    .line 40
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$layout;->select_all_action_bar:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    .line 43
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 44
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    .line 45
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_checkbox_below_text:I

    .line 46
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    .line 47
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    .line 49
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$dimen;->action_bar_checkbox_layout_padding_top_round:I

    .line 52
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    .line 53
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    sget v7, Lcom/samsung/android/app/musiclibrary/R$dimen;->action_bar_checkbox_layout_padding_bottom_round:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 51
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 55
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$drawable;->checkbox_background_round:I

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 57
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_dummy:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "rippleView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mBlurUi:Z

    if-eqz v3, :cond_2

    .line 59
    sget v3, Lcom/samsung/android/app/musiclibrary/R$drawable;->ripple_compound_button_oval:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "rippleView":Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mBlurUi:Z

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->blur_text:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 67
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->blur_text:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 68
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->blur_checkbox_background:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setCheckBoxTint(Landroid/widget/CheckBox;I)V

    .line 70
    :cond_1
    return-object v0

    .line 61
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "rippleView":Landroid/view/View;
    :cond_2
    sget v3, Lcom/samsung/android/app/musiclibrary/R$drawable;->ripple_compound_button_oval_winset:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setCheckBoxTint(Landroid/widget/CheckBox;I)V
    .locals 5
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    new-array v1, v3, [[I

    new-array v2, v4, [I

    aput-object v2, v1, v4

    .line 100
    .local v1, "states":[[I
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v4

    .line 101
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    return-void
.end method

.method public setTextColor(Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 95
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    return-void
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 77
    if-nez p2, :cond_1

    .line 78
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mSelectAllTextResId:I

    if-lez v1, :cond_0

    .line 79
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->mSelectAllTextResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getSelectAllDescription(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 81
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method
