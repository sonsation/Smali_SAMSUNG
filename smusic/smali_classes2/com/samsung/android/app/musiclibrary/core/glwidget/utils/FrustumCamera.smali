.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;
.source "FrustumCamera.java"


# instance fields
.field private mProjMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;-><init>()V

    .line 24
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mProjMatrix:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mViewMatrix:[F

    return-void
.end method

.method public static getCameraDistance(IF)F
    .locals 8
    .param p0, "displaySize"    # I
    .param p1, "fov"    # F

    .prologue
    .line 51
    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static physicalToScreen(FFFF)I
    .locals 2
    .param p0, "pSize"    # F
    .param p1, "cameraDistance"    # F
    .param p2, "distanceToProjection"    # F
    .param p3, "fov"    # F

    .prologue
    .line 89
    mul-float v0, p0, p1

    add-float v1, p1, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static screenToPhysical(IFFF)F
    .locals 2
    .param p0, "screenSize"    # I
    .param p1, "cameraDistance"    # F
    .param p2, "distanceToProjection"    # F
    .param p3, "fov"    # F

    .prologue
    .line 70
    add-float v0, p1, p2

    int-to-float v1, p0

    mul-float/2addr v0, v1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public doGetMatrix([F)V
    .locals 11
    .param p1, "matrix"    # [F

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mProjMatrix:[F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLeft:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mRight:F

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mBottom:F

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mTop:F

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mNear:F

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mFar:F

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mViewMatrix:[F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mX:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mY:F

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mZ:F

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLookX:F

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLookY:F

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mLookZ:F

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 34
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mViewMatrix:[F

    move-object v0, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 36
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->mNeedUpdateMatrix:Z

    .line 37
    return-void
.end method
