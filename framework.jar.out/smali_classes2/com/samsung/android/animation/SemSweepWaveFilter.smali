.class public Lcom/samsung/android/animation/SemSweepWaveFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepWaveFilter.java"


# static fields
.field private static final SWIPE_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SemSweepWaveFilter"

.field private static final WAVE_ANIMATION_DURATION:I = 0x514

.field private static final WAVE_BG_ALPHA:I = 0xe1

.field private static sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final DEBUGGABLE:Z

.field private final WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private incrementYdown:F

.field private incrementYup:F

.field private final leftColor:I

.field private mBaseWaveColor:Landroid/graphics/Paint;

.field private mBgLeftGreen:Landroid/graphics/Paint;

.field private mBgMiddleBlue:Landroid/graphics/Paint;

.field private mBgRightYellow:Landroid/graphics/Paint;

.field private mDeltaX:F

.field private mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEndXOfActionUpAnimator:F

.field private mGradientWidth:F

.field private mIsActionMove:Z

.field private mListView:Landroid/widget/ListView;

.field private mMiddleBlueRect:Landroid/graphics/RectF;

.field private mPathDown:Landroid/graphics/Path;

.field private mPathUp:Landroid/graphics/Path;

.field private mPosition:I

.field private mSweepBitmap:Landroid/graphics/Bitmap;

.field private mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private mSweepProgress:F

.field private mSweepRect:Landroid/graphics/Rect;

.field private mViewForeground:Landroid/view/View;

.field private final middleColor:I

.field private final rightColor:I

.field private waveBaseColor:I

.field private waveControlPointHeight:F

.field private waveHeight:F

.field private waveValueAnimator:Landroid/animation/ValueAnimator;

.field private waveWidth:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/animation/SemSweepWaveFilter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/animation/SemSweepWaveFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/animation/SemSweepWaveFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemSweepWaveFilter;Landroid/view/View;FI)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->doDrawWaveEffect(Landroid/view/View;FI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    .line 33
    iput-boolean v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->DEBUGGABLE:Z

    .line 42
    const/16 v0, 0x61

    const/16 v1, 0xaa

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    .line 46
    const/16 v0, 0xc

    const/16 v1, 0x5c

    const/16 v2, 0x7e

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    .line 50
    const/16 v0, 0xe8

    const/16 v1, 0x9c

    invoke-static {v0, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    .line 59
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    .line 65
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    .line 71
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    .line 73
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 75
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 79
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 83
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    .line 85
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    .line 95
    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    .line 97
    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 99
    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 101
    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    .line 105
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    .line 107
    iput-boolean v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPosition:I

    .line 111
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    .line 117
    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    .line 120
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    .line 121
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    .line 122
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    .line 119
    return-void
.end method

.method private cancelRunningAnimator()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 408
    :cond_0
    return-void
.end method

.method private doDrawWaveEffect(Landroid/view/View;FI)V
    .locals 4
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, p2, v2

    .line 169
    .local v1, "sweepProgress":F
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    .line 173
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p3, v1, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 180
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 188
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 165
    :cond_2
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rc"    # Landroid/graphics/Rect;
    .param p3, "sweepProgress"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 416
    iget v9, p2, Landroid/graphics/Rect;->top:I

    .line 417
    .local v9, "rcTopOffset":I
    neg-int v0, v9

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 419
    .local v8, "listWidth":I
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 421
    int-to-float v0, v8

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    add-float/2addr v0, v1

    mul-float v10, v0, p3

    .line 423
    .local v10, "shift":F
    cmpl-float v0, v10, v2

    if-lez v0, :cond_0

    .line 425
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    sub-float v7, v10, v0

    .line 426
    .local v7, "gradientLeft":F
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    div-float/2addr v0, v5

    add-float v3, v7, v0

    .line 428
    .local v3, "waveCenterX":F
    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    .line 429
    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 428
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 415
    .end local v3    # "waveCenterX":F
    .end local v7    # "gradientLeft":F
    :goto_0
    return-void

    .line 430
    :cond_0
    cmpg-float v0, v10, v2

    if-gez v0, :cond_1

    .line 432
    int-to-float v0, v8

    add-float v7, v0, v10

    .line 433
    .restart local v7    # "gradientLeft":F
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    div-float/2addr v0, v5

    add-float v3, v7, v0

    .line 435
    .restart local v3    # "waveCenterX":F
    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    .line 436
    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    .line 435
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 439
    .end local v3    # "waveCenterX":F
    .end local v7    # "gradientLeft":F
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "waveCenterX"    # F
    .param p4, "drawLeftFirst"    # Z
    .param p5, "leftPaint"    # Landroid/graphics/Paint;
    .param p6, "rightPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 446
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v4, p3, v1

    .line 447
    .local v4, "startXdown":F
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v12, v1, v2

    .line 448
    .local v12, "startYdown":F
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v10, v1

    .line 449
    .local v10, "listWidth":F
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 450
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 451
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    .line 453
    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 452
    add-float/2addr v3, v12

    .line 453
    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v5, v12

    .line 454
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 453
    sub-float/2addr v5, v6

    .line 454
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v7, v12, v6

    move v6, v4

    .line 452
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 456
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v1, v12

    .line 457
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 456
    add-float v5, v1, v2

    .line 457
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    .line 458
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 457
    add-float/2addr v1, v12

    .line 458
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 457
    sub-float v7, v1, v2

    .line 459
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 458
    add-float v8, v4, v1

    .line 459
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    .line 456
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 461
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v12

    .line 462
    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 461
    add-float/2addr v3, v5

    .line 462
    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    .line 463
    const/high16 v6, 0x40400000    # 3.0f

    .line 462
    mul-float/2addr v5, v6

    add-float/2addr v5, v12

    .line 463
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 462
    sub-float/2addr v5, v6

    .line 464
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    .line 463
    add-float v7, v12, v6

    move v6, v4

    .line 461
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 466
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    .line 467
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 466
    add-float v5, v1, v2

    .line 467
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    .line 468
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    .line 467
    add-float/2addr v1, v12

    .line 468
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 467
    sub-float v7, v1, v2

    .line 469
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 468
    add-float v8, v4, v1

    .line 469
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    .line 466
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 471
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 474
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 475
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 476
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 477
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    .line 478
    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 477
    add-float/2addr v3, v12

    .line 478
    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v5, v12

    .line 479
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 478
    sub-float/2addr v5, v6

    .line 479
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v7, v12, v6

    move v6, v4

    .line 477
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 481
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v1, v12

    .line 482
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 481
    add-float v5, v1, v2

    .line 482
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    .line 483
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 482
    add-float/2addr v1, v12

    .line 483
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 482
    sub-float v7, v1, v2

    .line 484
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 483
    add-float v8, v4, v1

    .line 484
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    .line 481
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 486
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v12

    .line 487
    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 486
    add-float/2addr v3, v5

    .line 487
    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    .line 488
    const/high16 v6, 0x40400000    # 3.0f

    .line 487
    mul-float/2addr v5, v6

    add-float/2addr v5, v12

    .line 488
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 487
    sub-float/2addr v5, v6

    .line 489
    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    .line 488
    add-float v7, v12, v6

    move v6, v4

    .line 486
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 491
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    .line 492
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 491
    add-float v5, v1, v2

    .line 492
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    .line 493
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    .line 492
    add-float/2addr v1, v12

    .line 493
    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 492
    sub-float v7, v1, v2

    .line 494
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 493
    add-float v8, v4, v1

    .line 494
    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    .line 491
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 496
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v12

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 500
    .local v11, "saveCount":I
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 501
    if-eqz p4, :cond_0

    .line 502
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 503
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p6

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 508
    :goto_0
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 445
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p6

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 506
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sweepProgress"    # F

    .prologue
    const/4 v9, 0x0

    .line 292
    const/4 v5, 0x0

    .line 293
    .local v5, "viewTop":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 294
    .local v6, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 295
    .local v3, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 297
    .local v4, "viewLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 299
    .local v1, "parentView":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 300
    instance-of v7, v1, Landroid/widget/ListView;

    if-eqz v7, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 310
    :cond_0
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v5, v3

    invoke-direct {v7, v4, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    .line 317
    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 318
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 320
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-direct {p0, v0, v2, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 327
    return-object v0

    .line 305
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    add-int v5, v7, v8

    goto :goto_0
.end method

.method private getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 281
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 285
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v0
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    return-object v0
.end method

.method private initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "itemIndex"    # I
    .param p3, "listener"    # Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .prologue
    const/4 v7, 0x1

    .line 356
    move v1, p1

    .line 357
    .local v1, "initDeltaX":F
    move v3, p2

    .line 359
    .local v3, "position":I
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 361
    return-void

    .line 365
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 369
    .local v2, "itemHeight":I
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    .line 370
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 371
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    .line 372
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 374
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    .line 375
    div-int/lit8 v4, v2, 0xd

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    .line 377
    div-int/lit8 v4, v2, 0x4

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    .line 379
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 380
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 355
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    .line 384
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/animation/SemSweepWaveFilter$1;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter$1;-><init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 400
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 401
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 402
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x514

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 403
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private removeCachedBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 344
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 345
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 10
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "adjustedVelocityX"    # F
    .param p3, "scaledTouchSlop"    # I
    .param p4, "deltaX"    # F
    .param p5, "isSweepPattern"    # Z

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 214
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, p4, v8

    .line 215
    .local v6, "sweepProgress":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 217
    .local v1, "deltaXAbs":F
    int-to-float v8, v7

    cmpl-float v8, p4, v8

    if-lez v8, :cond_0

    .line 218
    int-to-float p4, v7

    .line 222
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-int/lit8 v9, p3, 0x6

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    if-eqz p5, :cond_1

    .line 225
    const-wide/16 v2, 0x258

    .line 226
    .local v2, "duration":J
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 242
    .local v4, "endX":F
    :goto_0
    iput v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    .line 244
    move v5, v6

    .line 245
    .local v5, "startX":F
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 246
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    sget-object v8, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    return-object v0

    .line 228
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":J
    .end local v4    # "endX":F
    .end local v5    # "startX":F
    :cond_1
    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpl-float v8, v1, v8

    if-lez v8, :cond_2

    .line 230
    const-wide/16 v2, 0x258

    .line 231
    .restart local v2    # "duration":J
    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .restart local v4    # "endX":F
    goto :goto_0

    .line 235
    .end local v2    # "duration":J
    .end local v4    # "endX":F
    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    const/high16 v9, 0x44160000    # 600.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-long v2, v8

    .line 236
    .restart local v2    # "duration":J
    const/4 v4, 0x0

    .restart local v4    # "endX":F
    goto :goto_0
.end method

.method public doMoveAction(Landroid/view/View;FI)V
    .locals 2
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, p2, v1

    .line 197
    .local v0, "sweepProgress":F
    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    .line 198
    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    .line 195
    return-void
.end method

.method public doRefresh()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->removeCachedBitmap()V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->cancelRunningAnimator()V

    .line 332
    return-void
.end method

.method public doUpActionWhenAnimationUpdate(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "sweepProgress"    # F

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    .line 266
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 271
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 260
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    :cond_0
    return-void
.end method

.method public getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 152
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 150
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    .local v0, "rect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public getEndXOfActionUpAnimator()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I
    .param p4, "listener"    # Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
    .param p5, "sweepConfig"    # Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    .line 352
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V

    .line 350
    return-void
.end method

.method public bridge synthetic isAnimationBack()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public setForegroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    .line 139
    return-void
.end method
