.class public Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;
.super Ljava/lang/Object;
.source "GuideArrowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator$1;
    }
.end annotation


# instance fields
.field private mAnimationDistance:F

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsLeftArrow:Z

.field private mRes:Landroid/content/res/Resources;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "isLeftArrow"    # Z
    .param p4, "containerWidth"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator$1;-><init>(Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetView must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    .line 58
    iput-object p2, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    .line 59
    iput-boolean p3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    .line 61
    invoke-virtual {p0, p4}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->init(I)V

    .line 52
    return-void
.end method

.method private getEmptyAnimator(J)Landroid/animation/Animator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method private getFadeInAnimator(FF)Landroid/animation/Animator;
    .locals 9
    .param p1, "startX"    # F
    .param p2, "endX"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 84
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 85
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v6, [F

    aput p1, v4, v7

    aput p2, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 86
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 85
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 87
    return-object v0

    .line 86
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutAnimator(FF)Landroid/animation/Animator;
    .locals 10
    .param p1, "startX"    # F
    .param p2, "endX"    # F

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 91
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 92
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v5, [F

    aput p1, v4, v6

    aput p2, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 93
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 92
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    return-object v0

    .line 93
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x43

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 107
    return-void
.end method

.method public init(I)V
    .locals 8
    .param p1, "containerWidth"    # I

    .prologue
    .line 65
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/keyguard/R$dimen;->servicebox_guide_arrow_anim_distance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    .line 66
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 67
    .local v2, "viewWidth":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/keyguard/R$dimen;->servicebox_guide_arrow_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 71
    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    .line 72
    .local v1, "startX":F
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    neg-float v0, v3

    .line 74
    .local v0, "endX":F
    :goto_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    .line 75
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 76
    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 78
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 80
    const-wide/16 v6, 0x708

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->getEmptyAnimator(J)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 76
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 64
    return-void

    .line 71
    .end local v0    # "endX":F
    .end local v1    # "startX":F
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    sub-float/2addr v3, v4

    sub-float v1, v3, v2

    .restart local v1    # "startX":F
    goto :goto_0

    .line 72
    :cond_2
    int-to-float v3, p1

    iget v4, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    add-float/2addr v3, v4

    sub-float v0, v3, v2

    .restart local v0    # "endX":F
    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    return-void
.end method
