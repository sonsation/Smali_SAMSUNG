.class public Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USE_VIGNETTE:Z


# instance fields
.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mCornerRadius:F

.field private final mHeight:I

.field private final mMargin:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIFI)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "cornerRadius"    # F
    .param p5, "margin"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 39
    iput p2, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mWidth:I

    .line 40
    iput p3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mHeight:I

    .line 41
    iput p4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mCornerRadius:F

    .line 43
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 49
    .local v0, "bmHeight":I
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .local v1, "m":Landroid/graphics/Matrix;
    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    .local v2, "scale":F
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mCornerRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 67
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 69
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 71
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    iput p5, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mMargin:I

    .line 76
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x2

    .line 157
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 158
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v4, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 162
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 163
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 165
    .restart local v3    # "height":I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    sget-object v5, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->TAG:Ljava/lang/String;

    const-string v6, "Failed to create bitmap from drawable!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "radius"    # I

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    instance-of v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;

    if-eqz v0, :cond_1

    .line 153
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p0

    .line 148
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;

    int-to-float v4, p3

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;IIFI)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mCornerRadius:F

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mMargin:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    return-void
.end method
