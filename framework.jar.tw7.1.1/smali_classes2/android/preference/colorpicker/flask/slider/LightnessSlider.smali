.class public Landroid/preference/colorpicker/flask/slider/LightnessSlider;
.super Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;
.source "LightnessSlider.java"


# instance fields
.field private barPaint:Landroid/graphics/Paint;

.field private clearingStroke:Landroid/graphics/Paint;

.field private color:I

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

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/colorpicker/flask/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v0, 0x3

    new-array v7, v0, [F

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->color:I

    invoke-static {v0, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    div-int/lit16 v0, v9, 0x100

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-gt v10, v9, :cond_0

    int-to-float v0, v10

    add-int/lit8 v1, v9, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, v7, v11

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v10

    const/4 v2, 0x0

    add-int v0, v10, v8

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 3

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->color:I

    iget v2, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->value:F

    invoke-static {v1, v2}, Landroid/preference/colorpicker/flask/Utils;->colorAtLightness(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->handleRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->handleRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onValueChanged(F)V
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

    invoke-virtual {v0, p1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setLightness(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->color:I

    invoke-static {p1}, Landroid/preference/colorpicker/flask/Utils;->lightnessOfColor(I)F

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->value:F

    iget-object v0, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->updateBar()V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorPicker(Landroid/preference/colorpicker/flask/ColorPickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->colorPicker:Landroid/preference/colorpicker/flask/ColorPickerView;

    return-void
.end method
