.class public abstract Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;
.super Landroid/view/View;
.source "AbsCustomSlider.java"


# instance fields
.field protected bar:Landroid/graphics/Bitmap;

.field protected barCanvas:Landroid/graphics/Canvas;

.field protected barHeight:I

.field protected barOffsetX:I

.field protected bitmap:Landroid/graphics/Bitmap;

.field protected bitmapCanvas:Landroid/graphics/Canvas;

.field protected handleRadius:I

.field protected onValueChangedListener:Landroid/preference/colorpicker/flask/slider/OnValueChangedListener;

.field protected value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x14

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x14

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    return-void
.end method

.method private getDimension(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected createBitmaps()V
    .locals 5

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barOffsetX:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v3, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    :cond_2
    return-void
.end method

.method protected abstract drawBar(Landroid/graphics/Canvas;)V
.end method

.method protected abstract drawHandle(Landroid/graphics/Canvas;FF)V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    iget v4, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barOffsetX:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    int-to-float v2, v2

    iget v3, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v2, v0, v1}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->drawHandle(Landroid/graphics/Canvas;FF)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v2, 0x0

    if-nez v3, :cond_2

    move v2, p1

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_4

    move v0, p2

    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->setMeasuredDimension(II)V

    return-void

    :cond_2
    if-ne v3, v4, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    goto :goto_0

    :cond_4
    if-ne v1, v4, :cond_5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    :cond_5
    if-ne v1, v5, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->updateBar()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    const/4 v0, 0x0

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    invoke-virtual {p0, v0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->onValueChanged(F)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    invoke-virtual {p0, v0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->onValueChanged(F)V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->onValueChangedListener:Landroid/preference/colorpicker/flask/slider/OnValueChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->onValueChangedListener:Landroid/preference/colorpicker/flask/slider/OnValueChangedListener;

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->value:F

    invoke-interface {v0, v1}, Landroid/preference/colorpicker/flask/slider/OnValueChangedListener;->onValueChanged(F)V

    :cond_1
    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onValueChanged(F)V
.end method

.method public setOnValueChangedListener(Landroid/preference/colorpicker/flask/slider/OnValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->onValueChangedListener:Landroid/preference/colorpicker/flask/slider/OnValueChangedListener;

    return-void
.end method

.method protected updateBar()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barHeight:I

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->handleRadius:I

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barOffsetX:I

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->createBitmaps()V

    :cond_0
    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->barCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->drawBar(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->invalidate()V

    return-void
.end method
