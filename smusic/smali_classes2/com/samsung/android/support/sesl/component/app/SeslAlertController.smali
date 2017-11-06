.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController;
.super Ljava/lang/Object;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslAlertController$ButtonBarLayout;,
        Lcom/samsung/android/support/sesl/component/app/SeslAlertController$CheckedItemAdapter;,
        Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;,
        Lcom/samsung/android/support/sesl/component/app/SeslAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 98
    iput v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconId:I

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mCheckedItem:I

    .line 117
    iput v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPanelLayoutHint:I

    .line 121
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 172
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    .line 174
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    .line 175
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mHandler:Landroid/os/Handler;

    .line 177
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog:[I

    sget v3, Lcom/samsung/android/support/sesl/R$attr;->seslAlertDialogStyle:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_android_layout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mAlertDialogLayout:I

    .line 181
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslButtonPanelSideLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPanelSideLayout:I

    .line 183
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslListLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListLayout:I

    .line 184
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslMultiChoiceItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMultiChoiceItemLayout:I

    .line 185
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslSingleChoiceItemLayout:I

    .line 186
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mSingleChoiceItemLayout:I

    .line 187
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslListItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListItemLayout:I

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->supportRequestWindowFeature(I)Z

    .line 193
    return-void
.end method

.method private adjustButtonsPadding()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 627
    const/4 v2, 0x0

    .line 628
    .local v2, "btnCount":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_0

    .line 629
    const/4 v2, 0x3

    .line 632
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_text_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 633
    .local v7, "textSize":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_text_size_with_three_button:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 634
    .local v8, "textSizeWith3Buttons":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_padding_horizontal:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 635
    .local v4, "paddingHorizontal":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_padding_horizontal_with_three_button:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 636
    .local v5, "paddingHorizontalWith3Buttons":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_padding_vertical:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 637
    .local v6, "paddingVertical":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_bar_padding_horizontal:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 638
    .local v1, "btnBarPaddingHorizontal":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_button_bar_padding_bottom:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 640
    .local v0, "btnBarPaddingBottom":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v10, Lcom/samsung/android/support/sesl/R$id;->buttonPanel:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 642
    .local v3, "buttonPanel":Landroid/view/View;
    const/4 v9, 0x3

    if-ne v2, v9, :cond_1

    .line 643
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v5, v6, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 644
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    int-to-float v10, v8

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 645
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v5, v6, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 646
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    int-to-float v10, v8

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 647
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v5, v6, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 648
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v10, v8

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 649
    sub-int v9, v4, v5

    add-int/2addr v9, v1

    sub-int v10, v4, v5

    add-int/2addr v10, v1

    invoke-virtual {v3, v9, v11, v10, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 650
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v9, v8}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 651
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v9, v8}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 652
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v9, v8}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 671
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_2

    .line 655
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v4, v6, v4, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 656
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 657
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 659
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_3

    .line 660
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v4, v6, v4, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 661
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 662
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 664
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 665
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v4, v6, v4, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 666
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 667
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 669
    :cond_4
    invoke-virtual {v3, v1, v11, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    :goto_0
    return v2

    .line 200
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 201
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 204
    check-cast v1, Landroid/view/ViewGroup;

    .line 205
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 206
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 207
    add-int/lit8 v0, v0, -0x1

    .line 208
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 209
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 214
    goto :goto_0
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .prologue
    .line 828
    const v1, 0x3f99999a    # 1.2f

    .line 829
    .local v1, "maxScale":F
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 831
    .local v0, "currentFontScale":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 832
    int-to-float v3, p2

    div-float v2, v3, v0

    .line 833
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 835
    .end local v2    # "scaleBase":F
    :cond_0
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 752
    if-eqz p1, :cond_0

    .line 753
    const/4 v0, -0x1

    .line 754
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 753
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_0
    if-eqz p2, :cond_1

    .line 757
    const/4 v0, 0x1

    .line 758
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 754
    goto :goto_0

    :cond_3
    move v1, v2

    .line 758
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defaultPanel"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 423
    if-nez p1, :cond_1

    .line 425
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 426
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 429
    check-cast v1, Landroid/view/ViewGroup;

    .line 445
    :goto_0
    return-object v1

    .line 433
    :cond_1
    if-eqz p2, :cond_2

    .line 434
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 435
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 436
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 441
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 442
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    move-object v1, p1

    .line 445
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 225
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mAlertDialogLayout:I

    .line 230
    :goto_0
    return v0

    .line 227
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 228
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 230
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "indicators"    # I
    .param p4, "mask"    # I

    .prologue
    .line 513
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/samsung/android/support/sesl/R$id;->scrollIndicatorUp:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 514
    .local v2, "indicatorUp":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/samsung/android/support/sesl/R$id;->scrollIndicatorDown:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 516
    .local v1, "indicatorDown":Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 518
    invoke-static {p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 520
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 523
    :cond_0
    if-eqz v1, :cond_1

    .line 524
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    if-eqz v2, :cond_3

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_3

    .line 529
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 530
    const/4 v2, 0x0

    .line 532
    :cond_3
    if-eqz v1, :cond_4

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_4

    .line 533
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 534
    const/4 v1, 0x0

    .line 537
    :cond_4
    if-nez v2, :cond_5

    if-eqz v1, :cond_1

    .line 538
    :cond_5
    move-object v3, v2

    .line 539
    .local v3, "top":Landroid/view/View;
    move-object v0, v1

    .line 541
    .local v0, "bottom":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 543
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    new-instance v5, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setOnScrollChangeListener(Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;)V

    .line 553
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    new-instance v5, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 559
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 561
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 572
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$5;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$5;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 580
    :cond_7
    if-eqz v3, :cond_8

    .line 581
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 583
    :cond_8
    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 763
    const/4 v5, 0x0

    .line 765
    .local v5, "showButtonBackground":Z
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 766
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v3, :cond_0

    .line 767
    const-string/jumbo v7, "show_button_background"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_0

    .line 768
    const/4 v5, 0x1

    .line 772
    :cond_0
    const/4 v2, 0x1

    .line 773
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 774
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 775
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v6, 0x0

    .line 777
    .local v6, "whichButtons":I
    const v7, 0x1020019

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 778
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    if-eqz v5, :cond_1

    .line 780
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    sget v9, Lcom/samsung/android/support/sesl/R$drawable;->sesl_dialog_show_button_background:I

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 783
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 784
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 791
    :goto_0
    const v7, 0x102001a

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 792
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    if-eqz v5, :cond_2

    .line 794
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    sget v9, Lcom/samsung/android/support/sesl/R$drawable;->sesl_dialog_show_button_background:I

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 797
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 798
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 806
    :goto_1
    const v7, 0x102001b

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 807
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    if-eqz v5, :cond_3

    .line 809
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    sget v9, Lcom/samsung/android/support/sesl/R$drawable;->sesl_dialog_show_button_background:I

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 812
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 813
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    :goto_2
    if-eqz v6, :cond_8

    .line 822
    .local v4, "hasButtons":Z
    :goto_3
    if-nez v4, :cond_4

    .line 823
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 825
    :cond_4
    return-void

    .line 786
    .end local v4    # "hasButtons":Z
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 788
    or-int/2addr v6, v2

    goto :goto_0

    .line 800
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 803
    or-int/2addr v6, v0

    goto :goto_1

    .line 815
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 818
    or-int/2addr v6, v1

    goto :goto_2

    :cond_8
    move v4, v8

    .line 821
    goto :goto_3
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 723
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/samsung/android/support/sesl/R$id;->scrollView:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    .line 724
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setFocusable(Z)V

    .line 725
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 728
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    .line 729
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 749
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 736
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 741
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 742
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 743
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 746
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 593
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 594
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mView:Landroid/view/View;

    .line 602
    .local v1, "customView":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 603
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 604
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 608
    :cond_2
    if-eqz v2, :cond_7

    .line 609
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/samsung/android/support/sesl/R$id;->custom:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 610
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_3

    .line 613
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 617
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 618
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 623
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    return-void

    .line 595
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "hasCustomView":Z
    :cond_5
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_6

    .line 596
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 597
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 598
    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 599
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 621
    .restart local v2    # "hasCustomView":Z
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 674
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 676
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 679
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/samsung/android/support/sesl/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 683
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 687
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 688
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 690
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/samsung/android/support/sesl/R$id;->alertTitle:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    .line 691
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_dialog_title_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 699
    iget v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 702
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 706
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 707
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 708
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 709
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 706
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 710
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 714
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/samsung/android/support/sesl/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 715
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 23

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v21, v0

    sget v22, Lcom/samsung/android/support/sesl/R$id;->parentPanel:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 450
    .local v19, "parentPanel":Landroid/view/View;
    sget v21, Lcom/samsung/android/support/sesl/R$id;->topPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 451
    .local v13, "defaultTopPanel":Landroid/view/View;
    sget v21, Lcom/samsung/android/support/sesl/R$id;->contentPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 452
    .local v12, "defaultContentPanel":Landroid/view/View;
    sget v21, Lcom/samsung/android/support/sesl/R$id;->buttonPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 456
    .local v11, "defaultButtonPanel":Landroid/view/View;
    sget v21, Lcom/samsung/android/support/sesl/R$id;->customPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 457
    .local v9, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 459
    sget v21, Lcom/samsung/android/support/sesl/R$id;->topPanel:I

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 460
    .local v10, "customTopPanel":Landroid/view/View;
    sget v21, Lcom/samsung/android/support/sesl/R$id;->contentPanel:I

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 461
    .local v8, "customContentPanel":Landroid/view/View;
    sget v21, Lcom/samsung/android/support/sesl/R$id;->buttonPanel:I

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 464
    .local v7, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v20

    .line 465
    .local v20, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 466
    .local v6, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 468
    .local v3, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 470
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 472
    if-eqz v9, :cond_3

    .line 473
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/4 v15, 0x1

    .line 474
    .local v15, "hasCustomPanel":Z
    :goto_0
    if-eqz v20, :cond_4

    .line 475
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v16, 0x1

    .line 476
    .local v16, "hasTopPanel":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 477
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/4 v14, 0x1

    .line 479
    .local v14, "hasButtonPanel":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->adjustButtonsPadding()V

    .line 481
    if-eqz v16, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setClipToPadding(Z)V

    .line 489
    :cond_0
    if-nez v15, :cond_1

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 491
    .local v5, "content":Landroid/view/View;
    :goto_3
    if-eqz v5, :cond_1

    .line 492
    if-eqz v16, :cond_7

    const/16 v21, 0x1

    move/from16 v22, v21

    :goto_4
    if-eqz v14, :cond_8

    const/16 v21, 0x2

    :goto_5
    or-int v17, v22, v21

    .line 494
    .local v17, "indicators":I
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 499
    .end local v5    # "content":Landroid/view/View;
    .end local v17    # "indicators":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    .line 500
    .local v18, "listView":Landroid/widget/ListView;
    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 502
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mCheckedItem:I

    .line 503
    .local v4, "checkedItem":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v4, v0, :cond_2

    .line 504
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 505
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 508
    .end local v4    # "checkedItem":I
    :cond_2
    return-void

    .line 473
    .end local v14    # "hasButtonPanel":Z
    .end local v15    # "hasCustomPanel":Z
    .end local v16    # "hasTopPanel":Z
    .end local v18    # "listView":Landroid/widget/ListView;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 475
    .restart local v15    # "hasCustomPanel":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 477
    .restart local v16    # "hasTopPanel":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 490
    .restart local v14    # "hasButtonPanel":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    goto :goto_3

    .line 492
    .restart local v5    # "content":Landroid/view/View;
    :cond_7
    const/16 v21, 0x0

    move/from16 v22, v21

    goto :goto_4

    :cond_8
    const/16 v21, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 390
    packed-switch p1, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 396
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 380
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 381
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 382
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->selectContentView()I

    move-result v0

    .line 219
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->setContentView(I)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setupView()V

    .line 221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 308
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 312
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 316
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 332
    :goto_0
    return-void

    .line 320
    :pswitch_1
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 321
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 325
    :pswitch_2
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 326
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mButtonPanelLayoutHint:I

    .line 291
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    .line 245
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 342
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconId:I

    .line 344
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 345
    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 361
    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconId:I

    .line 363
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 364
    if-eqz p1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mView:Landroid/view/View;

    .line 259
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewLayoutResId:I

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 261
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 267
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mView:Landroid/view/View;

    .line 268
    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewLayoutResId:I

    .line 269
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 270
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mView:Landroid/view/View;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewLayoutResId:I

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 280
    iput p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingLeft:I

    .line 281
    iput p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingTop:I

    .line 282
    iput p4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingRight:I

    .line 283
    iput p5, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mViewSpacingBottom:I

    .line 284
    return-void
.end method
