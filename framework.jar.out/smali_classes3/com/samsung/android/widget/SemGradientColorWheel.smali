.class Lcom/samsung/android/widget/SemGradientColorWheel;
.super Landroid/view/View;
.source "SemGradientColorWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemGradientColorWheel"


# instance fields
.field private final HUE_COLORS:[I

.field private mCurX:F

.field private mCurY:F

.field private mCursorBitmap:Landroid/graphics/Bitmap;

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorPaintSize:I

.field private final mCursorShadowSize:I

.field private final mCursorSize:I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

.field private mOrbitalRadius:I

.field private mRadius:I

.field private mSaturationPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->HUE_COLORS:[I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050354

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaintSize:I

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorSize:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050355

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    .line 57
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    return-object v2

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    .line 192
    .local v9, "scaleWidth":F
    const/4 v8, 0x0

    .line 194
    .local v8, "scaleHeight":F
    if-lez p2, :cond_1

    .line 195
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 196
    :cond_1
    if-lez p3, :cond_2

    .line 197
    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 199
    :cond_2
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 202
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private updateCursorPosition(FF)V
    .locals 10
    .param p1, "hue"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 174
    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v0, v4, v6

    .line 175
    .local v0, "angle":D
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    mul-float v2, v3, p2

    .line 177
    .local v2, "distance":F
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    .line 178
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 173
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    .line 162
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    .line 163
    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    .line 159
    return-void
.end method

.method init(I)V
    .locals 13
    .param p1, "wheelSize"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 62
    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    add-int/2addr p1, v1

    .line 63
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    .line 64
    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    .line 66
    new-instance v8, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->HUE_COLORS:[I

    invoke-direct {v8, v1, v2, v3, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 67
    .local v8, "hueShader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    .line 68
    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    .line 72
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 71
    const/4 v4, -0x1

    .line 72
    const/4 v5, 0x0

    .line 71
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 73
    .local v0, "saturationShader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10807b8

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 80
    .local v7, "cursorDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    invoke-static {v1, v7, v2, v3}, Lcom/samsung/android/widget/SemGradientColorWheel;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    .local v10, "resizedCursor":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v10, :cond_0

    .line 83
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 88
    :goto_0
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v9, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    invoke-virtual {p0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void

    .line 85
    .end local v9    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const-string/jumbo v1, "SemGradientColorWheel"

    const-string/jumbo v2, "resizeDrawable == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 138
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    iget v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaintSize:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorShadowSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 98
    .local v0, "distance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    .line 119
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 120
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    .line 121
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    if-eqz v3, :cond_3

    .line 125
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurY:F

    iget v4, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v6, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCurX:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    add-float v1, v3, v4

    .line 126
    .local v1, "hue":F
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 128
    .local v2, "saturation":F
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;->onColorChanged(FF)V

    .line 132
    .end local v1    # "hue":F
    .end local v2    # "saturation":F
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 133
    return v11

    .line 100
    :pswitch_1
    iget v3, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 101
    return v10

    .line 103
    :cond_2
    invoke-virtual {p0, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 130
    :cond_3
    const-string/jumbo v3, "SemGradientColorWheel"

    const-string/jumbo v4, "Listener is not set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 168
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 169
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 170
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorPosition(FF)V

    .line 167
    return-void
.end method

.method setOnColorWheelInterface(Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mListener:Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;

    .line 53
    return-void
.end method

.method updateCursorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    return-void
.end method
