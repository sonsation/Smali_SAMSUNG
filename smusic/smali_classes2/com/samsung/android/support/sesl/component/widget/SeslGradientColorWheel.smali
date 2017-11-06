.class Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;
.super Landroid/view/View;
.source "SeslGradientColorWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslGradientColorWheel"


# instance fields
.field private final HUE_COLORS:[I

.field private final mContext:Landroid/content/Context;

.field private mCursorBitmap:Landroid/graphics/Bitmap;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorPaintSize:I

.field private mCursorPosX:F

.field private mCursorPosY:F

.field private final mCursorShadowSize:I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

.field private mOrbitalRadius:I

.field private mRadius:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSaturationPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->HUE_COLORS:[I

    .line 61
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_color_picker_gradient_wheel_cursor_shadow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->init()V

    .line 70
    return-void

    .line 41
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

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 73
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_color_picker_gradient_wheel_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    add-int v11, v1, v2

    .line 75
    .local v11, "wheelSize":I
    div-int/lit8 v1, v11, 0x2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    .line 76
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    .line 78
    new-instance v8, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->HUE_COLORS:[I

    invoke-direct {v8, v1, v2, v3, v13}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 79
    .local v8, "hueShader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    .line 80
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 81
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 85
    .local v0, "saturationShader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_color_picker_gradient_wheel_cursor:I

    invoke-virtual {v1, v2, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    .local v7, "cursorDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    invoke-static {v1, v7, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .local v10, "resizedCursor":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v10, :cond_0

    .line 96
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 101
    :goto_0
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v9, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void

    .line 98
    .end local v9    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const-string v1, "SeslGradientColorWheel"

    const-string/jumbo v2, "resizeDrawable == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 204
    :goto_0
    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 190
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    .line 191
    .local v9, "scaleWidth":F
    const/4 v8, 0x0

    .line 193
    .local v8, "scaleHeight":F
    if-lez p2, :cond_1

    .line 194
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

    .line 200
    :cond_2
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 201
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 204
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateCursorPosition(FF)V
    .locals 10
    .param p1, "hue"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 173
    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v0, v4, v6

    .line 174
    .local v0, "angle":D
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    mul-float v2, v3, p2

    .line 176
    .local v2, "distance":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    .line 177
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->invalidate()V

    .line 180
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorShadowSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v8, v8

    sub-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 108
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 111
    .local v0, "distance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    .line 132
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 133
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    .line 134
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    if-eqz v3, :cond_3

    .line 138
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-double v6, v3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPosX:F

    sub-float/2addr v3, v5

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v3, v6

    const/high16 v5, 0x43340000    # 180.0f

    add-float v1, v3, v5

    .line 140
    .local v1, "hue":F
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 142
    .local v2, "saturation":F
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;->onWheelColorChanged(FF)V

    .line 146
    .end local v1    # "hue":F
    .end local v2    # "saturation":F
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->invalidate()V

    move v3, v4

    .line 147
    :cond_2
    return v3

    .line 113
    :pswitch_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_2

    .line 116
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->playSoundEffect(I)V

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 144
    :cond_3
    const-string v3, "SeslGradientColorWheel"

    const-string v5, "Listener is not set."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
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
    .line 167
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 168
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 169
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->updateCursorPosition(FF)V

    .line 170
    return-void
.end method

.method setOnColorWheelInterface(Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    .line 57
    return-void
.end method

.method updateCursorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    return-void
.end method
