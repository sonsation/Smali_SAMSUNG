.class public Landroid/preference/InfinityColorPickerPanelView;
.super Landroid/view/View;
.source "InfinityColorPickerPanelView.java"


# instance fields
.field private mAlphaPattern:Landroid/preference/InfinityColorPickerAlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/InfinityColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/InfinityColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDensity:F

    const v0, -0x919192

    iput v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mBorderColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mColor:I

    invoke-direct {p0}, Landroid/preference/InfinityColorPickerPanelView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDensity:F

    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/preference/InfinityColorPickerAlphaPatternDrawable;

    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Landroid/preference/InfinityColorPickerPanelView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Landroid/preference/InfinityColorPickerAlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Landroid/preference/InfinityColorPickerPanelView;->mAlphaPattern:Landroid/preference/InfinityColorPickerAlphaPatternDrawable;

    iget-object v5, p0, Landroid/preference/InfinityColorPickerPanelView;->mAlphaPattern:Landroid/preference/InfinityColorPickerAlphaPatternDrawable;

    iget-object v6, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/preference/InfinityColorPickerAlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/preference/InfinityColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/preference/InfinityColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mAlphaPattern:Landroid/preference/InfinityColorPickerAlphaPatternDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mAlphaPattern:Landroid/preference/InfinityColorPickerAlphaPatternDrawable;

    invoke-virtual {v1, p1}, Landroid/preference/InfinityColorPickerAlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/preference/InfinityColorPickerPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/preference/InfinityColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/preference/InfinityColorPickerPanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/preference/InfinityColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Landroid/preference/InfinityColorPickerPanelView;->setUpColorRect()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Landroid/preference/InfinityColorPickerPanelView;->mColor:I

    invoke-virtual {p0}, Landroid/preference/InfinityColorPickerPanelView;->invalidate()V

    return-void
.end method
