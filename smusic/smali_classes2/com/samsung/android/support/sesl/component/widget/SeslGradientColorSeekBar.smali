.class Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;
.super Landroid/widget/SeekBar;
.source "SeslGradientColorSeekBar.java"


# static fields
.field private static final RIPPLE_EFFECT_OPACITY:I = 0x29

.field private static final SEEKBAR_MAX_VALUE:I = 0xff

.field private static final SEEKBAR_THUMB_OFFSET_DEFAULT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SeslGradientColorSeekBar"


# instance fields
.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 36
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mResources:Landroid/content/res/Resources;

    .line 38
    return-void

    .line 31
    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data
.end method

.method private initColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x2

    .line 49
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 50
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 52
    aget v1, v0, v3

    .line 53
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    .line 55
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mColors:[I

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v2, v3

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setProgress(I)V

    .line 57
    return-void
.end method

.method private initProgressDrawable()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/sesl/R$drawable;->sesl_color_picker_gradient_seekbar_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method private initThumb()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/support/sesl/R$drawable;->sesl_color_picker_gradient_seekbar_thumb:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/samsung/android/support/sesl/R$dimen;->sesl_color_picker_gradient_seekbar_thumb_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    .local v2, "thumbSize":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v1, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    .local v0, "resizedThumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mResources:Landroid/content/res/Resources;

    .line 89
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 88
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setThumbOffset(I)V

    .line 90
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/16 v4, 0x29

    .line 91
    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v6, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    .line 104
    .local v9, "scaleWidth":F
    const/4 v8, 0x0

    .line 106
    .local v8, "scaleHeight":F
    if-lez p2, :cond_1

    .line 107
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 109
    :cond_1
    if-lez p3, :cond_2

    .line 110
    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 113
    :cond_2
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 114
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 117
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setProgress(I)V

    .line 72
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 41
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setMax(I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->initColor(I)V

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->initProgressDrawable()V

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->initThumb()V

    .line 46
    return-void
.end method

.method restoreColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->initColor(I)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method
