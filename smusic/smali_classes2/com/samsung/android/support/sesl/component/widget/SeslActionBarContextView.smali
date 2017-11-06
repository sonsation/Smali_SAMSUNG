.class public Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;
.source "SeslActionBarContextView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mMaxFontScale:F

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMaxFontScale:F

    .line 75
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode_android_titleTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleStyleRes:I

    .line 80
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode_android_subtitleTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleStyleRes:I

    .line 83
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode_android_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mContentHeight:I

    .line 86
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode_seslCloseItemLayout:I

    sget v2, Lcom/samsung/android/support/sesl/R$layout;->sesl_action_mode_close_item:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCloseItemLayout:I

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 154
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_action_bar_title_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 156
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/samsung/android/support/sesl/R$id;->action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/samsung/android/support/sesl/R$id;->action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 158
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    :cond_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 166
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 170
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 171
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->addView(Landroid/view/View;)V

    .line 176
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 169
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 170
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 171
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->killMode()V

    .line 214
    :cond_0
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 255
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 6
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .prologue
    .line 179
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    if-nez v4, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 181
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    .line 182
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->addView(Landroid/view/View;)V

    .line 187
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    sget v5, Lcom/samsung/android/support/sesl/R$id;->action_mode_close_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 195
    .local v3, "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v4, :cond_1

    .line 196
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->dismissPopupMenus()Z

    .line 198
    :cond_1
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 199
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setReserveOverflow(Z)V

    .line 201
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 203
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 204
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 205
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void

    .line 183
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->removeAllViews()V

    .line 218
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    .line 219
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 220
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode:[I

    const v5, 0x1010394

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMode_android_height:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 99
    .local v0, "height":I
    if-ltz v0, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setContentHeight(I)V

    .line 102
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    .line 110
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideSubMenus()Z

    .line 112
    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 382
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 383
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 384
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 385
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 387
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 389
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 390
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 391
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->next(IIZ)I

    move-result v2

    .line 392
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 393
    invoke-static {v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->next(IIZ)I

    move-result v2

    .line 396
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 401
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 404
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 406
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_3

    .line 407
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 409
    :cond_3
    return-void

    .line 383
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 389
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 390
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 404
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 407
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 260
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 261
    .local v27, "widthMode":I
    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 266
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 267
    .local v14, "heightMode":I
    if-nez v14, :cond_1

    .line 268
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 272
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 274
    .local v6, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    if-lez v28, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mContentHeight:I

    move/from16 v17, v0

    .line 277
    .local v17, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingBottom()I

    move-result v29

    add-int v26, v28, v29

    .line 278
    .local v26, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingLeft()I

    move-result v28

    sub-int v28, v6, v28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getPaddingRight()I

    move-result v29

    sub-int v4, v28, v29

    .line 279
    .local v4, "availableWidth":I
    sub-int v13, v17, v26

    .line 280
    .local v13, "height":I
    const/high16 v28, -0x80000000

    move/from16 v0, v28

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 282
    .local v5, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 285
    .local v16, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    sub-int v4, v4, v28

    .line 288
    .end local v16    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 293
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleStyleRes:I

    move/from16 v29, v0

    sget-object v30, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance:[I

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 297
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v28, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textSize:I

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v25

    .line 298
    .local v25, "value":Landroid/util/TypedValue;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v20

    .line 301
    .local v20, "textSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget v12, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 304
    .local v12, "fontScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMaxFontScale:F

    move/from16 v28, v0

    cmpl-float v28, v12, v28

    if-lez v28, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mMaxFontScale:F

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    mul-float v30, v20, v12

    invoke-virtual/range {v28 .. v30}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "fontScale":F
    .end local v20    # "textSize":F
    .end local v25    # "value":Landroid/util/TypedValue;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 316
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_7

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getLayoutDirection()I

    move-result v28

    if-nez v28, :cond_f

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/samsung/android/support/sesl/R$dimen;->sesl_toolbar_content_inset:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 323
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_8

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 327
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getLayoutDirection()I

    move-result v28

    if-nez v28, :cond_10

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/samsung/android/support/sesl/R$dimen;->sesl_toolbar_content_inset:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 332
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleOptional:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 337
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 338
    .local v23, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    .line 340
    .local v22, "titleWidth":I
    move/from16 v0, v22

    if-gt v0, v4, :cond_11

    const/16 v21, 0x1

    .line 341
    .local v21, "titleFits":Z
    :goto_4
    if-eqz v21, :cond_9

    .line 342
    sub-int v4, v4, v22

    .line 344
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    if-eqz v21, :cond_12

    const/16 v28, 0x0

    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    .end local v21    # "titleFits":Z
    .end local v22    # "titleWidth":I
    .end local v23    # "titleWidthSpec":I
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 352
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    const/high16 v11, 0x40000000    # 2.0f

    .line 354
    .local v11, "customWidthMode":I
    :goto_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    if-ltz v28, :cond_15

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    .line 355
    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 356
    .local v10, "customWidth":I
    :goto_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    const/high16 v9, 0x40000000    # 2.0f

    .line 358
    .local v9, "customHeightMode":I
    :goto_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    if-ltz v28, :cond_17

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    .line 359
    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 360
    .local v8, "customHeight":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 361
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 360
    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    .line 364
    .end local v8    # "customHeight":I
    .end local v9    # "customHeightMode":I
    .end local v10    # "customWidth":I
    .end local v11    # "customWidthMode":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mContentHeight:I

    move/from16 v28, v0

    if-gtz v28, :cond_19

    .line 365
    const/16 v18, 0x0

    .line 366
    .local v18, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getChildCount()I

    move-result v7

    .line 367
    .local v7, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_b
    if-ge v15, v7, :cond_18

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 369
    .local v24, "v":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v19, v28, v26

    .line 370
    .local v19, "paddedViewHeight":I
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 371
    move/from16 v18, v19

    .line 367
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 275
    .end local v4    # "availableWidth":I
    .end local v5    # "childSpecHeight":I
    .end local v7    # "count":I
    .end local v13    # "height":I
    .end local v15    # "i":I
    .end local v17    # "maxHeight":I
    .end local v18    # "measuredHeight":I
    .end local v19    # "paddedViewHeight":I
    .end local v24    # "v":Landroid/view/View;
    .end local v26    # "verticalPadding":I
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    goto/16 :goto_0

    .line 310
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "availableWidth":I
    .restart local v5    # "childSpecHeight":I
    .restart local v13    # "height":I
    .restart local v17    # "maxHeight":I
    .restart local v20    # "textSize":F
    .restart local v25    # "value":Landroid/util/TypedValue;
    .restart local v26    # "verticalPadding":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 321
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "textSize":F
    .end local v25    # "value":Landroid/util/TypedValue;
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/samsung/android/support/sesl/R$dimen;->sesl_toolbar_content_inset:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 330
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/samsung/android/support/sesl/R$dimen;->sesl_toolbar_content_inset:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 340
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "titleWidth":I
    .restart local v23    # "titleWidthSpec":I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 344
    .restart local v21    # "titleFits":Z
    :cond_12
    const/16 v28, 0x8

    goto/16 :goto_5

    .line 346
    .end local v21    # "titleFits":Z
    .end local v22    # "titleWidth":I
    .end local v23    # "titleWidthSpec":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v4

    goto/16 :goto_6

    .line 352
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    const/high16 v11, -0x80000000

    goto/16 :goto_7

    .restart local v11    # "customWidthMode":I
    :cond_15
    move v10, v4

    .line 355
    goto/16 :goto_8

    .line 356
    .restart local v10    # "customWidth":I
    :cond_16
    const/high16 v9, -0x80000000

    goto/16 :goto_9

    .restart local v9    # "customHeightMode":I
    :cond_17
    move v8, v13

    .line 359
    goto/16 :goto_a

    .line 374
    .end local v9    # "customHeightMode":I
    .end local v10    # "customWidth":I
    .end local v11    # "customWidthMode":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "count":I
    .restart local v15    # "i":I
    .restart local v18    # "measuredHeight":I
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setMeasuredDimension(II)V

    .line 378
    .end local v7    # "count":I
    .end local v15    # "i":I
    .end local v18    # "measuredHeight":I
    :goto_c
    return-void

    .line 376
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_c
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mContentHeight:I

    .line 116
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mCustomView:Landroid/view/View;

    .line 123
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->removeView(Landroid/view/View;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 127
    :cond_1
    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->addView(Landroid/view/View;)V

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->requestLayout()V

    .line 131
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->initTitle()V

    .line 141
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->initTitle()V

    .line 136
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->requestLayout()V

    .line 433
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mTitleOptional:Z

    .line 434
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
