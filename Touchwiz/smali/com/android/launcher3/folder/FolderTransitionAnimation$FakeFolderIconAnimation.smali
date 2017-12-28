.class Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;
.super Ljava/lang/Object;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeFolderIconAnimation"
.end annotation


# instance fields
.field private mFakeView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;
    .param p2, "x1"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$1;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private makeLayoutParams(Landroid/view/View;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 5
    .param p1, "openFolder"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 632
    .local v1, "params":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v4, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 633
    .local v0, "newParams":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 634
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 635
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->leftMargin:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->leftMargin:I

    .line 636
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    .line 637
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iget v3, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    invoke-virtual {v0, v2, v3, v4, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->setMargins(IIII)V

    .line 638
    return-object v0
.end method

.method private prepareFakeFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 11
    .param p1, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 595
    iget-object v7, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 597
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 598
    .local v6, "previewIcons":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 599
    .local v4, "previewBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 600
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v3

    .line 601
    .local v3, "iconSize":I
    int-to-float v7, v3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 602
    .local v2, "iconScale":F
    int-to-float v7, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 604
    .local v0, "bgScale":F
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 605
    .local v5, "previewBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 606
    .local v1, "canvas":Landroid/graphics/Canvas;
    cmpl-float v7, v0, v9

    if-eqz v7, :cond_0

    .line 607
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 608
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 609
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 610
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 614
    :goto_0
    cmpl-float v7, v2, v9

    if-eqz v7, :cond_1

    .line 615
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 616
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 617
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 622
    :goto_1
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 623
    iget-object v7, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 624
    iget-object v7, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 628
    .end local v0    # "bgScale":F
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "iconScale":F
    .end local v3    # "iconSize":I
    .end local v5    # "previewBitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-void

    .line 612
    .restart local v0    # "bgScale":F
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "iconScale":F
    .restart local v3    # "iconSize":I
    .restart local v5    # "previewBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 626
    .end local v0    # "bgScale":F
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "iconScale":F
    .end local v3    # "iconSize":I
    .end local v5    # "previewBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$800()Ljava/lang/String;

    move-result-object v7

    const-string v8, "prepareFakeFolderIcon : can\'t get preview image"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 11
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "iconView"    # Landroid/view/View;
    .param p3, "duration"    # J

    .prologue
    const-wide/16 v8, 0x5

    .line 550
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 551
    .local v0, "alphaAnim":Landroid/animation/Animator;
    div-long v2, p3, v8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 552
    const-wide/16 v2, 0x4

    mul-long/2addr v2, p3

    div-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 553
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$600(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 556
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 557
    .local v1, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$2;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 574
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 575
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$500(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 578
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 580
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    return-void

    .line 556
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 11
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "iconView"    # Landroid/view/View;
    .param p3, "duration"    # J

    .prologue
    const/4 v10, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 522
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [F

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 523
    .local v0, "alphaAnim":Landroid/animation/Animator;
    const-wide/16 v2, 0x5

    div-long v2, p3, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 524
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$500(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 527
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 528
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 529
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 530
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 531
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 532
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 528
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 533
    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 534
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$500(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 535
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 537
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 539
    new-instance v2, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;-><init>(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 547
    return-void
.end method

.method public prepareAimation(Landroid/view/View;Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;Z)V
    .locals 5
    .param p1, "openFolder"    # Landroid/view/View;
    .param p2, "folderIcon"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p3, "info"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    .param p4, "open"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 503
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$400(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    .line 507
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->prepareFakeFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 508
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$400(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 509
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->makeLayoutParams(Landroid/view/View;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    if-eqz p4, :cond_2

    .line 512
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 513
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->location:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 514
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 515
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;->scaleBy:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 519
    :goto_1
    return-void

    .line 504
    .end local v0    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 517
    .restart local v0    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->mFakeView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method
