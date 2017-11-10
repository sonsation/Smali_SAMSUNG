.class Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;
.super Landroid/view/animation/Animation;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/AnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchAnimation"
.end annotation


# instance fields
.field mDepth:F

.field mDirection:I

.field mFromDegrees:I

.field mMaxOffsetY:F

.field mPivotX:F

.field mPivotY:F

.field mRotationAxis:I

.field mToDegrees:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11

    const/16 v10, 0x65

    const/16 v9, 0x64

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v1

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDepth:F

    invoke-virtual {v0, v7, v7, v5}, Landroid/graphics/Camera;->setLocation(FFF)V

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    mul-float v6, p1, v8

    mul-float v4, v5, v6

    :goto_0
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mRotationAxis:I

    if-nez v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v5, v9, :cond_3

    neg-float v5, v4

    invoke-virtual {v0, v7, v5, v7}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_0
    :goto_1
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToDegrees:I

    iget v7, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->rotateX(F)V

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    neg-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    neg-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    iget v6, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v6, v8

    mul-float v4, v5, v6

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v5, v10, :cond_0

    invoke-virtual {v0, v7, v4, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mRotationAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v5, v9, :cond_6

    neg-float v5, v4

    invoke-virtual {v0, v5, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_5
    :goto_3
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToDegrees:I

    iget v7, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v5, v10, :cond_5

    invoke-virtual {v0, v4, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_3
.end method

.method public initialize(IIII)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    return-void
.end method

.method public setDepth(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDepth:F

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    return-void
.end method

.method public setMaxOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    return-void
.end method

.method public setRotationAxis(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mRotationAxis:I

    return-void
.end method

.method public setRotationDegrees(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    iput p2, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToDegrees:I

    return-void
.end method
