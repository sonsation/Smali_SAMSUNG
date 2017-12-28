.class public Lcom/android/launcher3/widget/view/WidgetImageView;
.super Landroid/view/View;
.source "WidgetImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 48
    return-void
.end method

.method private updateDstRectF()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 78
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    .end local v0    # "scale":F
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 80
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->updateDstRectF()V

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 95
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->updateDstRectF()V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->invalidate()V

    .line 53
    return-void
.end method
