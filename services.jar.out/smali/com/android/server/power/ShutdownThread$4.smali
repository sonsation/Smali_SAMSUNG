.class final Lcom/android/server/power/ShutdownThread$4;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$description:I

.field final synthetic val$titleText:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;II)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;
    .param p2, "$anonymous1"    # I
    .param p3, "val$ctx"    # Landroid/content/Context;
    .param p4, "val$titleText"    # I
    .param p5, "val$description"    # I

    .prologue
    .line 563
    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/power/ShutdownThread$4;->val$titleText:I

    iput p5, p0, Lcom/android/server/power/ShutdownThread$4;->val$description:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 758
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 768
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 761
    :pswitch_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap2()V

    .line 762
    return v1

    .line 764
    :pswitch_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap2()V

    .line 765
    return v1

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 566
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80180

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 569
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 570
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 571
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 572
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 574
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 579
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 582
    .local v22, "r":Landroid/content/res/Resources;
    const/16 v24, 0x0

    .line 583
    .local v24, "sIsNeedWhiteTheme":Z
    const v27, 0x112006a

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    .line 584
    .local v25, "sSupportBlackWhiteTheme":Z
    if-eqz v25, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 587
    .local v18, "mCurrentBG":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 588
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 589
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    .line 588
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 594
    .local v26, "targetRegion":Landroid/graphics/Rect;
    :goto_0
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 595
    .local v17, "mColorHSV":[F
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v17

    .line 596
    if-nez v17, :cond_3

    .line 597
    const/16 v24, 0x0

    .line 608
    .end local v17    # "mColorHSV":[F
    .end local v18    # "mCurrentBG":Landroid/graphics/Bitmap;
    .end local v26    # "targetRegion":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 609
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    .line 610
    const/16 v27, -0x1

    .line 611
    const/16 v28, -0x1

    .line 609
    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 612
    .local v23, "rootParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 615
    .local v6, "bgView":Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 616
    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 615
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 617
    .local v7, "bgViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    if-nez v24, :cond_5

    .line 619
    const/high16 v27, -0x1000000

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 624
    :goto_2
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 625
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v27

    const v28, 0x3f333333    # 0.7f

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v27

    const-wide/16 v28, 0x12c

    invoke-virtual/range {v27 .. v29}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 628
    const/4 v11, 0x2

    .line 629
    .local v11, "coverType":I
    new-instance v9, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 630
    .local v9, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v9, :cond_1

    .line 631
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get9()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 632
    invoke-virtual {v9}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v10

    .line 633
    .local v10, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/samsung/android/cover/CoverState;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set1(Z)Z

    .line 634
    if-eqz v10, :cond_1

    .line 635
    invoke-virtual {v10}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    .line 638
    .end local v10    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_1
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 639
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 640
    const/16 v27, -0x2

    .line 641
    const/16 v28, -0x2

    .line 639
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 642
    .local v8, "buttonViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v27, 0xd

    .line 643
    const/16 v28, -0x1

    .line 642
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 644
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 646
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    const/16 v28, 0x11

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 648
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 650
    .local v15, "icon":Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get11()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 651
    if-nez v25, :cond_6

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a38

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 665
    .local v12, "d":Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    .line 667
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff4cccccccccccdL    # 1.3

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    .line 668
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4cccccccccccdL    # 1.3

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    .line 666
    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 671
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 672
    .local v20, "messageView":Landroid/widget/TextView;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    .line 673
    const/16 v28, -0x2

    .line 674
    const/16 v29, -0x2

    .line 672
    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$titleText:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    const/16 v27, 0x2

    const v28, 0x418f5c29    # 17.92f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 677
    if-eqz v25, :cond_9

    if-eqz v24, :cond_9

    .line 678
    const v27, 0x1060150

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    :goto_4
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 686
    .local v13, "descriptionView":Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 687
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v27, 0x439b0000    # 310.0f

    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    .line 688
    .local v19, "maxWidth":F
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    .line 689
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, -0x2

    .line 688
    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$description:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    const/high16 v27, 0x41600000    # 14.0f

    const/16 v28, 0x2

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 692
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 693
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 694
    const/16 v27, 0x11

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 695
    if-eqz v25, :cond_a

    if-eqz v24, :cond_a

    .line 696
    const v27, 0x1060151

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    :goto_5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v27}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 704
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 705
    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 704
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 706
    .local v14, "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 708
    if-eqz v25, :cond_b

    if-eqz v24, :cond_b

    .line 709
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 716
    :goto_6
    new-instance v16, Lcom/android/server/power/ShutdownThread$4$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownThread$4$1;-><init>(Lcom/android/server/power/ShutdownThread$4;Landroid/content/Context;)V

    .line 722
    .local v16, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    new-instance v28, Lcom/android/server/power/ShutdownThread$4$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4$2;-><init>(Lcom/android/server/power/ShutdownThread$4;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 733
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 734
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 735
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$4;->setContentView(Landroid/view/View;)V

    .line 578
    return-void

    .line 591
    .end local v6    # "bgView":Landroid/widget/RelativeLayout;
    .end local v7    # "bgViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "buttonViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "coverManager":Lcom/samsung/android/cover/CoverManager;
    .end local v11    # "coverType":I
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    .end local v13    # "descriptionView":Landroid/widget/TextView;
    .end local v14    # "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "icon":Landroid/widget/ImageView;
    .end local v16    # "listener":Landroid/view/View$OnClickListener;
    .end local v19    # "maxWidth":F
    .end local v20    # "messageView":Landroid/widget/TextView;
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "rootParam":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v18    # "mCurrentBG":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    .line 592
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    .line 591
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v26    # "targetRegion":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 599
    .restart local v17    # "mColorHSV":[F
    :cond_3
    const-string/jumbo v27, "ShutdownThread"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Whole Area Hue="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget v29, v17, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", Saturation="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget v29, v17, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", Brightness="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget v29, v17, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v27, 0x1

    aget v27, v17, v27

    const v28, 0x3e99999a    # 0.3f

    cmpg-float v27, v27, v28

    if-gez v27, :cond_4

    const/16 v27, 0x2

    aget v27, v17, v27

    const v28, 0x3f6147ae    # 0.88f

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_4

    .line 601
    const/16 v24, 0x1

    .line 600
    goto/16 :goto_1

    .line 603
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 622
    .end local v17    # "mColorHSV":[F
    .end local v18    # "mCurrentBG":Landroid/graphics/Bitmap;
    .end local v26    # "targetRegion":Landroid/graphics/Rect;
    .restart local v6    # "bgView":Landroid/widget/RelativeLayout;
    .restart local v7    # "bgViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v23    # "rootParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/16 v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 655
    .restart local v8    # "buttonViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "coverManager":Lcom/samsung/android/cover/CoverManager;
    .restart local v11    # "coverType":I
    .restart local v15    # "icon":Landroid/widget/ImageView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a39

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 658
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    if-nez v25, :cond_8

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a34

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 662
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1080a35

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 681
    .restart local v20    # "messageView":Landroid/widget/TextView;
    :cond_9
    const v27, 0x1060145

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 699
    .restart local v13    # "descriptionView":Landroid/widget/TextView;
    .restart local v19    # "maxWidth":F
    .restart local v21    # "metrics":Landroid/util/DisplayMetrics;
    :cond_a
    const v27, 0x1060146

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 712
    .restart local v14    # "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v27

    const/high16 v28, -0x1000000

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_6
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 740
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 741
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 743
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 744
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 745
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 746
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 747
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 748
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 750
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 752
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 753
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 739
    return-void
.end method
