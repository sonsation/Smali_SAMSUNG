.class public final Lcom/android/launcher3/common/drag/DragOutlineHelper;
.super Ljava/lang/Object;
.source "DragOutlineHelper.java"


# static fields
.field private static final BLUR_MASK_RADIUS:I = 0x2

.field private static final BRIGHT_OUTLINE_DRAW_COUNT_APPICON:I = 0x7

.field private static final BRIGHT_OUTLINE_DRAW_COUNT_WIDGET:I = 0x3

.field private static sInstance:Lcom/android/launcher3/common/drag/DragOutlineHelper;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mBrightOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 52
    .local v1, "scale":F
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 53
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 54
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBrightOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 62
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->sInstance:Lcom/android/launcher3/common/drag/DragOutlineHelper;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/launcher3/common/drag/DragOutlineHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->sInstance:Lcom/android/launcher3/common/drag/DragOutlineHelper;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->sInstance:Lcom/android/launcher3/common/drag/DragOutlineHelper;

    return-object v0
.end method


# virtual methods
.method createIconDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 10
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "outlineColor"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 106
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBrightOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 107
    new-array v4, v7, [I

    .line 108
    .local v4, "outerBlurOffset":[I
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    .local v3, "outerBlur":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 111
    new-array v2, v7, [I

    .line 112
    .local v2, "innerBlurOffset":[I
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, "innerBlur":Landroid/graphics/Bitmap;
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v8, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x7

    if-ge v0, v5, :cond_0

    .line 121
    aget v5, v4, v8

    int-to-float v5, v5

    aget v6, v4, v9

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    aget v5, v2, v8

    int-to-float v5, v5

    aget v6, v2, v9

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    return-void
.end method

.method createWidgetDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 11
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "outlineColor"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, "glowShape":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 76
    new-array v5, v8, [I

    .line 77
    .local v5, "outerBlurOffset":[I
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 79
    .local v4, "outerBlur":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBrightOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 80
    new-array v1, v8, [I

    .line 81
    .local v1, "brightOutlineOffset":[I
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "brightOutline":Landroid/graphics/Bitmap;
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    aget v6, v5, v9

    int-to-float v6, v6

    aget v7, v5, v10

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v3, v6, :cond_0

    .line 93
    aget v6, v1, v9

    int-to-float v6, v6

    aget v7, v1, v10

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/common/drag/DragOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    return-void
.end method
