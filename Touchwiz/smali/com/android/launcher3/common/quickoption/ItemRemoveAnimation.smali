.class final Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
.super Ljava/lang/Object;
.source "ItemRemoveAnimation.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHasCanceled:Z

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mHasCanceled:Z

    .line 16
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    .line 17
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 18
    return-void
.end method


# virtual methods
.method animate()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 21
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 22
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 23
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 25
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 27
    .local v1, "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    iput-boolean v9, v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasSetPivot:Z

    .line 28
    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->visibleWidth:I

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setTranslationX(F)V

    .line 29
    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->visibleHeight:I

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setTranslationY(F)V

    .line 31
    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    .line 32
    .local v0, "scale":F
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 33
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [F

    aput v0, v6, v10

    div-float v7, v0, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 34
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [F

    aput v0, v6, v10

    div-float v7, v0, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 35
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [F

    aput v12, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    .line 32
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 48
    .end local v0    # "scale":F
    .end local v1    # "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 49
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 50
    return-void

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 40
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 41
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 42
    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [F

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 43
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [F

    const/high16 v8, 0x3f000000    # 0.5f

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 44
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [F

    aput v12, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 39
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mHasCanceled:Z

    .line 61
    :cond_0
    return-void
.end method

.method getAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method hasCanceled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mHasCanceled:Z

    return v0
.end method
