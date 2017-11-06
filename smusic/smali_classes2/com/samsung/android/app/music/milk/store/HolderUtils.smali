.class public Lcom/samsung/android/app/music/milk/store/HolderUtils;
.super Ljava/lang/Object;
.source "HolderUtils.java"


# static fields
.field private static mScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dimenToPx(Landroid/content/res/Resources;I)F
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dimenId"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static dimenToRoundedPx(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dimenId"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static forceRatioResize(Landroid/view/View;FII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ratio"    # F
    .param p2, "horizontalMarginDp"    # I
    .param p3, "verticalSpaceDp"    # I

    .prologue
    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {p2}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->dpToPx(I)I

    move-result v1

    invoke-static {p3}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->dpToPx(I)I

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->forceRatioResizePx(Landroid/view/View;IFII)V

    .line 37
    return-void
.end method

.method public static forceRatioResize(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 52
    :cond_1
    instance-of v1, p0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 54
    :cond_2
    instance-of v1, p0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 55
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static forceRatioResizePx(Landroid/view/View;IFII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "baseWidth"    # I
    .param p2, "ratio"    # F
    .param p3, "horizontalMarginPx"    # I
    .param p4, "verticalSpacePx"    # I

    .prologue
    .line 40
    sub-int v1, p1, p3

    .line 41
    .local v1, "width":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v0, v2, p4

    .line 42
    .local v0, "height":I
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->forceRatioResize(Landroid/view/View;II)V

    .line 43
    return-void
.end method

.method public static getRandNum(I)I
    .locals 6
    .param p0, "maxNum"    # I

    .prologue
    .line 91
    new-instance v2, Ljava/util/Random;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 92
    .local v2, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 93
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 94
    .local v0, "randNum":I
    rem-int v1, v0, p0

    .line 95
    .local v1, "randTestIndex":I
    return v1
.end method

.method public static getScreenSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/android/app/music/milk/store/HolderUtils;->mScreenSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 29
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 30
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 32
    sput-object v1, Lcom/samsung/android/app/music/milk/store/HolderUtils;->mScreenSize:Landroid/graphics/Point;

    .line 33
    return-void
.end method

.method public static setGradientBackground(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable$Orientation;IIII)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "startColor"    # I
    .param p3, "startColorAlpha"    # I
    .param p4, "endColor"    # I
    .param p5, "endColorAlpha"    # I

    .prologue
    .line 65
    invoke-static {p2, p3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 66
    .local v2, "startARGBColor":I
    invoke-static {p4, p5}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 67
    .local v1, "endARGBColor":I
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-direct {v0, p1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 71
    .local v0, "drawable1":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public static setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V
    .locals 0
    .param p0, "imageView"    # Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageLoadingListener"    # Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;
    .param p3, "defResId"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 88
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
