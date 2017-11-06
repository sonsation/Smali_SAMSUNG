.class Lcom/mapps/android/view/AdView$CameraAnim;
.super Landroid/view/animation/Animation;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraAnim"
.end annotation


# instance fields
.field cx:F

.field cy:F

.field private mCamera:Landroid/graphics/Camera;

.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/mapps/android/view/AdView$CameraAnim;->this$0:Lcom/mapps/android/view/AdView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 2542
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 2543
    .local v4, "fromDegrees":F
    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    mul-float/2addr v7, p1

    add-float v3, v6, v7

    .line 2544
    .local v3, "degrees":F
    iget v1, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cx:F

    .line 2545
    .local v1, "centerX":F
    iget v2, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cy:F

    .line 2546
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/mapps/android/view/AdView$CameraAnim;->mCamera:Landroid/graphics/Camera;

    .line 2548
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 2549
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 2551
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 2552
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 2553
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 2555
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2556
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2557
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 2532
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2533
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdView$CameraAnim;->mCamera:Landroid/graphics/Camera;

    .line 2534
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cx:F

    .line 2535
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/mapps/android/view/AdView$CameraAnim;->cy:F

    .line 2536
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdView$CameraAnim;->setDuration(J)V

    .line 2537
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView$CameraAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2538
    return-void
.end method
