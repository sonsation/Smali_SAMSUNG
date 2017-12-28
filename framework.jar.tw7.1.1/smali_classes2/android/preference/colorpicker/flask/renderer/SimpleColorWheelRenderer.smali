.class public Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;
.super Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;
.source "SimpleColorWheelRenderer.java"


# instance fields
.field private hsv:[F

.field private selectorFill:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;-><init>()V

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorCircleList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v16

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Canvas;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v9, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->density:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->maxRadius:F

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    int-to-float v0, v11

    move/from16 v21, v0

    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    mul-float v15, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->cSize:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->calcTotalCount(FF)I

    move-result v18

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v12

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    add-int/lit8 v21, v11, 0x1

    rem-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v6, v22, v24

    float-to-double v0, v15

    move-wide/from16 v22, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v10, v21

    float-to-double v0, v15

    move-wide/from16 v22, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v10, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-wide v24, 0x4066800000000000L    # 180.0

    mul-double v24, v24, v6

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    div-float v23, v15, v13

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->lightness:F

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->getAlphaValueAsInt()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->strokeWidth:F

    move/from16 v22, v0

    sub-float v22, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, v16

    if-lt v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorCircleList:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Landroid/preference/colorpicker/flask/ColorCircle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/colorpicker/flask/ColorCircle;-><init>(FF[F)V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->colorCircleList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/colorpicker/flask/ColorCircle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/renderer/SimpleColorWheelRenderer;->hsv:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/colorpicker/flask/ColorCircle;->set(FF[F)V

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
