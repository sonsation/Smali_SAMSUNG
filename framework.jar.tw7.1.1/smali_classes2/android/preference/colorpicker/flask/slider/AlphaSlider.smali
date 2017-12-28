.class public Landroid/preference/colorpicker/flask/slider/AlphaSlider;
.super Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;
.source "AlphaSlider.java"


# instance fields
.field private alphaPatternPaint:Landroid/graphics/Paint;

.field private barPaint:Landroid/graphics/Paint;

.field private clearingStroke:Landroid/graphics/Paint;

.field public color:I

.field private colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

.field private solid:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected createBitmaps()V
    .locals 2

    invoke-super {p0}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;->createBitmaps()V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v3, v11

    int-to-float v4, v9

    iget-object v5, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    div-int/lit16 v2, v11, 0x100

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-gt v12, v11, :cond_0

    int-to-float v0, v12

    add-int/lit8 v2, v11, -0x1

    int-to-float v2, v2

    div-float v8, v0, v2

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v12

    add-int v0, v12, v10

    int-to-float v5, v0

    int-to-float v6, v9

    iget-object v7, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v12, v10

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 4

    const/high16 v3, 0x3f400000    # 0.75f

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->value:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onValueChanged(F)V
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

    invoke-virtual {v0, p1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setAlphaValue(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->color:I

    invoke-static {p1}, Landroid/preference/colorpicker/flask/Utils;->getAlphaPercent(I)F

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->value:F

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->updateBar()V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorPicker(Landroid/preference/colorpicker/flask/ColorPickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

    return-void
.end method
