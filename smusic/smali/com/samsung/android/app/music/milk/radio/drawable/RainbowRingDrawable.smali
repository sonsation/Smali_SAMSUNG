.class public Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "RainbowRingDrawable.java"


# static fields
.field private static final COLORS:[I

.field private static final POSITIONS:[F


# instance fields
.field private mShader:Landroid/graphics/SweepGradient;

.field private mShaderOffsetAngleDegrees:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    .line 24
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->POSITIONS:[F

    return-void

    .line 18
    :array_0
    .array-data 4
        -0xff3a
        -0xff1501
        -0xf0eb01
        -0xff3a
    .end array-data

    .line 24
    :array_1
    .array-data 4
        0x0
        0x3eae147b    # 0.34f
        0x3f1eb852    # 0.62f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 37
    const/high16 v4, 0x7fc00000    # NaNf

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;-><init>(Landroid/content/Context;IIFI)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIFI)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "shaderOffsetAngle"    # F
    .param p5, "thickness"    # I

    .prologue
    const/4 v2, -0x1

    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, "res":Landroid/content/res/Resources;
    if-ne p2, v2, :cond_0

    .line 54
    const v0, 0x7f0d0054

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 57
    :cond_0
    if-ne p3, v2, :cond_1

    .line 58
    const v0, 0x7f0d0053

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 61
    :cond_1
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const v0, 0x7f100016

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float p4, v0

    .line 65
    :cond_2
    if-ne p5, v2, :cond_3

    .line 66
    const v0, 0x7f0d01d2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    :cond_3
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->init(Landroid/content/res/Resources;IIFI)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;)Landroid/graphics/SweepGradient;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->mShader:Landroid/graphics/SweepGradient;

    return-object v0
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 129
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private init(Landroid/content/res/Resources;IIFI)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "shaderOffsetAngle"    # F
    .param p5, "thickness"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 84
    .local v3, "p":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    int-to-float v4, p5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    new-instance v4, Landroid/graphics/SweepGradient;

    int-to-float v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, p3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget-object v7, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    sget-object v8, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->POSITIONS:[F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->mShader:Landroid/graphics/SweepGradient;

    .line 90
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .local v1, "m":Landroid/graphics/Matrix;
    iput p4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->mShaderOffsetAngleDegrees:F

    .line 92
    int-to-float v4, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, p3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v1, p4, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 93
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->mShader:Landroid/graphics/SweepGradient;

    invoke-virtual {v4, v1}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$1;-><init>(Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;)V

    .line 103
    .local v0, "fact":Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p2, p3}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->setBounds(IIII)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->setIntrinsicWidth(I)V

    .line 111
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->setIntrinsicHeight(I)V

    .line 113
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;

    invoke-direct {v2, p0, p5}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;-><init>(Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;I)V

    .line 125
    .local v2, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 126
    return-void
.end method


# virtual methods
.method public calculateColor(F)I
    .locals 13
    .param p1, "angleDeg"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 142
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->mShaderOffsetAngleDegrees:F

    sub-float v9, p1, v9

    const/high16 v10, 0x43b40000    # 360.0f

    div-float v8, v9, v10

    .line 144
    .local v8, "unit":F
    cmpg-float v9, v8, v11

    if-gez v9, :cond_0

    .line 145
    add-float/2addr v8, v12

    .line 148
    :cond_0
    cmpg-float v9, v8, v11

    if-gtz v9, :cond_1

    .line 149
    sget-object v9, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 166
    :goto_0
    return v9

    .line 151
    :cond_1
    cmpl-float v9, v8, v12

    if-ltz v9, :cond_2

    .line 152
    sget-object v9, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    sget-object v10, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 155
    :cond_2
    sget-object v9, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float v6, v8, v9

    .line 156
    .local v6, "p":F
    float-to-int v5, v6

    .line 157
    .local v5, "i":I
    int-to-float v9, v5

    sub-float/2addr v6, v9

    .line 159
    sget-object v9, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    aget v2, v9, v5

    .line 160
    .local v2, "c0":I
    sget-object v9, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->COLORS:[I

    add-int/lit8 v10, v5, 0x1

    aget v3, v9, v10

    .line 161
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->ave(IIF)I

    move-result v0

    .line 162
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->ave(IIF)I

    move-result v7

    .line 163
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->ave(IIF)I

    move-result v4

    .line 164
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->ave(IIF)I

    move-result v1

    .line 166
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    goto :goto_0
.end method

.method public getRainbowRingBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, "rainbowRing":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->setBounds(IIII)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    return-object v1
.end method
