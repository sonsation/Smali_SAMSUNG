.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleArtworkEffectDrawable.java"


# static fields
.field private static final DEBUG_BOUNDS:Z = false

.field private static final SEGMENT_COUNT:I = 0x5a

.field private static sLines:[F


# instance fields
.field private final mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mBoundsRectF:Landroid/graphics/RectF;

.field private final mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

.field private final mGradientPaint:Landroid/graphics/Paint;

.field private final mInset:I

.field private final mOriginalHeight:I

.field private mStrokeWidthConversionK:F

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "originalHeight"    # I
    .param p4, "inset"    # I

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 49
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mOriginalHeight:I

    .line 50
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    .line 51
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapWidth:I

    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapHeight:I

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->setupGradientPaint()V

    .line 58
    return-void
.end method

.method private drawCircularLine(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "strokeWidth"    # F

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v1, v2, p2

    .line 89
    .local v1, "scaleWidth":F
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v0, v2, p2

    .line 90
    .local v0, "scaleHeight":F
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getRotationDegrees()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    div-float v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->ensureLineArray()V

    .line 95
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    return-void
.end method

.method private ensureLineArray()V
    .locals 13

    .prologue
    const v12, 0x3c0efa35

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 100
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    if-nez v6, :cond_0

    .line 102
    const/16 v6, 0x2d0

    new-array v6, v6, [F

    sput-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "a0":F
    const v5, 0x3c0efa35

    .line 106
    .local v5, "smallDelta":F
    const v2, 0x3d8efa35

    .line 107
    .local v2, "da":F
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "offset":I
    :goto_0
    const/16 v6, 0x5b

    if-ge v3, v6, :cond_0

    .line 108
    add-float v1, v0, v2

    .line 109
    .local v1, "a1":F
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v7, v4, 0x0

    sub-float v8, v0, v12

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 110
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v7, v4, 0x1

    sub-float v8, v0, v12

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 111
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v7, v4, 0x2

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 112
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->sLines:[F

    add-int/lit8 v7, v4, 0x3

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 113
    move v0, v1

    .line 107
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 116
    .end local v0    # "a0":F
    .end local v1    # "a1":F
    .end local v2    # "da":F
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .end local v5    # "smallDelta":F
    :cond_0
    return-void
.end method

.method private getIntrinsicSize()I
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapWidth:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapHeight:I

    if-ge v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapWidth:I

    .line 171
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapHeight:I

    goto :goto_0
.end method

.method private setupGradientPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getColors()[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 120
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getPositions()[F

    move-result-object v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 121
    .local v0, "gradient":Landroid/graphics/SweepGradient;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mStrokeWidthConversionK:F

    mul-float v0, v1, v2

    .line 64
    .local v0, "strokeWidth":F
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->drawCircularLine(Landroid/graphics/Canvas;F)V

    .line 83
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mOriginalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mStrokeWidthConversionK:F

    .line 151
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mStrokeWidthConversionK:F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mInset:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 152
    .local v0, "inset":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 155
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 128
    .local v0, "curAlpha":I
    if-eq v0, p1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAlpha(I)V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->invalidateSelf()V

    .line 133
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 139
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setFilterBitmap(Z)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;->invalidateSelf()V

    .line 179
    return-void
.end method
