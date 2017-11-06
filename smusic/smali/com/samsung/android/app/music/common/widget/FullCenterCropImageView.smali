.class public Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;
.super Landroid/widget/ImageView;
.source "FullCenterCropImageView.java"


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 29
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 30
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplay:Landroid/view/Display;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 35
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplay:Landroid/view/Display;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 41
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 42
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplay:Landroid/view/Display;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 48
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 49
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplay:Landroid/view/Display;

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 69
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 97
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawableWidth:I

    .line 73
    .local v1, "dWidth":I
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawableHeight:I

    .line 75
    .local v0, "dHeight":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .local v3, "deviceWidth":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 79
    .local v2, "deviceHeight":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 82
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 84
    .local v5, "dy":F
    mul-int v7, v1, v2

    mul-int v8, v3, v0

    if-le v7, v8, :cond_1

    .line 85
    int-to-float v7, v2

    int-to-float v8, v0

    div-float v6, v7, v8

    .line 86
    .local v6, "scale":F
    int-to-float v7, v3

    int-to-float v8, v1

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float v4, v7, v9

    .line 92
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 93
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v8, v4, v9

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v9, v5

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 95
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 96
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 88
    .end local v6    # "scale":F
    :cond_1
    int-to-float v7, v3

    int-to-float v8, v1

    div-float v6, v7, v8

    .line 89
    .restart local v6    # "scale":F
    int-to-float v7, v2

    int-to-float v8, v0

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float v5, v7, v9

    goto :goto_1
.end method

.method public setDisplay(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDisplay:Landroid/view/Display;

    .line 62
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawableWidth:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/FullCenterCropImageView;->mDrawableHeight:I

    .line 58
    return-void
.end method
