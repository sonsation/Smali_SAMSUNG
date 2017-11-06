.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;
.super Landroid/widget/ImageView;
.source "SeslActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslOverflowImageView"
.end annotation


# instance fields
.field private mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 801
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 802
    const v1, 0x10102f6

    invoke-direct {p0, p2, v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 804
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->setClickable(Z)V

    .line 805
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->setFocusable(Z)V

    .line 806
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->setLongClickable(Z)V

    .line 808
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result v0

    .line 810
    .local v0, "TYPE_TOOLTIP":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 811
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 816
    .end local v0    # "TYPE_TOOLTIP":I
    :cond_0
    new-instance v1, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 818
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    const v4, 0x10102f6

    const/4 v3, 0x0

    .line 822
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 825
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView:[I

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 827
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_minHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->setMinimumHeight(I)V

    .line 829
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_contentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 830
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 833
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslImageView:[I

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 842
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->updateOverflowButtonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 845
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 849
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    .line 853
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 857
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    :goto_0
    return v1

    .line 861
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->playSoundEffect(I)V

    .line 862
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 25

    .prologue
    .line 872
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 873
    const/16 v22, 0x1

    .line 940
    :goto_0
    return v22

    .line 876
    :cond_0
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 877
    .local v16, "screenPos":[I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 878
    .local v7, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getLocationOnScreen([I)V

    .line 879
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 882
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/samsung/android/support/sesl/R$dimen;->sesl_status_bar_height:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 883
    .local v18, "statusBarHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/samsung/android/support/sesl/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 884
    .local v10, "navigationBarHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getWidth()I

    move-result v19

    .line 885
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getHeight()I

    move-result v9

    .line 886
    .local v9, "height":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 887
    .local v5, "density":F
    const-string/jumbo v22, "window"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 889
    .local v6, "display":Landroid/view/Display;
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 890
    .local v12, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 891
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v12}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 892
    invoke-virtual {v6, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 894
    iget v14, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 895
    .local v14, "realScreenWidth":I
    iget v13, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 896
    .local v13, "realScreenHeight":I
    iget v11, v12, Landroid/util/DisplayMetrics;->density:F

    .line 898
    .local v11, "realDensity":F
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 899
    .local v17, "screenWidth":I
    iget v15, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 900
    .local v15, "screenHeight":I
    const/16 v20, 0x0

    .line 901
    .local v20, "xOffset":I
    const/16 v21, 0x0

    .line 902
    .local v21, "yOffset":I
    const/16 v22, 0x1

    aget v22, v16, v22

    add-int v22, v22, v9

    sub-int v21, v22, v18

    .line 903
    const/16 v22, 0x0

    aget v22, v16, v22

    add-int v22, v22, v19

    sub-int v22, v14, v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingStart()I

    move-result v23

    sub-int v23, v19, v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingEnd()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingEnd()I

    move-result v23

    add-int v20, v22, v23

    .line 906
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->twMakeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 908
    .local v3, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getLayoutDirection()I

    move-result v22

    if-nez v22, :cond_2

    .line 909
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 911
    div-float v22, v10, v5

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v20, v20, v22

    .line 914
    :cond_1
    const/16 v22, 0x35

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 920
    :goto_1
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 938
    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->performHapticFeedback(I)Z

    .line 940
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 916
    .restart local v3    # "cheatSheet":Landroid/widget/Toast;
    :cond_2
    const/16 v22, 0x0

    aget v22, v16, v22

    add-int v22, v22, v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingStart()I

    move-result v23

    sub-int v23, v19, v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingEnd()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingStart()I

    move-result v23

    sub-int v20, v22, v23

    .line 917
    const/16 v22, 0x33

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 922
    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->makeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/widget/SeslToast;

    move-result-object v3

    .line 923
    .local v3, "cheatSheet":Lcom/samsung/android/support/sesl/component/widget/SeslToast;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getLayoutDirection()I

    move-result v22

    if-nez v22, :cond_5

    .line 924
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 926
    div-float v22, v10, v5

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v20, v20, v22

    .line 929
    :cond_4
    const/16 v22, 0x35

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setGravity(III)V

    .line 935
    :goto_3
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->show()V

    goto/16 :goto_2

    .line 931
    :cond_5
    const/16 v22, 0x0

    aget v22, v16, v22

    add-int v22, v22, v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingStart()I

    move-result v23

    sub-int v23, v19, v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingEnd()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingStart()I

    move-result v23

    sub-int v20, v22, v23

    .line 932
    const/16 v22, 0x33

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setGravity(III)V

    goto :goto_3
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 945
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v1

    .line 948
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 949
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 950
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getWidth()I

    move-result v6

    .line 952
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getHeight()I

    move-result v4

    .line 953
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 954
    .local v5, "offsetX":I
    div-int/lit8 v3, v5, 0x2

    .line 956
    .local v3, "halfOffsetX":I
    const/4 v7, 0x0

    add-int v8, v3, v6

    invoke-virtual {v0, v3, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 959
    .end local v3    # "halfOffsetX":I
    .end local v4    # "height":I
    .end local v5    # "offsetX":I
    .end local v6    # "width":I
    :cond_0
    return v1
.end method
