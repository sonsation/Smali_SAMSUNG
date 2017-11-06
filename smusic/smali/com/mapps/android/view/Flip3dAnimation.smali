.class public Lcom/mapps/android/view/Flip3dAnimation;
.super Landroid/view/animation/Animation;
.source "Flip3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    iput p1, p0, Lcom/mapps/android/view/Flip3dAnimation;->mFromDegrees:F

    .line 17
    iput p2, p0, Lcom/mapps/android/view/Flip3dAnimation;->mToDegrees:F

    .line 18
    iput p3, p0, Lcom/mapps/android/view/Flip3dAnimation;->mCenterX:F

    .line 19
    iput p4, p0, Lcom/mapps/android/view/Flip3dAnimation;->mCenterY:F

    .line 20
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 32
    iget v4, p0, Lcom/mapps/android/view/Flip3dAnimation;->mFromDegrees:F

    .line 33
    .local v4, "fromDegrees":F
    iget v6, p0, Lcom/mapps/android/view/Flip3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 35
    .local v3, "degrees":F
    iget v1, p0, Lcom/mapps/android/view/Flip3dAnimation;->mCenterX:F

    .line 36
    .local v1, "centerX":F
    iget v2, p0, Lcom/mapps/android/view/Flip3dAnimation;->mCenterY:F

    .line 37
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/mapps/android/view/Flip3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 39
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 41
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 43
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 45
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 48
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 49
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 50
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 26
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/Flip3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 27
    return-void
.end method
