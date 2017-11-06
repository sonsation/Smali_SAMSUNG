.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;
.source "OrthoCamera.java"


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

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mProjMatrix:[F

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mViewMatrix:[F

    return-void
.end method


# virtual methods
.method public doGetMatrix([F)V
    .locals 11
    .param p1, "matrix"    # [F

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mProjMatrix:[F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLeft:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mRight:F

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mBottom:F

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mTop:F

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mNear:F

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mFar:F

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mViewMatrix:[F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mX:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mY:F

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mZ:F

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLookX:F

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLookY:F

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mLookZ:F

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 35
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mViewMatrix:[F

    move-object v0, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;->mNeedUpdateMatrix:Z

    .line 38
    return-void
.end method
