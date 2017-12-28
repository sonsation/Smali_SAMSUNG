.class public Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;
.super Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;
.source "FlowerColorWheelRenderer.java"


# instance fields
.field private hsv:[F

.field private selectorFill:Landroid/graphics/Paint;

.field private sizeJitter:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;-><init>()V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->sizeJitter:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorCircleList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v18

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Canvas;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v11, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->density:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->strokeWidth:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v15, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->maxRadius:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v8, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->cSize:F

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_3

    int-to-float v0, v12

    move/from16 v24, v0

    add-int/lit8 v25, v10, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v16, v24, v25

    int-to-float v0, v12

    move/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v24, v24, v25

    int-to-float v0, v10

    move/from16 v25, v0

    div-float v14, v24, v25

    mul-float v17, v15, v16

    const/high16 v24, 0x3fc00000    # 1.5f

    add-float v25, v24, v20

    if-nez v12, :cond_0

    const/16 v24, 0x0

    :goto_1
    add-float v24, v24, v8

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->calcTotalCount(FF)I

    move-result v24

    mul-int/lit8 v25, v10, 0x2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v13

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    add-int/lit8 v28, v12, 0x1

    rem-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v6, v24, v26

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v22, v11, v24

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v11, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-wide v26, 0x4066800000000000L    # 180.0

    mul-double v26, v26, v6

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    div-float v26, v17, v15

    aput v26, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->lightness:F

    move/from16 v26, v0

    aput v26, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->getAlphaValueAsInt()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    sub-float v25, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, v18

    if-lt v9, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorCircleList:Ljava/util/List;

    move-object/from16 v24, v0

    new-instance v25, Landroid/preference/colorpicker/flask/ColorCircle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/colorpicker/flask/ColorCircle;-><init>(FF[F)V

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->sizeJitter:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    mul-float v24, v24, v14

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->colorCircleList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/preference/colorpicker/flask/ColorCircle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/colorpicker/flask/ColorCircle;->set(FF[F)V

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
