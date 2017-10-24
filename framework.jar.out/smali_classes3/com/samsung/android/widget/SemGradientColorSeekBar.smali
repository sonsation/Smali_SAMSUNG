.class Lcom/samsung/android/widget/SemGradientColorSeekBar;
.super Landroid/widget/SeekBar;
.source "SemGradientColorSeekBar.java"


# static fields
.field private static final RIPPLE_EFFECT_OPACITY:I = 0x29

.field private static final SEEKBAR_THUMB_OFFSET_DEFAULT:I = 0xe

.field private static final TAG:Ljava/lang/String; = "SemGradientColorSeekBar"


# instance fields
.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private progressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    .line 34
    iput-object p1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private initColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x2

    .line 46
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 47
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 49
    aget v1, v0, v3

    .line 50
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    .line 52
    iget-object v2, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 53
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    return-void
.end method

.method private initProgressDrawable()V
    .locals 6

    .prologue
    .line 72
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105035b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 74
    .local v2, "radius":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060199

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 75
    .local v0, "progressDrawableColor":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105035c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    .local v1, "progressDrawableStroke":I
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v5, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 78
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 79
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 80
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 81
    iget-object v3, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method private initThumb()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 90
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105035d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    .local v2, "thumbSize":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v1, v2, v2}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "resizedThumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 95
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 98
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/16 v4, 0x29

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v6, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
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

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-object v2

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    .line 109
    .local v9, "scaleWidth":F
    const/4 v8, 0x0

    .line 111
    .local v8, "scaleHeight":F
    if-lez p2, :cond_1

    .line 112
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 113
    :cond_1
    if-lez p3, :cond_2

    .line 114
    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 116
    :cond_2
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 119
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 38
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initColor(I)V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initProgressDrawable()V

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initThumb()V

    .line 37
    return-void
.end method

.method restoreColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->initColor(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/widget/SemGradientColorSeekBar;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method
