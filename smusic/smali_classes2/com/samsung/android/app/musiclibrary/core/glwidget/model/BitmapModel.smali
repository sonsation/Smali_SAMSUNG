.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;
.source "BitmapModel.java"


# instance fields
.field private mAlpha:F

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapUpdated:Z

.field private mNeedUpdateRatio:Z

.field private mRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;-><init>()V

    .line 32
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAlpha:F

    .line 34
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAlpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapRatio()F
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRectangular:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 73
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    .line 78
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    return v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mRatio:F

    goto :goto_0
.end method

.method public getHSVCorrection()[F
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mHSV:[F

    return-object v0
.end method

.method public isBitmapMutable()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isBitmapUpdated()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmapUpdated:Z

    return v0
.end method

.method public isTouched(FFI)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 4
    .param p1, "touchedX"    # F
    .param p2, "touchedY"    # F
    .param p3, "screenHeight"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 115
    .local v0, "isVisible":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getScreenBoundsRect(I)Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    .end local p0    # "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    :goto_1
    return-object p0

    .line 114
    .end local v0    # "isVisible":Z
    .restart local p0    # "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    .restart local v0    # "isVisible":Z
    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public resetBitmapUpdated()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmapUpdated:Z

    .line 93
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mAlpha:F

    .line 107
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isBitmapMutable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmapUpdated:Z

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    .line 54
    return-void
.end method

.method public setRectangular(Z)V
    .locals 1
    .param p1, "rectangular"    # Z

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AccessibilityModel;->setRectangular(Z)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->mNeedUpdateRatio:Z

    .line 67
    return-void
.end method
