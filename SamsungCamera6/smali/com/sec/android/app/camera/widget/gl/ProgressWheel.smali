.class public Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
.super Lcom/samsung/android/glview/GLView;
.source "ProgressWheel.java"


# static fields
.field public static final DEFAULT_PROGRESS_WHEEL:I = 0x0

.field public static final SHUTTER_PROGRESS_WHEEL:I = 0x1

.field public static final TIMER_PROGRESS_WHEEL:I = 0x2


# instance fields
.field private final ARC_END_COLOR:I

.field private final ARC_START_COLOR:I

.field private final RIM_COLOR:I

.field private final RIM_THICKNESS:F

.field private final SHUTTER_BGCOLOR:I

.field private final SHUTTER_COLOR:I

.field private final SHUTTER_THICKNESS:F

.field private final TIMER_BGCOLOR:I

.field private final TIMER_COLOR:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mRimPaint:Landroid/graphics/Paint;

.field private mRimRect:Landroid/graphics/RectF;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 10

    const/4 v3, 0x1

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0e0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    const v0, 0x7f0b0154

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const v0, 0x7f0e0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    const v0, 0x7f0e002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    const v0, 0x7f0e0030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_COLOR:I

    const v0, 0x7f0e002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_BGCOLOR:I

    const v0, 0x7f0b0155

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const v0, 0x7f0e0033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_COLOR:I

    const v0, 0x7f0e0032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_BGCOLOR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v1, v8

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v3, v8

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v5, v8

    sub-float v5, p4, v5

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v7, v8

    sub-float v7, p5, v7

    invoke-virtual {v0, v1, v3, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v9, v9, v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLBitmapTexture;->mParent:Lcom/samsung/android/glview/GLView;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0e0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    const v0, 0x7f0b0154

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const v0, 0x7f0e0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    const v0, 0x7f0e002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    const v0, 0x7f0e0030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_COLOR:I

    const v0, 0x7f0e002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_BGCOLOR:I

    const v0, 0x7f0b0155

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const v0, 0x7f0e0033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_COLOR:I

    const v0, 0x7f0e0032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_BGCOLOR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p4, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, p5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLBitmapTexture;->mParent:Lcom/samsung/android/glview/GLView;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_BGCOLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_BGCOLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p4, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, p5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->getLoaded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getWidth()F

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getHeight()F

    move-result v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setSize(FF)V

    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->reset()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 13

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v12, 0x40000000    # 2.0f

    monitor-enter p0

    int-to-float v0, p1

    div-float v10, v0, v2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v0, v12

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z

    monitor-exit p0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v0, v12

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v0, 0x168

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v9, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v0, v12

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method
