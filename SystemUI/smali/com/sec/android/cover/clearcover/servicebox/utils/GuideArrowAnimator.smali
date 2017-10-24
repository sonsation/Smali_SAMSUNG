.class public Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;
.super Ljava/lang/Object;
.source "GuideArrowAnimator.java"


# static fields
.field private static SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAnimationDistance:F

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mIsLeftArrow:Z

.field private mRes:Landroid/content/res/Resources;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "isLeftArrow"    # Z
    .param p4, "containerWidth"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetView must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    .line 50
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    .line 51
    iput-boolean p3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    .line 53
    invoke-virtual {p0, p4}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->init(I)V

    .line 44
    return-void
.end method

.method private getFadeInAnimator(FF)Landroid/animation/Animator;
    .locals 9
    .param p1, "startX"    # F
    .param p2, "endX"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

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

    .line 77
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 76
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 78
    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    return-object v0

    .line 77
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

    .line 83
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 84
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v5, [F

    aput p1, v4, v6

    aput p2, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 85
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 84
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 86
    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    return-object v0

    .line 85
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
    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

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

    .line 95
    return-void
.end method

.method public init(I)V
    .locals 7
    .param p1, "containerWidth"    # I

    .prologue
    .line 57
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_arrow_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    .line 58
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 59
    .local v2, "viewWidth":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_arrow_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 63
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    .line 64
    .local v1, "startX":F
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    neg-float v0, v3

    .line 66
    .local v0, "endX":F
    :goto_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    .line 67
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 68
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 70
    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 68
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 56
    return-void

    .line 63
    .end local v0    # "endX":F
    .end local v1    # "startX":F
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    sub-float/2addr v3, v4

    sub-float v1, v3, v2

    .restart local v1    # "startX":F
    goto :goto_0

    .line 64
    :cond_2
    int-to-float v3, p1

    iget v4, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimationDistance:F

    add-float/2addr v3, v4

    sub-float v0, v3, v2

    .restart local v0    # "endX":F
    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 90
    return-void
.end method
