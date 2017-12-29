.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;
.super Landroid/view/animation/Animation;
.source "ParticleViewAnimation.java"


# instance fields
.field private cx:F

.field private cy:F

.field private mAngleDegree:F

.field private mAngleRadian:F

.field private mAnimationState:I

.field private mCurrentRadius:F

.field private mFromCenterX:F

.field private mFromCenterY:F

.field private mMaxRadius:F

.field private prevDx:F

.field private prevDy:F

.field private prevX:F

.field private prevY:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->view:Landroid/view/View;

    .line 41
    iput p2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mMaxRadius:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    .line 44
    const-wide/32 v0, 0x11170

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->setDuration(J)V

    .line 45
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->setRepeatCount(I)V

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 69
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevDx:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 71
    return-void

    .line 74
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 75
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    .line 80
    :cond_1
    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAngleDegree:F

    .line 81
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAngleDegree:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAngleRadian:F

    .line 83
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->cx:F

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAngleRadian:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mFromCenterX:F

    .line 84
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->cy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAngleRadian:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mFromCenterY:F

    .line 86
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevX:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mFromCenterX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevDx:F

    .line 87
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevY:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mFromCenterY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevDy:F

    .line 89
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mFromCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevX:F

    .line 90
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mFromCenterY:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevY:F

    .line 92
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevDx:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 68
    return-void

    .line 76
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAnimationState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 77
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    goto :goto_0
.end method

.method public getCurrentRadius()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mCurrentRadius:F

    return v0
.end method

.method public initialize(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 57
    div-int/lit8 v0, p1, 0x2

    .line 58
    .local v0, "cxImage":I
    div-int/lit8 v1, p2, 0x2

    .line 59
    .local v1, "cyImage":I
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->cx:F

    .line 60
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->cy:F

    .line 63
    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->cx:F

    iput v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevX:F

    .line 64
    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->cy:F

    iput v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->prevY:F

    .line 55
    return-void
.end method

.method public setAnimationState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAnimationState:I

    .line 97
    const-string/jumbo v0, "ParticleViewAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAnimationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
