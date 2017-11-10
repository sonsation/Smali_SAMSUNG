.class public Lcom/sec/android/app/camera/widget/gl/Trapezoid;
.super Lcom/samsung/android/glview/GLView;
.source "Trapezoid.java"


# instance fields
.field private final TRAPEZOID_LINE_COLOR:I

.field private final TRAPEZOID_LINE_WARNING_COLOR:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mTrapezoidBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    const v0, 0x7f0e0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZOID_LINE_COLOR:I

    const v0, 0x7f0e0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZOID_LINE_WARNING_COLOR:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setSize(FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZOID_LINE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    const v1, 0x7f0b022d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v3, v3, v1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLBitmapTexture;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    return-void
.end method


# virtual methods
.method public changeColor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZOID_LINE_WARNING_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZOID_LINE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    return-void
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLBitmapTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->reset()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setRect(FF[F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x3

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget v1, p3, v1

    const/4 v2, 0x5

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x6

    aget v1, p3, v1

    const/4 v2, 0x7

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    const v3, 0x7f0b022c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoidBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapezoid:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method
