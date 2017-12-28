.class public Landroid/preference/colorpicker/flask/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;
    }
.end annotation


# static fields
.field private static final STROKE_RATIO:F = 2.0f


# instance fields
.field private alpha:F

.field private alphaPatternPaint:Landroid/graphics/Paint;

.field private alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

.field private alphaSliderViewId:I

.field private backgroundColor:I

.field private colorChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/colorpicker/flask/OnColorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private colorEdit:Landroid/widget/EditText;

.field private colorPanel:Landroid/preference/InfinityColorPickerPanelView;

.field private colorPreview:Landroid/widget/ImageView;

.field private colorSelection:I

.field private colorTextChange:Landroid/text/TextWatcher;

.field private colorWheel:Landroid/graphics/Bitmap;

.field private colorWheelCanvas:Landroid/graphics/Canvas;

.field private colorWheelFill:Landroid/graphics/Paint;

.field private currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

.field private density:I

.field private initialColor:Ljava/lang/Integer;

.field private initialColors:[Ljava/lang/Integer;

.field private lightness:F

.field private lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

.field private lightnessSliderViewId:I

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/colorpicker/flask/OnColorSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pickerTextColor:Ljava/lang/Integer;

.field private renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

.field private selectorStroke1:Landroid/graphics/Paint;

.field private selectorStroke2:Landroid/graphics/Paint;

.field private textOk:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    iput v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    iput v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->backgroundColor:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iput v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->listeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/preference/colorpicker/flask/ColorPickerView$1;

    invoke-direct {v0, p0}, Landroid/preference/colorpicker/flask/ColorPickerView$1;-><init>(Landroid/preference/colorpicker/flask/ColorPickerView;)V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    invoke-direct {p0, p1, v2}, Landroid/preference/colorpicker/flask/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    iput v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    iput v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->backgroundColor:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iput v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->listeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/preference/colorpicker/flask/ColorPickerView$1;

    invoke-direct {v0, p0}, Landroid/preference/colorpicker/flask/ColorPickerView$1;-><init>(Landroid/preference/colorpicker/flask/ColorPickerView;)V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    invoke-direct {p0, p1, p2}, Landroid/preference/colorpicker/flask/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    iput v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    iput v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->backgroundColor:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iput v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->color(I)Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    invoke-static {}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->newPaint()Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/colorpicker/flask/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->listeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/preference/colorpicker/flask/ColorPickerView$1;

    invoke-direct {v0, p0}, Landroid/preference/colorpicker/flask/ColorPickerView$1;-><init>(Landroid/preference/colorpicker/flask/ColorPickerView;)V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    invoke-direct {p0, p1, p2}, Landroid/preference/colorpicker/flask/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawColorWheel()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v5, v8

    const v4, 0x40033333    # 2.05f

    sub-float v5, v2, v4

    iget v6, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    int-to-float v6, v6

    div-float v6, v2, v6

    sub-float v3, v5, v6

    iget v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v5, v3, v5

    div-float v0, v5, v8

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    invoke-interface {v5}, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;->getRenderOption()Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    move-result-object v1

    iget v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    iput v5, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->density:I

    iput v3, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->maxRadius:F

    iput v0, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->cSize:F

    iput v4, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->strokeWidth:F

    iget v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    iput v5, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->alpha:F

    iget v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    iput v5, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->lightness:F

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    iput-object v5, v1, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    invoke-interface {v5, v1}, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;->initWith(Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;)V

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    invoke-interface {v5}, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;->draw()V

    goto :goto_0
.end method

.method private findNearestByColor(I)Landroid/preference/colorpicker/flask/ColorCircle;
    .locals 30

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v3, v0, [F

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v11, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v22, 0x1

    aget v22, v3, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    aget v24, v3, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L    # 180.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v14, v22, v24

    const/16 v22, 0x1

    aget v22, v3, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    aget v24, v3, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L    # 180.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v18, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v2}, Landroid/preference/colorpicker/flask/ColorCircle;->getHsv()[F

    move-result-object v10

    const/16 v23, 0x1

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x0

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v16, v24, v26

    const/16 v23, 0x1

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x0

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v20, v24, v26

    sub-double v6, v14, v16

    sub-double v8, v18, v20

    mul-double v24, v6, v6

    mul-double v26, v8, v8

    add-double v4, v24, v26

    cmpg-double v23, v4, v12

    if-gez v23, :cond_0

    move-wide v12, v4

    move-object v11, v2

    goto :goto_0

    :cond_1
    return-object v11
.end method

.method private findNearestByPosition(FF)Landroid/preference/colorpicker/flask/ColorCircle;
    .locals 8

    const/4 v1, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iget-object v6, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    invoke-interface {v6}, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v0, p1, p2}, Landroid/preference/colorpicker/flask/ColorCircle;->sqDist(FF)D

    move-result-wide v2

    cmpl-double v7, v4, v2

    if-lez v7, :cond_0

    move-wide v4, v2

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v2, 0xa

    iput v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    iput-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->pickerTextColor:Ljava/lang/Integer;

    invoke-static {v4}, Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;->indexOf(I)Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/colorpicker/flask/builder/ColorWheelRendererBuilder;->getRenderer(Landroid/preference/colorpicker/flask/ColorPickerView$WHEEL_TYPE;)Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    move-result-object v0

    iput v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSliderViewId:I

    iput v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSliderViewId:I

    invoke-virtual {p0, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->setRenderer(Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;)V

    iget v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    invoke-virtual {p0, v2}, Landroid/preference/colorpicker/flask/ColorPickerView;->setDensity(I)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setInitialColor(IZ)V

    return-void
.end method

.method private setColorPreviewColor(I)V
    .locals 5

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorPanel:Landroid/preference/InfinityColorPickerPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/InfinityColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->textOk:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {p1, v4}, Landroid/preference/InfinityColorPickerPreference;->darken(IF)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private setColorText(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Landroid/preference/colorpicker/flask/Utils;->getHexString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->inverseColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setColorToSliders(I)V
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    invoke-virtual {v0, p1}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->setColor(I)V

    :cond_0
    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    invoke-virtual {v0, p1}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->setColor(I)V

    :cond_1
    return-void
.end method

.method private updateColorWheel()V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getMeasuredHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v1, v0

    :cond_0
    if-gtz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/preference/colorpicker/flask/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->drawColorWheel()V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addOnColorChangedListener(Landroid/preference/colorpicker/flask/OnColorChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnColorSelectedListener(Landroid/preference/colorpicker/flask/OnColorSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callOnColorChangedListeners(II)V
    .locals 4

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorChangedListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/colorpicker/flask/OnColorChangedListener;

    :try_start_0
    invoke-interface {v1, p2}, Landroid/preference/colorpicker/flask/OnColorChangedListener;->onColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllColors()[Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v1}, Landroid/preference/colorpicker/flask/ColorCircle;->getColor()I

    move-result v1

    iget v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    invoke-static {v1, v2}, Landroid/preference/colorpicker/flask/Utils;->colorAtLightness(IF)I

    move-result v0

    :cond_0
    iget v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    invoke-static {v1, v0}, Landroid/preference/colorpicker/flask/Utils;->adjustAlpha(FI)I

    move-result v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->backgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    const v3, 0x40033333    # 2.05f

    sub-float v0, v2, v3

    iget v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    int-to-float v2, v2

    div-float v2, v0, v2

    div-float v1, v2, v5

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    iget v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    invoke-virtual {v3, v4}, Landroid/preference/colorpicker/flask/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    iget v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v2}, Landroid/preference/colorpicker/flask/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v3}, Landroid/preference/colorpicker/flask/ColorCircle;->getY()F

    move-result v3

    mul-float v4, v1, v5

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v2}, Landroid/preference/colorpicker/flask/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v3}, Landroid/preference/colorpicker/flask/ColorCircle;->getY()F

    move-result v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v1

    iget-object v5, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v2}, Landroid/preference/colorpicker/flask/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v3}, Landroid/preference/colorpicker/flask/ColorCircle;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v2}, Landroid/preference/colorpicker/flask/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v3}, Landroid/preference/colorpicker/flask/ColorCircle;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSliderViewId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSliderViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    invoke-virtual {p0, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->setAlphaSlider(Landroid/preference/colorpicker/flask/slider/AlphaSlider;)V

    :cond_0
    iget v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSliderViewId:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSliderViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    invoke-virtual {p0, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->setLightnessSlider(Landroid/preference/colorpicker/flask/slider/LightnessSlider;)V

    :cond_1
    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->updateColorWheel()V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->findNearestByColor(I)Landroid/preference/colorpicker/flask/ColorCircle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v3, 0x0

    if-nez v4, :cond_3

    move v3, p1

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_5

    move v0, p1

    :cond_1
    :goto_1
    move v2, v3

    if-ge v0, v3, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p0, v2, v2}, Landroid/preference/colorpicker/flask/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    :cond_3
    if-ne v4, v5, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_0

    :cond_4
    if-ne v4, v6, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_0

    :cond_5
    if-ne v1, v5, :cond_6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    :cond_6
    if-ne v4, v6, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->updateColorWheel()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    const/4 v4, 0x1

    return v4

    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/preference/colorpicker/flask/ColorPickerView;->findNearestByPosition(FF)Landroid/preference/colorpicker/flask/ColorCircle;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->callOnColorChangedListeners(II)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-direct {p0, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorToSliders(I)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v3

    iget-object v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->listeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/colorpicker/flask/OnColorSelectedListener;

    :try_start_0
    invoke-interface {v2, v3}, Landroid/preference/colorpicker/flask/OnColorSelectedListener;->onColorSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorToSliders(I)V

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorText(IZ)V

    invoke-direct {p0, v3}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorPreviewColor(I)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->updateColorWheel()V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->findNearestByColor(I)Landroid/preference/colorpicker/flask/ColorCircle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    return-void
.end method

.method public setAlphaSlider(Landroid/preference/colorpicker/flask/slider/AlphaSlider;)V
    .locals 2

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    invoke-virtual {v0, p0}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->setColorPicker(Landroid/preference/colorpicker/flask/ColorPickerView;)V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setAlphaValue(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v0

    iput p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    iget v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    invoke-static {v1}, Landroid/preference/colorpicker/flask/Utils;->alphaValueAsInt(F)I

    move-result v1

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    iget v3, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    invoke-virtual {v2, v3}, Landroid/preference/colorpicker/flask/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorText(IZ)V

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->setColor(I)V

    :cond_0
    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/colorpicker/flask/ColorPickerView;->callOnColorChangedListeners(II)V

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->updateColorWheel()V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(IZ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/preference/colorpicker/flask/ColorPickerView;->setInitialColor(IZ)V

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->updateColorWheel()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorText(IZ)V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColorEdit(Landroid/widget/EditText;)V
    .locals 2

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setColorEditTextColor(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->pickerTextColor:Ljava/lang/Integer;

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setColorPanel(Landroid/preference/InfinityColorPickerPanelView;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorPanel:Landroid/preference/InfinityColorPickerPanelView;

    return-void
.end method

.method public setColorPreview(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorPreview:Landroid/widget/ImageView;

    return-void
.end method

.method public setDensity(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->density:I

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setInitialColor(IZ)V
    .locals 4

    const/4 v1, 0x3

    new-array v0, v1, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {p1}, Landroid/preference/colorpicker/flask/Utils;->getAlphaPercent(I)F

    move-result v1

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorPreviewColor(I)V

    invoke-direct {p0, p1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorToSliders(I)V

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorText(IZ)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/preference/colorpicker/flask/ColorPickerView;->findNearestByColor(I)Landroid/preference/colorpicker/flask/ColorCircle;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    return-void
.end method

.method public setInitialColors([Ljava/lang/Integer;I)V
    .locals 3

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iput p2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    aget-object v0, v1, v2

    if-nez v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/preference/colorpicker/flask/ColorPickerView;->setInitialColor(IZ)V

    return-void
.end method

.method public setLightness(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v0

    iput p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightness:F

    iget v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alpha:F

    invoke-static {v1}, Landroid/preference/colorpicker/flask/Utils;->alphaValueAsInt(F)I

    move-result v1

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->currentColorCircle:Landroid/preference/colorpicker/flask/ColorCircle;

    invoke-virtual {v2, p1}, Landroid/preference/colorpicker/flask/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColorText(IZ)V

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->alphaSlider:Landroid/preference/colorpicker/flask/slider/AlphaSlider;

    iget-object v2, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/colorpicker/flask/slider/AlphaSlider;->setColor(I)V

    :cond_0
    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/colorpicker/flask/ColorPickerView;->callOnColorChangedListeners(II)V

    invoke-direct {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->updateColorWheel()V

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setLightnessSlider(Landroid/preference/colorpicker/flask/slider/LightnessSlider;)V
    .locals 2

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    invoke-virtual {v0, p0}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->setColorPicker(Landroid/preference/colorpicker/flask/ColorPickerView;)V

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->lightnessSlider:Landroid/preference/colorpicker/flask/slider/LightnessSlider;

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/colorpicker/flask/slider/LightnessSlider;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setRenderer(Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->renderer:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;

    invoke-virtual {p0}, Landroid/preference/colorpicker/flask/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 3

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->colorSelection:I

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/preference/colorpicker/flask/ColorPickerView;->setColor(IZ)V

    goto :goto_0
.end method

.method public setTextOk(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/colorpicker/flask/ColorPickerView;->textOk:Landroid/widget/TextView;

    return-void
.end method
