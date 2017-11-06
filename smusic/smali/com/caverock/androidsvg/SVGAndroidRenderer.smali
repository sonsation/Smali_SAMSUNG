.class public Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    }
.end annotation


# static fields
.field private static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmapStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canvas:Landroid/graphics/Canvas;

.field private canvasStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

.field private directRenderingMode:Z

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "defaultDPI"    # F

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 212
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    .line 213
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 214
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 0
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # F
    .param p8, "x8"    # F
    .param p9, "x9"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    .prologue
    .line 86
    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3686
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3688
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3712
    :cond_0
    :goto_0
    return-void

    .line 3690
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3693
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 3694
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3697
    :cond_2
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 3698
    check-cast v1, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 3708
    .local v0, "path":Landroid/graphics/Path;
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3710
    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3711
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3699
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_3
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 3700
    check-cast v1, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_1

    .line 3701
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_4
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v1, :cond_5

    move-object v1, p1

    .line 3702
    check-cast v1, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_1

    .line 3703
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_5
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 3704
    check-cast v1, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3661
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3663
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3681
    :cond_0
    :goto_0
    return-void

    .line 3665
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3668
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 3669
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3671
    :cond_2
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v1, p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3673
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_3

    .line 3674
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3676
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3679
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3680
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "allowUse"    # Z
    .param p3, "combinedPath"    # Landroid/graphics/Path;
    .param p4, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 3595
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3619
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    return-void

    .line 3599
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3601
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    .line 3602
    if-eqz p2, :cond_1

    .line 3603
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3618
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    goto :goto_0

    .line 3605
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    const-string v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3607
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_3

    .line 3608
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3609
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_4

    .line 3610
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3611
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v0, :cond_5

    .line 3612
    check-cast p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3614
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_5
    const-string v0, "Invalid %s element found in clipPath definition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3742
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v7, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3744
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3778
    :goto_0
    return-void

    .line 3747
    :cond_0
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v7, :cond_1

    .line 3748
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3751
    :cond_1
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_8

    :cond_2
    move v5, v8

    .line 3752
    .local v5, "x":F
    :goto_1
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    :cond_3
    move v6, v8

    .line 3753
    .local v6, "y":F
    :goto_2
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v7, :cond_4

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_a

    :cond_4
    move v0, v8

    .line 3754
    .local v0, "dx":F
    :goto_3
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    :cond_5
    move v1, v8

    .line 3757
    .local v1, "dy":F
    :goto_4
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v7, v8, :cond_6

    .line 3758
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v4

    .line 3759
    .local v4, "textWidth":F
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v7, v8, :cond_c

    .line 3760
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    sub-float/2addr v5, v7

    .line 3766
    .end local v4    # "textWidth":F
    :cond_6
    :goto_5
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v7, :cond_7

    .line 3767
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v2, p0, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 3768
    .local v2, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3769
    new-instance v7, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3771
    .end local v2    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3773
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 3774
    .local v3, "textAsPath":Landroid/graphics/Path;
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float v8, v5, v0

    add-float v9, v6, v1

    invoke-direct {v7, p0, v8, v9, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3776
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3777
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 3751
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v3    # "textAsPath":Landroid/graphics/Path;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_8
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto/16 :goto_1

    .line 3752
    .restart local v5    # "x":F
    :cond_9
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto/16 :goto_2

    .line 3753
    .restart local v6    # "y":F
    :cond_a
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto/16 :goto_3

    .line 3754
    .restart local v0    # "dx":F
    :cond_b
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto/16 :goto_4

    .line 3762
    .restart local v1    # "dy":F
    .restart local v4    # "textWidth":F
    :cond_c
    sub-float/2addr v5, v4

    goto :goto_5
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    .line 3717
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3719
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3737
    :cond_0
    :goto_0
    return-void

    .line 3721
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3724
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 3725
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3728
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3729
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_3

    .line 3730
    const-string v1, "Use reference \'%s\' not found"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3734
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3736
    invoke-direct {p0, v0, v4, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 44
    .param p0, "lastX"    # F
    .param p1, "lastY"    # F
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "angle"    # F
    .param p5, "largeArcFlag"    # Z
    .param p6, "sweepFlag"    # Z
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pather"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    .prologue
    .line 2554
    cmpl-float v4, p0, p7

    if-nez v4, :cond_1

    cmpl-float v4, p1, p8

    if-nez v4, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2562
    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_3

    .line 2563
    :cond_2
    move-object/from16 v0, p9

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    goto :goto_0

    .line 2568
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 2569
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 2572
    move/from16 v0, p4

    float-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v11, v4

    .line 2573
    .local v11, "angleRad":F
    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v17, v0

    .line 2574
    .local v17, "cosAngle":F
    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v32, v0

    .line 2581
    .local v32, "sinAngle":F
    sub-float v4, p0, p7

    const/high16 v5, 0x40000000    # 2.0f

    div-float v22, v4, v5

    .line 2582
    .local v22, "dx2":F
    sub-float v4, p1, p8

    const/high16 v5, 0x40000000    # 2.0f

    div-float v23, v4, v5

    .line 2585
    .local v23, "dy2":F
    mul-float v4, v17, v22

    mul-float v5, v32, v23

    add-float v40, v4, v5

    .line 2586
    .local v40, "x1":F
    move/from16 v0, v32

    neg-float v4, v0

    mul-float v4, v4, v22

    mul-float v5, v17, v23

    add-float v42, v4, v5

    .line 2588
    .local v42, "y1":F
    mul-float v29, p2, p2

    .line 2589
    .local v29, "rx_sq":F
    mul-float v30, p3, p3

    .line 2590
    .local v30, "ry_sq":F
    mul-float v41, v40, v40

    .line 2591
    .local v41, "x1_sq":F
    mul-float v43, v42, v42

    .line 2596
    .local v43, "y1_sq":F
    div-float v4, v41, v29

    div-float v5, v43, v30

    add-float v28, v4, v5

    .line 2597
    .local v28, "radiiCheck":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v28, v4

    if-lez v4, :cond_4

    .line 2598
    move/from16 v0, v28

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float p2, p2, v4

    .line 2599
    move/from16 v0, v28

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float p3, p3, v4

    .line 2600
    mul-float v29, p2, p2

    .line 2601
    mul-float v30, p3, p3

    .line 2605
    :cond_4
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_7

    const/high16 v31, -0x40800000    # -1.0f

    .line 2606
    .local v31, "sign":F
    :goto_1
    mul-float v4, v29, v30

    mul-float v5, v29, v43

    sub-float/2addr v4, v5

    mul-float v5, v30, v41

    sub-float/2addr v4, v5

    mul-float v5, v29, v43

    mul-float v6, v30, v41

    add-float/2addr v5, v6

    div-float v33, v4, v5

    .line 2607
    .local v33, "sq":F
    const/4 v4, 0x0

    cmpg-float v4, v33, v4

    if-gez v4, :cond_5

    const/16 v33, 0x0

    .line 2608
    :cond_5
    move/from16 v0, v31

    float-to-double v4, v0

    move/from16 v0, v33

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v16, v0

    .line 2609
    .local v16, "coef":F
    mul-float v4, p2, v42

    div-float v4, v4, p3

    mul-float v19, v16, v4

    .line 2610
    .local v19, "cx1":F
    mul-float v4, p3, v40

    div-float v4, v4, p2

    neg-float v4, v4

    mul-float v21, v16, v4

    .line 2613
    .local v21, "cy1":F
    add-float v4, p0, p7

    const/high16 v5, 0x40000000    # 2.0f

    div-float v34, v4, v5

    .line 2614
    .local v34, "sx2":F
    add-float v4, p1, p8

    const/high16 v5, 0x40000000    # 2.0f

    div-float v35, v4, v5

    .line 2615
    .local v35, "sy2":F
    mul-float v4, v17, v19

    mul-float v5, v32, v21

    sub-float/2addr v4, v5

    add-float v18, v34, v4

    .line 2616
    .local v18, "cx":F
    mul-float v4, v32, v19

    mul-float v5, v17, v21

    add-float/2addr v4, v5

    add-float v20, v35, v4

    .line 2619
    .local v20, "cy":F
    sub-float v4, v40, v19

    div-float v36, v4, p2

    .line 2620
    .local v36, "ux":F
    sub-float v4, v42, v21

    div-float v37, v4, p3

    .line 2621
    .local v37, "uy":F
    move/from16 v0, v40

    neg-float v4, v0

    sub-float v4, v4, v19

    div-float v38, v4, p2

    .line 2622
    .local v38, "vx":F
    move/from16 v0, v42

    neg-float v4, v0

    sub-float v4, v4, v21

    div-float v39, v4, p3

    .line 2626
    .local v39, "vy":F
    mul-float v4, v36, v36

    mul-float v5, v37, v37

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v26, v0

    .line 2627
    .local v26, "n":F
    move/from16 v27, v36

    .line 2628
    .local v27, "p":F
    const/4 v4, 0x0

    cmpg-float v4, v37, v4

    if-gez v4, :cond_8

    const/high16 v31, -0x40800000    # -1.0f

    .line 2629
    :goto_2
    move/from16 v0, v31

    float-to-double v4, v0

    div-float v6, v27, v26

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v14, v4

    .line 2632
    .local v14, "angleStart":F
    mul-float v4, v36, v36

    mul-float v5, v37, v37

    add-float/2addr v4, v5

    mul-float v5, v38, v38

    mul-float v6, v39, v39

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v26, v0

    .line 2633
    mul-float v4, v36, v38

    mul-float v5, v37, v39

    add-float v27, v4, v5

    .line 2634
    mul-float v4, v36, v39

    mul-float v5, v37, v38

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    const/high16 v31, -0x40800000    # -1.0f

    .line 2635
    :goto_3
    move/from16 v0, v31

    float-to-double v4, v0

    div-float v6, v27, v26

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    .line 2636
    .local v12, "angleExtent":D
    if-nez p6, :cond_a

    const-wide/16 v4, 0x0

    cmpl-double v4, v12, v4

    if-lez v4, :cond_a

    .line 2637
    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v12, v4

    .line 2641
    :cond_6
    :goto_4
    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v12, v4

    .line 2642
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v14, v4

    .line 2648
    float-to-double v4, v14

    invoke-static {v4, v5, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v15

    .line 2651
    .local v15, "bezierPoints":[F
    new-instance v25, Landroid/graphics/Matrix;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Matrix;-><init>()V

    .line 2652
    .local v25, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2653
    move-object/from16 v0, v25

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2654
    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2655
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2661
    array-length v4, v15

    add-int/lit8 v4, v4, -0x2

    aput p7, v15, v4

    .line 2662
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    aput p8, v15, v4

    .line 2665
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_5
    array-length v4, v15

    move/from16 v0, v24

    if-ge v0, v4, :cond_0

    .line 2667
    aget v5, v15, v24

    add-int/lit8 v4, v24, 0x1

    aget v6, v15, v4

    add-int/lit8 v4, v24, 0x2

    aget v7, v15, v4

    add-int/lit8 v4, v24, 0x3

    aget v8, v15, v4

    add-int/lit8 v4, v24, 0x4

    aget v9, v15, v4

    add-int/lit8 v4, v24, 0x5

    aget v10, v15, v4

    move-object/from16 v4, p9

    invoke-interface/range {v4 .. v10}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2665
    add-int/lit8 v24, v24, 0x6

    goto :goto_5

    .line 2605
    .end local v12    # "angleExtent":D
    .end local v14    # "angleStart":F
    .end local v15    # "bezierPoints":[F
    .end local v16    # "coef":F
    .end local v18    # "cx":F
    .end local v19    # "cx1":F
    .end local v20    # "cy":F
    .end local v21    # "cy1":F
    .end local v24    # "i":I
    .end local v25    # "m":Landroid/graphics/Matrix;
    .end local v26    # "n":F
    .end local v27    # "p":F
    .end local v31    # "sign":F
    .end local v33    # "sq":F
    .end local v34    # "sx2":F
    .end local v35    # "sy2":F
    .end local v36    # "ux":F
    .end local v37    # "uy":F
    .end local v38    # "vx":F
    .end local v39    # "vy":F
    :cond_7
    const/high16 v31, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 2628
    .restart local v16    # "coef":F
    .restart local v18    # "cx":F
    .restart local v19    # "cx1":F
    .restart local v20    # "cy":F
    .restart local v21    # "cy1":F
    .restart local v26    # "n":F
    .restart local v27    # "p":F
    .restart local v31    # "sign":F
    .restart local v33    # "sq":F
    .restart local v34    # "sx2":F
    .restart local v35    # "sy2":F
    .restart local v36    # "ux":F
    .restart local v37    # "uy":F
    .restart local v38    # "vx":F
    .restart local v39    # "vy":F
    :cond_8
    const/high16 v31, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 2634
    .restart local v14    # "angleStart":F
    :cond_9
    const/high16 v31, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 2638
    .restart local v12    # "angleExtent":D
    :cond_a
    if-eqz p6, :cond_6

    const-wide/16 v4, 0x0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_6

    .line 2639
    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v12, v4

    goto :goto_4
.end method

.method private static arcToBeziers(DD)[F
    .locals 24
    .param p0, "angleStart"    # D
    .param p2, "angleExtent"    # D

    .prologue
    .line 2688
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x4056800000000000L    # 90.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v13, v0

    .line 2690
    .local v13, "numSegments":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 2691
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 2692
    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v16, p2, v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 2695
    .local v4, "angleIncrement":F
    const-wide v16, 0x3ff5555555555555L    # 1.3333333333333333

    float-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    add-double v18, v18, v20

    div-double v6, v16, v18

    .line 2697
    .local v6, "controlLength":D
    mul-int/lit8 v16, v13, 0x6

    move/from16 v0, v16

    new-array v5, v0, [F

    .line 2698
    .local v5, "coords":[F
    const/4 v14, 0x0

    .line 2700
    .local v14, "pos":I
    const/4 v12, 0x0

    .local v12, "i":I
    move v15, v14

    .end local v14    # "pos":I
    .local v15, "pos":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 2702
    int-to-float v0, v12

    move/from16 v16, v0

    mul-float v16, v16, v4

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, p0, v16

    .line 2704
    .local v2, "angle":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 2705
    .local v8, "dx":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 2707
    .local v10, "dy":D
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    mul-double v16, v6, v10

    sub-double v16, v8, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v15

    .line 2708
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    mul-double v16, v6, v8

    add-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v14

    .line 2710
    float-to-double v0, v4

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 2711
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 2712
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 2713
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    mul-double v16, v6, v10

    add-double v16, v16, v8

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v15

    .line 2714
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    mul-double v16, v6, v8

    sub-double v16, v10, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v14

    .line 2716
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    double-to-float v0, v8

    move/from16 v16, v0

    aput v16, v5, v15

    .line 2717
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    double-to-float v0, v10

    move/from16 v16, v0

    aput v16, v5, v14

    .line 2700
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2719
    .end local v2    # "angle":D
    .end local v8    # "dx":D
    .end local v10    # "dy":D
    :cond_0
    return-object v5
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 11
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1244
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 1245
    .local v2, "_x1":F
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 1246
    .local v3, "_y1":F
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 1247
    .local v6, "_x2":F
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 1249
    .local v7, "_y2":F
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1250
    .local v10, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v8, v6, v2

    sub-float v9, v7, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    return-object v10

    .end local v2    # "_x1":F
    .end local v3    # "_y1":F
    .end local v6    # "_x2":F
    .end local v7    # "_y2":F
    .end local v10    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_0
    move v2, v0

    .line 1244
    goto :goto_0

    .restart local v2    # "_x1":F
    :cond_1
    move v3, v0

    .line 1245
    goto :goto_1

    .restart local v3    # "_y1":F
    :cond_2
    move v6, v0

    .line 1246
    goto :goto_2

    .restart local v6    # "_x2":F
    :cond_3
    move v7, v0

    .line 1247
    goto :goto_3
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1301
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v9, v2

    .line 1303
    .local v9, "numPoints":I
    const/4 v2, 0x2

    if-ge v9, v2, :cond_1

    .line 1304
    const/4 v8, 0x0

    .line 1336
    :cond_0
    :goto_0
    return-object v8

    .line 1306
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v8, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v10

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v5, v11

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1308
    .local v0, "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    const/4 v3, 0x0

    .local v3, "x":F
    const/4 v4, 0x0

    .line 1310
    .local v4, "y":F
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_2

    .line 1311
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v2, v7

    .line 1312
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v5, v7, 0x1

    aget v4, v2, v5

    .line 1313
    invoke-virtual {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1314
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v5, v3, v2

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v6, v4, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1316
    .local v1, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    move-object v0, v1

    .line 1310
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 1320
    .end local v1    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    :cond_2
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v2, :cond_3

    .line 1321
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v10

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v11

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    .line 1322
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v2, v10

    .line 1323
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v2, v11

    .line 1324
    invoke-virtual {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1325
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v5, v3, v2

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v6, v4, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1329
    .restart local v1    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1330
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-interface {v8, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1334
    .end local v1    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    :cond_3
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1084
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1085
    .local v0, "pathBounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1086
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 2
    .param p1, "parentTextObj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .prologue
    .line 1696
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$1;)V

    .line 1697
    .local v0, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1698
    iget v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v1
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1985
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1987
    .local v2, "m":Landroid/graphics/Matrix;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v8

    if-nez v8, :cond_1

    .line 2048
    :cond_0
    :goto_0
    return-object v2

    .line 1990
    :cond_1
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v9, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v5, v8, v9

    .line 1991
    .local v5, "xScale":F
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v9, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v7, v8, v9

    .line 1992
    .local v7, "yScale":F
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v4, v8

    .line 1993
    .local v4, "xOffset":F
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v6, v8

    .line 1996
    .local v6, "yOffset":F
    sget-object v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v8}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1998
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1999
    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2000
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 2006
    :cond_2
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v8

    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v8, v9, :cond_3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2008
    .local v3, "scale":F
    :goto_1
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v1, v8, v3

    .line 2009
    .local v1, "imageW":F
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v0, v8, v3

    .line 2011
    .local v0, "imageH":F
    sget-object v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2028
    :goto_2
    sget-object v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 2045
    :goto_3
    :pswitch_0
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2046
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2047
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 2006
    .end local v0    # "imageH":F
    .end local v1    # "imageW":F
    .end local v3    # "scale":F
    :cond_3
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 2016
    .restart local v0    # "imageH":F
    .restart local v1    # "imageW":F
    .restart local v3    # "scale":F
    :pswitch_1
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v1

    div-float/2addr v8, v10

    sub-float/2addr v4, v8

    .line 2017
    goto :goto_2

    .line 2021
    :pswitch_2
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v1

    sub-float/2addr v4, v8

    .line 2022
    goto :goto_2

    .line 2033
    :pswitch_3
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v0

    div-float/2addr v8, v10

    sub-float/2addr v6, v8

    .line 2034
    goto :goto_3

    .line 2038
    :pswitch_4
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v0

    sub-float/2addr v6, v8

    .line 2039
    goto :goto_3

    .line 2011
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2028
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    .line 3531
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 3532
    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3537
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 3590
    :goto_0
    return-void

    .line 3541
    :cond_0
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v4

    .line 3542
    .local v4, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v4, :cond_1

    .line 3543
    const-string v8, "ClipPath reference \'%s\' not found"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v9, v7, v6

    invoke-static {v8, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 3547
    check-cast v1, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 3550
    .local v1, "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3551
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 3555
    :cond_2
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    move v5, v7

    .line 3557
    .local v5, "userUnits":Z
    :goto_1
    instance-of v8, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v8, :cond_5

    if-nez v5, :cond_5

    .line 3558
    const-string v8, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v8, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v5    # "userUnits":Z
    :cond_4
    move v5, v6

    .line 3555
    goto :goto_1

    .line 3562
    .restart local v5    # "userUnits":Z
    :cond_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3564
    if-nez v5, :cond_6

    .line 3566
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 3567
    .local v3, "m":Landroid/graphics/Matrix;
    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3568
    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3569
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3571
    .end local v3    # "m":Landroid/graphics/Matrix;
    :cond_6
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz v6, :cond_7

    .line 3573
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3578
    :cond_7
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3580
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3582
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 3583
    .local v2, "combinedPath":Landroid/graphics/Path;
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3585
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v7, v2, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 3587
    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_8
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3589
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    goto/16 :goto_0
.end method

.method private checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 3148
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3150
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_1

    .line 3151
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3153
    :cond_1
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1940
    const-string v3, "data:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-object v2

    .line 1942
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 1945
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1946
    .local v0, "comma":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 1948
    const-string v3, ";base64"

    add-int/lit8 v4, v0, -0x7

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1950
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1951
    .local v1, "imageData":[B
    array-length v2, v1

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 7
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontWeight"    # Ljava/lang/Integer;
    .param p3, "fontStyle"    # Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2384
    const/4 v0, 0x0

    .line 2387
    .local v0, "font":Landroid/graphics/Typeface;
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-ne p3, v5, :cond_1

    move v1, v3

    .line 2388
    .local v1, "italic":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 2391
    .local v2, "typefaceStyle":I
    :goto_1
    const-string/jumbo v3, "serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2392
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2402
    :cond_0
    :goto_2
    return-object v0

    .end local v1    # "italic":Z
    .end local v2    # "typefaceStyle":I
    :cond_1
    move v1, v4

    .line 2387
    goto :goto_0

    .restart local v1    # "italic":Z
    :cond_2
    move v2, v3

    .line 2388
    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1

    .line 2393
    .restart local v2    # "typefaceStyle":I
    :cond_5
    const-string/jumbo v3, "sans-serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2394
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2395
    :cond_6
    const-string v3, "monospace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2396
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2397
    :cond_7
    const-string v3, "cursive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2398
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2399
    :cond_8
    const-string v3, "fantasy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2400
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .prologue
    .line 416
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 419
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 420
    .local v0, "bobj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    goto :goto_0
.end method

.method private clamp255(F)I
    .locals 3
    .param p1, "val"    # F

    .prologue
    const/16 v1, 0xff

    .line 2408
    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 2409
    .local v0, "i":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "i":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_1
    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private clipStatePop()V
    .locals 1

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3640
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3641
    return-void
.end method

.method private clipStatePush()V
    .locals 2

    .prologue
    .line 3628
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 3630
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3632
    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 509
    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 6
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "paintref"    # Lcom/caverock/androidsvg/SVG$PaintReference;

    .prologue
    const/4 v5, 0x0

    .line 3161
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3162
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_4

    .line 3164
    const-string v2, "%s reference \'%s\' not found"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v1, "Fill"

    :goto_0
    aput-object v1, v3, v5

    const/4 v1, 0x1

    iget-object v4, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3165
    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v1, :cond_2

    .line 3166
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v1, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3182
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    :goto_1
    return-void

    .line 3164
    .restart local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    const-string v1, "Stroke"

    goto :goto_0

    .line 3168
    :cond_2
    if-eqz p1, :cond_3

    .line 3169
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_1

    .line 3171
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_1

    .line 3175
    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 3176
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    .line 3177
    :cond_5
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 3178
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    .line 3179
    :cond_6
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-eqz v1, :cond_0

    .line 3180
    check-cast v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    goto :goto_1
.end method

.method private display()Z
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1959
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 431
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v2, :cond_0

    .line 433
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 434
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 435
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 436
    .local v0, "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    .line 443
    .end local v0    # "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    .end local v1    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 451
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v5, v6, :cond_2

    .line 457
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 459
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 460
    .local v4, "transformedPath":Landroid/graphics/Path;
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 462
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 465
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    .line 466
    .local v3, "shader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 467
    .local v1, "currentShaderMatrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_0

    .line 468
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 469
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 470
    .local v2, "newShaderMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 471
    invoke-virtual {v3, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 475
    .end local v2    # "newShaderMatrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 478
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 480
    if-eqz v3, :cond_1

    .line 481
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 487
    .end local v0    # "currentMatrix":Landroid/graphics/Matrix;
    .end local v1    # "currentShaderMatrix":Landroid/graphics/Matrix;
    .end local v3    # "shader":Landroid/graphics/Shader;
    .end local v4    # "transformedPath":Landroid/graphics/Path;
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private duplicateCanvas()V
    .locals 6

    .prologue
    .line 743
    :try_start_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 744
    .local v1, "newBM":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 746
    .local v2, "newCanvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 747
    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    return-void

    .line 748
    .end local v1    # "newBM":Landroid/graphics/Bitmap;
    .end local v2    # "newCanvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "Not enough memory to create temporary bitmaps for mask processing"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    throw v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1512
    :cond_0
    return-void

    .line 1498
    :cond_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1499
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1501
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1505
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_3

    .line 1506
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v4, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1510
    :goto_2
    const/4 v1, 0x0

    .line 1511
    goto :goto_0

    .line 1506
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1508
    .restart local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    goto :goto_2
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 501
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "parent"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "str"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1782
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1783
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1785
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1787
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1789
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_1

    .line 1790
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1794
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 1795
    goto :goto_0

    .line 1791
    .restart local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_0

    .line 1792
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v4, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1796
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 6
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$GradientElement;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3410
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    .line 3411
    .local v2, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v2, :cond_1

    .line 3413
    const-string v3, "Gradient reference \'%s\' not found"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3448
    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    :goto_0
    return-void

    .line 3416
    .restart local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v3, :cond_2

    .line 3417
    const-string v3, "Gradient href attributes must point to other gradient elements"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3420
    :cond_2
    if-ne v2, p1, :cond_3

    .line 3421
    const-string v3, "Circular reference in gradient href attribute \'%s\'"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 3425
    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 3427
    .local v1, "grRef":Lcom/caverock/androidsvg/SVG$GradientElement;
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    .line 3428
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 3429
    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v3, :cond_5

    .line 3430
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 3431
    :cond_5
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v3, :cond_6

    .line 3432
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 3433
    :cond_6
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3434
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    .line 3438
    :cond_7
    :try_start_0
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v3, :cond_8

    .line 3439
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3446
    :goto_1
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3447
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto :goto_0

    .line 3441
    .restart local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_8
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3444
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .prologue
    .line 3453
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3454
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3455
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3456
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3457
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3458
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3459
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3460
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3461
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .prologue
    .line 3466
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3467
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3468
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3469
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3470
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3471
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 3472
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3473
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3474
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    .line 3475
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3476
    :cond_4
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 5
    .param p1, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4126
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v2, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 4127
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v1, :cond_1

    .line 4129
    const-string v2, "Pattern reference \'%s\' not found"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4168
    :cond_0
    :goto_0
    return-void

    .line 4132
    :cond_1
    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;

    if-nez v2, :cond_2

    .line 4133
    const-string v2, "Pattern href attributes must point to other pattern elements"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4136
    :cond_2
    if-ne v1, p1, :cond_3

    .line 4137
    const-string v2, "Circular reference in pattern href attribute \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 4141
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 4143
    .local v0, "pRef":Lcom/caverock/androidsvg/SVG$Pattern;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    .line 4144
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 4145
    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    .line 4146
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 4147
    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_6

    .line 4148
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 4149
    :cond_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_7

    .line 4150
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 4151
    :cond_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_8

    .line 4152
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 4153
    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_9

    .line 4154
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 4155
    :cond_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_a

    .line 4156
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 4158
    :cond_a
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4159
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    .line 4160
    :cond_b
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_c

    .line 4161
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4162
    :cond_c
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v2, :cond_d

    .line 4163
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4166
    :cond_d
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4167
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 33
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;

    .prologue
    .line 3996
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_2

    const/16 v17, 0x1

    .line 4000
    .local v17, "patternUnitsAreUser":Z
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 4001
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 4003
    :cond_0
    if-eqz v17, :cond_7

    .line 4005
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v26

    .line 4006
    .local v26, "x":F
    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v27

    .line 4007
    .local v27, "y":F
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v25

    .line 4008
    .local v25, "w":F
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    .line 4022
    .local v10, "h":F
    :goto_4
    const/16 v28, 0x0

    cmpl-float v28, v25, v28

    if-eqz v28, :cond_1

    const/16 v28, 0x0

    cmpl-float v28, v10, v28

    if-nez v28, :cond_c

    .line 4116
    :cond_1
    :goto_5
    return-void

    .line 3996
    .end local v10    # "h":F
    .end local v17    # "patternUnitsAreUser":Z
    .end local v25    # "w":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 4005
    .restart local v17    # "patternUnitsAreUser":Z
    :cond_3
    const/16 v26, 0x0

    goto :goto_1

    .line 4006
    .restart local v26    # "x":F
    :cond_4
    const/16 v27, 0x0

    goto :goto_2

    .line 4007
    .restart local v27    # "y":F
    :cond_5
    const/16 v25, 0x0

    goto :goto_3

    .line 4008
    .restart local v25    # "w":F
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 4013
    .end local v25    # "w":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v26

    .line 4014
    .restart local v26    # "x":F
    :goto_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v27

    .line 4015
    .restart local v27    # "y":F
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v25

    .line 4016
    .restart local v25    # "w":F
    :goto_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    .line 4017
    .restart local v10    # "h":F
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v29, v0

    mul-float v29, v29, v26

    add-float v26, v28, v29

    .line 4018
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v29, v0

    mul-float v29, v29, v27

    add-float v27, v28, v29

    .line 4019
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v28, v0

    mul-float v25, v25, v28

    .line 4020
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v28, v0

    mul-float v10, v10, v28

    goto/16 :goto_4

    .line 4013
    .end local v10    # "h":F
    .end local v25    # "w":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_8
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 4014
    .restart local v26    # "x":F
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 4015
    .restart local v27    # "y":F
    :cond_a
    const/16 v25, 0x0

    goto :goto_8

    .line 4016
    .restart local v25    # "w":F
    :cond_b
    const/4 v10, 0x0

    goto :goto_9

    .line 4026
    .restart local v10    # "h":F
    :cond_c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v18, v0

    .line 4029
    .local v18, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4034
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 4035
    .local v6, "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v6, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 4036
    iget-object v0, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 4037
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4040
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4042
    .local v15, "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 4044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4048
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 4049
    .local v12, "inverse":Landroid/graphics/Matrix;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 4050
    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v29, v0

    aput v29, v19, v28

    const/16 v28, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    aput v29, v19, v28

    const/16 v28, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    .line 4051
    invoke-virtual/range {v29 .. v29}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v29

    aput v29, v19, v28

    const/16 v28, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    aput v29, v19, v28

    const/16 v28, 0x4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    .line 4052
    invoke-virtual/range {v29 .. v29}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v29

    aput v29, v19, v28

    const/16 v28, 0x5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v29

    aput v29, v19, v28

    const/16 v28, 0x6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v29, v0

    aput v29, v19, v28

    const/16 v28, 0x7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    .line 4053
    invoke-virtual/range {v29 .. v29}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v29

    aput v29, v19, v28

    .line 4054
    .local v19, "pts":[F
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4056
    new-instance v20, Landroid/graphics/RectF;

    const/16 v28, 0x0

    aget v28, v19, v28

    const/16 v29, 0x1

    aget v29, v19, v29

    const/16 v30, 0x0

    aget v30, v19, v30

    const/16 v31, 0x1

    aget v31, v19, v31

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4057
    .local v20, "rect":Landroid/graphics/RectF;
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_b
    const/16 v28, 0x6

    move/from16 v0, v28

    if-gt v11, v0, :cond_12

    .line 4058
    aget v28, v19, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_d

    aget v28, v19, v11

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 4059
    :cond_d
    aget v28, v19, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_e

    aget v28, v19, v11

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 4060
    :cond_e
    add-int/lit8 v28, v11, 0x1

    aget v28, v19, v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_f

    add-int/lit8 v28, v11, 0x1

    aget v28, v19, v28

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 4061
    :cond_f
    add-int/lit8 v28, v11, 0x1

    aget v28, v19, v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_10

    add-int/lit8 v28, v11, 0x1

    aget v28, v19, v28

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 4057
    :cond_10
    add-int/lit8 v11, v11, 0x2

    goto :goto_b

    .line 4026
    .end local v6    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .end local v11    # "i":I
    .end local v12    # "inverse":Landroid/graphics/Matrix;
    .end local v15    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .end local v18    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v19    # "pts":[F
    .end local v20    # "rect":Landroid/graphics/RectF;
    :cond_11
    sget-object v18, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_a

    .line 4063
    .restart local v6    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v11    # "i":I
    .restart local v12    # "inverse":Landroid/graphics/Matrix;
    .restart local v15    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v18    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .restart local v19    # "pts":[F
    .restart local v20    # "rect":Landroid/graphics/RectF;
    :cond_12
    new-instance v15, Lcom/caverock/androidsvg/SVG$Box;

    .end local v15    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 4067
    .end local v11    # "i":I
    .end local v12    # "inverse":Landroid/graphics/Matrix;
    .end local v19    # "pts":[F
    .end local v20    # "rect":Landroid/graphics/RectF;
    .restart local v15    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    :cond_13
    iget v0, v15, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v28, v0

    sub-float v28, v28, v26

    div-float v28, v28, v25

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v25

    add-float v13, v26, v28

    .line 4068
    .local v13, "originX":F
    iget v0, v15, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v28, v0

    sub-float v28, v28, v27

    div-float v28, v28, v10

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v10

    add-float v14, v27, v28

    .line 4070
    .local v14, "originY":F
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v21

    .line 4071
    .local v21, "right":F
    invoke-virtual {v15}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v7

    .line 4072
    .local v7, "bottom":F
    new-instance v22, Lcom/caverock/androidsvg/SVG$Box;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 4073
    .local v22, "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    move/from16 v24, v14

    .local v24, "stepY":F
    :goto_c
    cmpg-float v28, v24, v7

    if-gez v28, :cond_1c

    .line 4075
    move/from16 v23, v13

    .local v23, "stepX":F
    :goto_d
    cmpg-float v28, v23, v21

    if-gez v28, :cond_1b

    .line 4077
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 4078
    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 4080
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_14

    .line 4083
    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v30, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 4086
    :cond_14
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4100
    :cond_15
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v9

    .line 4103
    .local v9, "compositing":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 4104
    .local v8, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_f

    .line 4092
    .end local v8    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v9    # "compositing":Z
    :cond_16
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_18

    :cond_17
    const/16 v16, 0x1

    .line 4094
    .local v16, "patternContentUnitsAreUser":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4095
    if-nez v16, :cond_15

    .line 4096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_e

    .line 4092
    .end local v16    # "patternContentUnitsAreUser":Z
    :cond_18
    const/16 v16, 0x0

    goto :goto_10

    .line 4107
    .restart local v9    # "compositing":Z
    :cond_19
    if-eqz v9, :cond_1a

    .line 4108
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4111
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4075
    add-float v23, v23, v25

    goto/16 :goto_d

    .line 4073
    .end local v9    # "compositing":Z
    :cond_1b
    add-float v24, v24, v10

    goto/16 :goto_c

    .line 4115
    .end local v23    # "stepX":F
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_5
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .prologue
    .line 3095
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 3096
    .local v0, "newState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3097
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    return-object v1
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "newState"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .prologue
    .line 3103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3107
    .local v1, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgElementBase;>;"
    :goto_0
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v2, :cond_0

    .line 3108
    const/4 v3, 0x0

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3110
    :cond_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v2, :cond_1

    .line 3116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 3117
    .local v0, "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    invoke-direct {p0, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    goto :goto_1

    .line 3112
    .end local v0    # "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_1
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 3120
    :cond_2
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v2

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3121
    iget-object v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_3

    .line 3122
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3126
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 3129
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iput-boolean v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 3131
    return-object p2
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_1

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1440
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 3646
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    .line 3647
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 3654
    :goto_0
    return-object v0

    .line 3648
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$FillRule:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3654
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 3651
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 3648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    .line 2416
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 2423
    :goto_0
    return-object v0

    .line 2417
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$FillRule:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2423
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 2420
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 2417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized initialiseSupportedFeaturesMap()V
    .locals 3

    .prologue
    .line 891
    const-class v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 910
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Structure"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 911
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicStructure"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 913
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "ConditionalProcessing"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 914
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Image"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 915
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Style"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 916
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "ViewportAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 917
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Shape"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 919
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicText"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 920
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "PaintAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicPaintAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 922
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "OpacityAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicGraphicsAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 925
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Marker"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 927
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Gradient"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Pattern"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Clip"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicClip"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Mask"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "View"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    monitor-exit v1

    return-void

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4
    .param p1, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p2, "flag"    # J

    .prologue
    .line 2054
    iget-wide v0, p1, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLinearGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 24
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .prologue
    .line 3187
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3188
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3190
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v19, 0x1

    .line 3191
    .local v19, "userUnits":Z
    :goto_0
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 3194
    .local v17, "paint":Landroid/graphics/Paint;
    :goto_1
    if-eqz v19, :cond_9

    .line 3196
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v20

    .line 3197
    .local v20, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 3198
    .local v4, "_x1":F
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 3199
    .local v5, "_y1":F
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 3200
    .local v6, "_x2":F
    :goto_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 3211
    .end local v20    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    .local v7, "_y2":F
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3214
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3217
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 3218
    .local v15, "m":Landroid/graphics/Matrix;
    if-nez v19, :cond_1

    .line 3220
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3221
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3223
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 3225
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3229
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v16

    .line 3230
    .local v16, "numStops":I
    if-nez v16, :cond_f

    .line 3232
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3233
    if-eqz p1, :cond_e

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3291
    :goto_6
    return-void

    .line 3190
    .end local v4    # "_x1":F
    .end local v5    # "_y1":F
    .end local v6    # "_x2":F
    .end local v7    # "_y2":F
    .end local v15    # "m":Landroid/graphics/Matrix;
    .end local v16    # "numStops":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "userUnits":Z
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3191
    .restart local v19    # "userUnits":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 3197
    .restart local v17    # "paint":Landroid/graphics/Paint;
    .restart local v20    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3198
    .restart local v4    # "_x1":F
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 3199
    .restart local v5    # "_y1":F
    :cond_7
    move-object/from16 v0, v20

    iget v6, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto/16 :goto_4

    .line 3200
    .restart local v6    # "_x2":F
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3204
    .end local v4    # "_x1":F
    .end local v5    # "_y1":F
    .end local v6    # "_x2":F
    .end local v20    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    .line 3205
    .restart local v4    # "_x1":F
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    .line 3206
    .restart local v5    # "_y1":F
    :goto_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v6

    .line 3207
    .restart local v6    # "_x2":F
    :goto_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    .restart local v7    # "_y2":F
    :goto_a
    goto/16 :goto_5

    .line 3204
    .end local v4    # "_x1":F
    .end local v5    # "_y1":F
    .end local v6    # "_x2":F
    .end local v7    # "_y2":F
    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    .line 3205
    .restart local v4    # "_x1":F
    :cond_b
    const/4 v5, 0x0

    goto :goto_8

    .line 3206
    .restart local v5    # "_y1":F
    :cond_c
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_9

    .line 3207
    .restart local v6    # "_x2":F
    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    .line 3236
    .restart local v7    # "_y2":F
    .restart local v15    # "m":Landroid/graphics/Matrix;
    .restart local v16    # "numStops":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto/16 :goto_6

    .line 3240
    :cond_f
    move/from16 v0, v16

    new-array v8, v0, [I

    .line 3241
    .local v8, "colours":[I
    move/from16 v0, v16

    new-array v9, v0, [F

    .line 3242
    .local v9, "positions":[F
    const/4 v13, 0x0

    .line 3243
    .local v13, "i":I
    const/high16 v14, -0x40800000    # -1.0f

    .line 3244
    .local v14, "lastOffset":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/caverock/androidsvg/SVG$SvgObject;

    .local v11, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object/from16 v18, v11

    .line 3246
    check-cast v18, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3247
    .local v18, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    if-eqz v13, :cond_10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpl-float v22, v22, v14

    if-ltz v22, :cond_12

    .line 3248
    :cond_10
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    aput v22, v9, v13

    .line 3249
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 3256
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v12, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3260
    .local v12, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-nez v12, :cond_11

    .line 3261
    sget-object v12, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3262
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v22

    shl-int/lit8 v22, v22, 0x18

    iget v0, v12, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move/from16 v23, v0

    or-int v22, v22, v23

    aput v22, v8, v13

    .line 3263
    add-int/lit8 v13, v13, 0x1

    .line 3265
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_b

    .line 3253
    .end local v12    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    :cond_12
    aput v14, v9, v13

    goto :goto_c

    .line 3269
    .end local v11    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v18    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_13
    cmpl-float v21, v4, v6

    if-nez v21, :cond_14

    cmpl-float v21, v5, v7

    if-eqz v21, :cond_15

    :cond_14
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 3270
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3271
    add-int/lit8 v21, v16, -0x1

    aget v21, v8, v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_6

    .line 3276
    :cond_16
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3277
    .local v10, "tileMode":Landroid/graphics/Shader$TileMode;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    .line 3279
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    sget-object v22, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 3280
    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 3285
    :cond_17
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3288
    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3289
    .local v3, "gr":Landroid/graphics/LinearGradient;
    invoke-virtual {v3, v15}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3290
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_6

    .line 3281
    .end local v3    # "gr":Landroid/graphics/LinearGradient;
    :cond_18
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    sget-object v22, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 3282
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_d
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 25
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .prologue
    .line 3909
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    .line 3910
    .local v13, "cx":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 3911
    .local v7, "cy":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v24

    .line 3913
    .local v24, "r":F
    sub-float v17, v13, v24

    .line 3914
    .local v17, "left":F
    sub-float v3, v7, v24

    .line 3915
    .local v3, "top":F
    add-float v4, v13, v24

    .line 3916
    .local v4, "right":F
    add-float v12, v7, v24

    .line 3918
    .local v12, "bottom":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_0

    .line 3919
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v24

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v24

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3922
    :cond_0
    const v2, 0x3f0d6289

    mul-float v23, v24, v2

    .line 3924
    .local v23, "cp":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3925
    .local v1, "p":Landroid/graphics/Path;
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3926
    add-float v2, v13, v23

    sub-float v5, v7, v23

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3927
    add-float v10, v7, v23

    add-float v11, v13, v23

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3928
    sub-float v15, v13, v23

    add-float v18, v7, v23

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3929
    sub-float v18, v7, v23

    sub-float v19, v13, v23

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3930
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3931
    return-object v1

    .line 3909
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v7    # "cy":F
    .end local v12    # "bottom":F
    .end local v13    # "cx":F
    .end local v17    # "left":F
    .end local v23    # "cp":F
    .end local v24    # "r":F
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 3910
    .restart local v13    # "cx":F
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 27
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .prologue
    .line 3937
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    .line 3938
    .local v13, "cx":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 3939
    .local v7, "cy":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v25

    .line 3940
    .local v25, "rx":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v26

    .line 3942
    .local v26, "ry":F
    sub-float v17, v13, v25

    .line 3943
    .local v17, "left":F
    sub-float v3, v7, v26

    .line 3944
    .local v3, "top":F
    add-float v4, v13, v25

    .line 3945
    .local v4, "right":F
    add-float v12, v7, v26

    .line 3947
    .local v12, "bottom":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_0

    .line 3948
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v25

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v26

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3951
    :cond_0
    const v2, 0x3f0d6289

    mul-float v23, v25, v2

    .line 3952
    .local v23, "cpx":F
    const v2, 0x3f0d6289

    mul-float v24, v26, v2

    .line 3954
    .local v24, "cpy":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3955
    .local v1, "p":Landroid/graphics/Path;
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3956
    add-float v2, v13, v23

    sub-float v5, v7, v24

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3957
    add-float v10, v7, v24

    add-float v11, v13, v23

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3958
    sub-float v15, v13, v23

    add-float v18, v7, v24

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3959
    sub-float v18, v7, v24

    sub-float v19, v13, v23

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3960
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3961
    return-object v1

    .line 3937
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v7    # "cy":F
    .end local v12    # "bottom":F
    .end local v13    # "cx":F
    .end local v17    # "left":F
    .end local v23    # "cpx":F
    .end local v24    # "cpy":F
    .end local v25    # "rx":F
    .end local v26    # "ry":F
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3938
    .restart local v13    # "cx":F
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .prologue
    const/4 v5, 0x0

    .line 3829
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_1

    move v1, v5

    .line 3830
    .local v1, "x1":F
    :goto_0
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_2

    move v3, v5

    .line 3831
    .local v3, "y1":F
    :goto_1
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_3

    move v2, v5

    .line 3832
    .local v2, "x2":F
    :goto_2
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_4

    move v4, v5

    .line 3834
    .local v4, "y2":F
    :goto_3
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_0

    .line 3835
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v8, v2, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v4, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3838
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3839
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3840
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3841
    return-object v0

    .line 3829
    .end local v0    # "p":Landroid/graphics/Path;
    .end local v1    # "x1":F
    .end local v2    # "x2":F
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    :cond_1
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_0

    .line 3830
    .restart local v1    # "x1":F
    :cond_2
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_1

    .line 3831
    .restart local v3    # "y1":F
    :cond_3
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_2

    .line 3832
    .restart local v2    # "x2":F
    :cond_4
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_3
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .prologue
    .line 3967
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3969
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3970
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3971
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3970
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3973
    :cond_0
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v2, :cond_1

    .line 3974
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3976
    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_2

    .line 3977
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3980
    :cond_2
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3981
    return-object v1
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 23
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .prologue
    .line 3849
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_2

    .line 3850
    const/16 v20, 0x0

    .line 3851
    .local v20, "rx":F
    const/16 v21, 0x0

    .line 3860
    .local v21, "ry":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v20

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 3861
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 3862
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3863
    .local v3, "x":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 3864
    .local v6, "y":F
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v22

    .line 3865
    .local v22, "w":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v18

    .line 3867
    .local v18, "h":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_0

    .line 3868
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v4, v3, v6, v0, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3871
    :cond_0
    add-float v19, v3, v22

    .line 3872
    .local v19, "right":F
    add-float v11, v6, v18

    .line 3874
    .local v11, "bottom":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 3875
    .local v2, "p":Landroid/graphics/Path;
    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v21, v4

    if-nez v4, :cond_7

    .line 3878
    :cond_1
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3879
    move/from16 v0, v19

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3880
    move/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3881
    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3882
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3902
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 3903
    return-object v2

    .line 3852
    .end local v2    # "p":Landroid/graphics/Path;
    .end local v3    # "x":F
    .end local v6    # "y":F
    .end local v11    # "bottom":F
    .end local v18    # "h":F
    .end local v19    # "right":F
    .end local v20    # "rx":F
    .end local v21    # "ry":F
    .end local v22    # "w":F
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_3

    .line 3853
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    .restart local v21    # "ry":F
    move/from16 v20, v21

    .restart local v20    # "rx":F
    goto/16 :goto_0

    .line 3854
    .end local v20    # "rx":F
    .end local v21    # "ry":F
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_4

    .line 3855
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    .restart local v21    # "ry":F
    move/from16 v20, v21

    .restart local v20    # "rx":F
    goto/16 :goto_0

    .line 3857
    .end local v20    # "rx":F
    .end local v21    # "ry":F
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v20

    .line 3858
    .restart local v20    # "rx":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    .restart local v21    # "ry":F
    goto/16 :goto_0

    .line 3862
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3863
    .restart local v3    # "x":F
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 3889
    .restart local v2    # "p":Landroid/graphics/Path;
    .restart local v6    # "y":F
    .restart local v11    # "bottom":F
    .restart local v18    # "h":F
    .restart local v19    # "right":F
    .restart local v22    # "w":F
    :cond_7
    const v4, 0x3f0d6289

    mul-float v16, v20, v4

    .line 3890
    .local v16, "cpx":F
    const v4, 0x3f0d6289

    mul-float v17, v21, v4

    .line 3892
    .local v17, "cpy":F
    add-float v4, v6, v21

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3893
    add-float v4, v6, v21

    sub-float v4, v4, v17

    add-float v5, v3, v20

    sub-float v5, v5, v16

    add-float v7, v3, v20

    move v8, v6

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3894
    sub-float v4, v19, v20

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3895
    sub-float v4, v19, v20

    add-float v5, v4, v16

    add-float v4, v6, v21

    sub-float v8, v4, v17

    add-float v10, v6, v21

    move-object v4, v2

    move/from16 v7, v19

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3896
    sub-float v4, v11, v21

    move/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3897
    sub-float v4, v11, v21

    add-float v9, v4, v17

    sub-float v4, v19, v20

    add-float v10, v4, v16

    sub-float v12, v19, v20

    move-object v7, v2

    move/from16 v8, v19

    move v13, v11

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3898
    add-float v4, v3, v20

    invoke-virtual {v2, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3899
    add-float v4, v3, v20

    sub-float v10, v4, v16

    sub-float v4, v11, v21

    add-float v13, v4, v17

    sub-float v15, v11, v21

    move-object v9, v2

    move v12, v3

    move v14, v3

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3900
    add-float v4, v6, v21

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method private makeRadialGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 23
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .prologue
    .line 3296
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3297
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3299
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v19, 0x1

    .line 3300
    .local v19, "userUnits":Z
    :goto_0
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 3303
    .local v17, "paint":Landroid/graphics/Paint;
    :goto_1
    if-eqz v19, :cond_8

    .line 3305
    new-instance v12, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v20, 0x42480000    # 50.0f

    sget-object v21, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 3306
    .local v12, "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 3307
    .local v4, "_cx":F
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 3308
    .local v5, "_cy":F
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 3320
    .end local v12    # "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    .local v6, "_r":F
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3323
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3326
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 3327
    .local v15, "m":Landroid/graphics/Matrix;
    if-nez v19, :cond_1

    .line 3329
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3330
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3332
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 3334
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3338
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 3339
    .local v16, "numStops":I
    if-nez v16, :cond_d

    .line 3341
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3342
    if-eqz p1, :cond_c

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3400
    :goto_5
    return-void

    .line 3299
    .end local v4    # "_cx":F
    .end local v5    # "_cy":F
    .end local v6    # "_r":F
    .end local v15    # "m":Landroid/graphics/Matrix;
    .end local v16    # "numStops":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "userUnits":Z
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3300
    .restart local v19    # "userUnits":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 3306
    .restart local v12    # "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    .restart local v17    # "paint":Landroid/graphics/Paint;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto/16 :goto_2

    .line 3307
    .restart local v4    # "_cx":F
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto/16 :goto_3

    .line 3308
    .restart local v5    # "_cy":F
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto/16 :goto_4

    .line 3312
    .end local v4    # "_cx":F
    .end local v5    # "_cy":F
    .end local v12    # "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    :cond_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    .line 3313
    .restart local v4    # "_cx":F
    :goto_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    .line 3314
    .restart local v5    # "_cy":F
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v6

    .restart local v6    # "_r":F
    :goto_8
    goto/16 :goto_4

    .line 3312
    .end local v4    # "_cx":F
    .end local v5    # "_cy":F
    .end local v6    # "_r":F
    :cond_9
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_6

    .line 3313
    .restart local v4    # "_cx":F
    :cond_a
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_7

    .line 3314
    .restart local v5    # "_cy":F
    :cond_b
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_8

    .line 3345
    .restart local v6    # "_r":F
    .restart local v15    # "m":Landroid/graphics/Matrix;
    .restart local v16    # "numStops":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto/16 :goto_5

    .line 3349
    :cond_d
    move/from16 v0, v16

    new-array v7, v0, [I

    .line 3350
    .local v7, "colours":[I
    move/from16 v0, v16

    new-array v8, v0, [F

    .line 3351
    .local v8, "positions":[F
    const/4 v13, 0x0

    .line 3352
    .local v13, "i":I
    const/high16 v14, -0x40800000    # -1.0f

    .line 3353
    .local v14, "lastOffset":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVG$SvgObject;

    .local v10, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object/from16 v18, v10

    .line 3355
    check-cast v18, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3356
    .local v18, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    if-eqz v13, :cond_e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    cmpl-float v21, v21, v14

    if-ltz v21, :cond_10

    .line 3357
    :cond_e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aput v21, v8, v13

    .line 3358
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 3365
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v11, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3369
    .local v11, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-nez v11, :cond_f

    .line 3370
    sget-object v11, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3371
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v21

    shl-int/lit8 v21, v21, 0x18

    iget v0, v11, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move/from16 v22, v0

    or-int v21, v21, v22

    aput v21, v7, v13

    .line 3372
    add-int/lit8 v13, v13, 0x1

    .line 3374
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_9

    .line 3362
    .end local v11    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    :cond_10
    aput v14, v8, v13

    goto :goto_a

    .line 3378
    .end local v10    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v18    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_11
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 3379
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3380
    add-int/lit8 v20, v16, -0x1

    aget v20, v7, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 3385
    :cond_13
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3386
    .local v9, "tileMode":Landroid/graphics/Shader$TileMode;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 3388
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v20, v0

    sget-object v21, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 3389
    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 3394
    :cond_14
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3397
    new-instance v3, Landroid/graphics/RadialGradient;

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3398
    .local v3, "gr":Landroid/graphics/RadialGradient;
    invoke-virtual {v3, v15}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3399
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_5

    .line 3390
    .end local v3    # "gr":Landroid/graphics/RadialGradient;
    :cond_15
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v20, v0

    sget-object v21, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 3391
    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_b
.end method

.method private parentPop()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 379
    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    const/4 v4, 0x0

    .line 707
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 710
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .line 711
    check-cast v1, Lcom/caverock/androidsvg/SVG$Mask;

    .end local v1    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 713
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processMaskBitmaps()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    .local v0, "maskedContent":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 717
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 719
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 720
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 721
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 722
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 725
    .end local v0    # "maskedContent":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 726
    return-void
.end method

.method private processMaskBitmaps()Landroid/graphics/Bitmap;
    .locals 27

    .prologue
    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 760
    .local v1, "mask":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    .line 764
    .local v22, "maskedContent":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 765
    .local v4, "w":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 766
    .local v20, "h":I
    new-array v2, v4, [I

    .line 767
    .local v2, "maskBuf":[I
    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 768
    .local v23, "maskedContentBuf":[I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    move/from16 v0, v20

    if-ge v6, v0, :cond_2

    .line 770
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 771
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move v10, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 772
    const/16 v26, 0x0

    .local v26, "x":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v4, :cond_1

    .line 774
    aget v24, v2, v26

    .line 775
    .local v24, "px":I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 776
    .local v16, "b":I
    shr-int/lit8 v3, v24, 0x8

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 777
    .local v19, "g":I
    shr-int/lit8 v3, v24, 0x10

    and-int/lit16 v0, v3, 0xff

    move/from16 v25, v0

    .line 778
    .local v25, "r":I
    shr-int/lit8 v3, v24, 0x18

    and-int/lit16 v15, v3, 0xff

    .line 779
    .local v15, "a":I
    if-nez v15, :cond_0

    .line 781
    const/4 v3, 0x0

    aput v3, v23, v26

    .line 772
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 784
    :cond_0
    move/from16 v0, v25

    mul-int/lit16 v3, v0, 0x1b33

    move/from16 v0, v19

    mul-int/lit16 v5, v0, 0x5b92

    add-int/2addr v3, v5

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x93a

    add-int/2addr v3, v5

    mul-int/2addr v3, v15

    const v5, 0x7f8000

    div-int v21, v3, v5

    .line 785
    .local v21, "maskAlpha":I
    aget v17, v23, v26

    .line 786
    .local v17, "content":I
    shr-int/lit8 v3, v17, 0x18

    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    .line 787
    .local v18, "contentAlpha":I
    mul-int v3, v18, v21

    div-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    .line 788
    const v3, 0xffffff

    and-int v3, v3, v17

    shl-int/lit8 v5, v18, 0x18

    or-int/2addr v3, v5

    aput v3, v23, v26

    goto :goto_2

    .line 790
    .end local v15    # "a":I
    .end local v16    # "b":I
    .end local v17    # "content":I
    .end local v18    # "contentAlpha":I
    .end local v19    # "g":I
    .end local v21    # "maskAlpha":I
    .end local v24    # "px":I
    .end local v25    # "r":I
    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move v10, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 768
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 792
    .end local v26    # "x":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 793
    return-object v22
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 1518
    move-object v9, p1

    check-cast v9, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1603
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    :goto_0
    return-void

    .line 1521
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v9, :cond_2

    .line 1524
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1526
    check-cast p1, Lcom/caverock/androidsvg/SVG$TextPath;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    .line 1529
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_0

    .line 1531
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    if-eqz v9, :cond_e

    .line 1533
    const-string v9, "TSpan render"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v6, p1

    .line 1538
    check-cast v6, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 1540
    .local v6, "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1542
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1545
    const/4 v7, 0x0

    .local v7, "x":F
    const/4 v8, 0x0

    .local v8, "y":F
    const/4 v1, 0x0

    .local v1, "dx":F
    const/4 v2, 0x0

    .line 1546
    .local v2, "dy":F
    instance-of v9, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v9, :cond_7

    .line 1547
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-eqz v9, :cond_3

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a

    :cond_3
    move-object v9, p2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v7, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1548
    :goto_1
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    :cond_4
    move-object v9, p2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v8, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1549
    :goto_2
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_c

    :cond_5
    move v1, v10

    .line 1550
    :goto_3
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_d

    :cond_6
    move v2, v10

    .line 1553
    :cond_7
    :goto_4
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1555
    instance-of v9, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v9, :cond_8

    move-object v9, p2

    .line 1556
    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v10, v7, v1

    iput v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v9, p2

    .line 1557
    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v10, v8, v2

    iput v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1560
    :cond_8
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1562
    .local v0, "compositing":Z
    invoke-direct {p0, v6, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1564
    if-eqz v0, :cond_9

    .line 1565
    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1569
    .end local v0    # "compositing":Z
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_0

    .line 1547
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_a
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    .line 1548
    :cond_b
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    .line 1549
    :cond_c
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_3

    .line 1550
    :cond_d
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_4

    .line 1571
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v6    # "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_e
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-eqz v9, :cond_0

    .line 1574
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v5, p1

    .line 1576
    check-cast v5, Lcom/caverock/androidsvg/SVG$TRef;

    .line 1578
    .local v5, "tref":Lcom/caverock/androidsvg/SVG$TRef;
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1580
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1582
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1585
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, v5, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 1586
    .local v3, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_10

    instance-of v9, v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v9, :cond_10

    .line 1588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    .local v4, "str":Ljava/lang/StringBuilder;
    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 1591
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1601
    .end local v4    # "str":Ljava/lang/StringBuilder;
    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_0

    .line 1596
    .restart local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_10
    const-string v9, "Tref reference \'%s\' not found"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v5, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private pushLayer()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 676
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 700
    :goto_0
    return v1

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v1, v6, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 683
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 686
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v1, :cond_3

    .line 687
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 689
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-nez v1, :cond_2

    .line 691
    :cond_1
    const-string v1, "Mask reference \'%s\' not found"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    move v1, v3

    .line 693
    goto :goto_0

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    move v1, v3

    .line 700
    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .prologue
    .line 1134
    const-string v2, "Circle render"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1141
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1146
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    .line 1147
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1149
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v1

    .line 1150
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1153
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1155
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1157
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_3

    .line 1158
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1159
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_4

    .line 1160
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1162
    :cond_4
    if-eqz v0, :cond_0

    .line 1163
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .prologue
    .line 1172
    const-string v2, "Ellipse render"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1179
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    .line 1185
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1187
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v1

    .line 1188
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1190
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1191
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1193
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1195
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_3

    .line 1196
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1197
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_4

    .line 1198
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1200
    :cond_4
    if-eqz v0, :cond_0

    .line 1201
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Group;

    .prologue
    .line 601
    const-string v1, "Group render"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 605
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 612
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 614
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 616
    .local v0, "compositing":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 618
    if-eqz v0, :cond_2

    .line 619
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 621
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Image;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 1865
    const-string v9, "Image render"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1867
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1868
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1875
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v9, :cond_3

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1878
    .local v7, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_1
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1879
    .local v6, "image":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 1881
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v5

    .line 1882
    .local v5, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    if-eqz v5, :cond_0

    .line 1885
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1887
    .end local v5    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_2
    if-nez v6, :cond_4

    .line 1888
    const-string v8, "Could not locate image \'%s\'"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1875
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v7    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_3
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1892
    .restart local v6    # "image":Landroid/graphics/Bitmap;
    .restart local v7    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_4
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1894
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1896
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1899
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_5

    .line 1900
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1903
    :cond_5
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_7

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 1904
    .local v2, "_x":F
    :goto_2
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_8

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 1905
    .local v3, "_y":F
    :goto_3
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 1906
    .local v1, "_w":F
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 1907
    .local v0, "_h":F
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v10, v2, v3, v1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1909
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1910
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1913
    :cond_6
    new-instance v9, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v8, v8, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1914
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v11, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v10, v11, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1916
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1918
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1920
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 1922
    .local v4, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1924
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v6, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1926
    if-eqz v4, :cond_0

    .line 1927
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_0

    .end local v0    # "_h":F
    .end local v1    # "_w":F
    .end local v2    # "_x":F
    .end local v3    # "_y":F
    .end local v4    # "compositing":Z
    :cond_7
    move v2, v8

    .line 1903
    goto/16 :goto_2

    .restart local v2    # "_x":F
    :cond_8
    move v3, v8

    .line 1904
    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .prologue
    .line 1210
    const-string v2, "Line render"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1214
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    .line 1222
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1224
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v1

    .line 1225
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1227
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1228
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1230
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1232
    .local v0, "compositing":Z
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1234
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1236
    if-eqz v0, :cond_0

    .line 1237
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;

    .prologue
    .line 1039
    const-string v2, "Path render"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    if-nez v2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1046
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_0

    .line 1053
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    .line 1054
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1056
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v1

    .line 1058
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_4

    .line 1059
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1061
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1063
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1064
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1066
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1068
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_5

    .line 1069
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1070
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1072
    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_6

    .line 1073
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1075
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1077
    if-eqz v0, :cond_0

    .line 1078
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .prologue
    .line 1261
    const-string v3, "PolyLine render"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v3, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1265
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1269
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_0

    .line 1272
    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_3

    .line 1273
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1275
    :cond_3
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v1, v3

    .line 1276
    .local v1, "numPoints":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 1279
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v2

    .line 1280
    .local v2, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1282
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1283
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1285
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1287
    .local v0, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_4

    .line 1288
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1289
    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_5

    .line 1290
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1292
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1294
    if-eqz v0, :cond_0

    .line 1295
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Polygon;

    .prologue
    .line 1345
    const-string v3, "Polygon render"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v3, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1349
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1353
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_0

    .line 1356
    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_3

    .line 1357
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1359
    :cond_3
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v1, v3

    .line 1360
    .local v1, "numPoints":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 1363
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v2

    .line 1364
    .local v2, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1366
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1367
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1369
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1371
    .local v0, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_4

    .line 1372
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1373
    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_5

    .line 1374
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1376
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1378
    if-eqz v0, :cond_0

    .line 1379
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .prologue
    .line 1095
    const-string v2, "Rect render"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1102
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    .line 1108
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1110
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v1

    .line 1111
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1113
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1114
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1116
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1118
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_3

    .line 1119
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1120
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_4

    .line 1121
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1124
    :cond_4
    if-eqz v0, :cond_0

    .line 1125
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 524
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, p1, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 525
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .prologue
    .line 531
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 532
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p4, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p5, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .prologue
    const/4 v6, 0x0

    .line 540
    const-string v7, "Svg render"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 543
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 593
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    if-nez p5, :cond_3

    .line 548
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v7, :cond_7

    iget-object p5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 550
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v7, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 552
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "_x":F
    const/4 v3, 0x0

    .line 558
    .local v3, "_y":F
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v7, :cond_4

    .line 560
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_8

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 561
    :goto_2
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_9

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 564
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    .line 565
    .local v5, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-eqz p2, :cond_a

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 566
    .local v1, "_w":F
    :goto_4
    if-eqz p3, :cond_b

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 567
    .local v0, "_h":F
    :goto_5
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v7, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v7, v2, v3, v1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 569
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    .line 570
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 573
    :cond_5
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 575
    if-eqz p4, :cond_c

    .line 576
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v7, p4, p5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 577
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 582
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 585
    .local v4, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 587
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 589
    if-eqz v4, :cond_6

    .line 590
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 592
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_0

    .line 548
    .end local v0    # "_h":F
    .end local v1    # "_w":F
    .end local v2    # "_x":F
    .end local v3    # "_y":F
    .end local v4    # "compositing":Z
    .end local v5    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_7
    sget-object p5, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_1

    .restart local v2    # "_x":F
    .restart local v3    # "_y":F
    :cond_8
    move v2, v6

    .line 560
    goto :goto_2

    :cond_9
    move v3, v6

    .line 561
    goto :goto_3

    .line 565
    .restart local v5    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_a
    iget v1, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_4

    .line 566
    .restart local v1    # "_w":F
    :cond_b
    iget v0, v5, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_5

    .line 579
    .restart local v0    # "_h":F
    :cond_c
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .prologue
    .line 282
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v0, :cond_0

    .line 320
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    return-void

    .line 286
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 288
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 290
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_2

    .line 291
    check-cast p1, Lcom/caverock/androidsvg/SVG$Svg;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    .line 319
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_0

    .line 292
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_3

    .line 293
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    goto :goto_1

    .line 294
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-eqz v0, :cond_4

    .line 295
    check-cast p1, Lcom/caverock/androidsvg/SVG$Switch;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    goto :goto_1

    .line 296
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v0, :cond_5

    .line 297
    check-cast p1, Lcom/caverock/androidsvg/SVG$Group;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    goto :goto_1

    .line 298
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-eqz v0, :cond_6

    .line 299
    check-cast p1, Lcom/caverock/androidsvg/SVG$Image;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    goto :goto_1

    .line 300
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_6
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_7

    .line 301
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    goto :goto_1

    .line 302
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_8

    .line 303
    check-cast p1, Lcom/caverock/androidsvg/SVG$Rect;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    goto :goto_1

    .line 304
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_9

    .line 305
    check-cast p1, Lcom/caverock/androidsvg/SVG$Circle;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    goto :goto_1

    .line 306
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_a

    .line 307
    check-cast p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    goto :goto_1

    .line 308
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v0, :cond_b

    .line 309
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    goto :goto_1

    .line 310
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_c

    .line 311
    check-cast p1, Lcom/caverock/androidsvg/SVG$Polygon;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    goto :goto_1

    .line 312
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_d

    .line 313
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    goto :goto_1

    .line 314
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_d
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_1

    .line 315
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .prologue
    .line 805
    const-string v1, "Switch render"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 809
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 816
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 818
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 820
    .local v0, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 822
    if-eqz v0, :cond_2

    .line 823
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 825
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Symbol;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .prologue
    const/4 v6, 0x0

    .line 1825
    const-string v4, "Symbol render"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1828
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1857
    :cond_1
    :goto_0
    return-void

    .line 1832
    :cond_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v4, :cond_6

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1834
    .local v3, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_1
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v4, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1836
    if-eqz p2, :cond_7

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 1837
    .local v1, "_w":F
    :goto_2
    if-eqz p3, :cond_8

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 1838
    .local v0, "_h":F
    :goto_3
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v5, v6, v6, v1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1840
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1841
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1844
    :cond_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v4, :cond_4

    .line 1845
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v5, v6, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1846
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1849
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 1851
    .local v2, "compositing":Z
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 1853
    if-eqz v2, :cond_5

    .line 1854
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1856
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0

    .line 1832
    .end local v0    # "_h":F
    .end local v1    # "_w":F
    .end local v2    # "compositing":Z
    .end local v3    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_6
    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1836
    .restart local v3    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_7
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_2

    .line 1837
    .restart local v1    # "_w":F
    :cond_8
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1388
    const-string v8, "Text render"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v8, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1392
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v8, :cond_2

    .line 1396
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1399
    :cond_2
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    :cond_3
    move v6, v9

    .line 1400
    .local v6, "x":F
    :goto_1
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    :cond_4
    move v7, v9

    .line 1401
    .local v7, "y":F
    :goto_2
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    :cond_5
    move v2, v9

    .line 1402
    .local v2, "dx":F
    :goto_3
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v8, :cond_6

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c

    :cond_6
    move v3, v9

    .line 1405
    .local v3, "dy":F
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1406
    .local v0, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v8, :cond_7

    .line 1407
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    .line 1408
    .local v5, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v8, :cond_d

    .line 1409
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    sub-float/2addr v6, v8

    .line 1415
    .end local v5    # "textWidth":F
    :cond_7
    :goto_5
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v8, :cond_8

    .line 1416
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v4, p0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 1417
    .local v4, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1418
    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v9, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    iget-object v12, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1420
    .end local v4    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1422
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1423
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1425
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1427
    .local v1, "compositing":Z
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v9, v6, v2

    add-float v10, v7, v3

    invoke-direct {v8, p0, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1429
    if-eqz v1, :cond_0

    .line 1430
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_0

    .line 1399
    .end local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .end local v1    # "compositing":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_9
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto/16 :goto_1

    .line 1400
    .restart local v6    # "x":F
    :cond_a
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto/16 :goto_2

    .line 1401
    .restart local v7    # "y":F
    :cond_b
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_3

    .line 1402
    .restart local v2    # "dx":F
    :cond_c
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto/16 :goto_4

    .line 1411
    .restart local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .restart local v3    # "dy":F
    .restart local v5    # "textWidth":F
    :cond_d
    sub-float/2addr v6, v5

    goto :goto_5
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 968
    const-string v9, "Use render"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_2

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 971
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1031
    :cond_1
    :goto_0
    return-void

    .line 974
    :cond_2
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 976
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 980
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 981
    .local v6, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v6, :cond_3

    .line 982
    const-string v8, "Use reference \'%s\' not found"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 986
    :cond_3
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v9, :cond_4

    .line 987
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 991
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 992
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 993
    .local v2, "_x":F
    :goto_1
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_7

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 994
    .local v3, "_y":F
    :goto_2
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 995
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 999
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 1001
    .local v4, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 1003
    instance-of v8, v6, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v8, :cond_a

    .line 1005
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v7, v6

    .line 1006
    check-cast v7, Lcom/caverock/androidsvg/SVG$Svg;

    .line 1007
    .local v7, "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_8

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1008
    .local v1, "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_3
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1009
    .local v0, "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_4
    invoke-direct {p0, v7, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 1010
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1025
    .end local v0    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v7    # "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 1027
    if-eqz v4, :cond_5

    .line 1028
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1030
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0

    .end local v2    # "_x":F
    .end local v3    # "_y":F
    .end local v4    # "compositing":Z
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_6
    move v2, v8

    .line 992
    goto :goto_1

    .restart local v2    # "_x":F
    :cond_7
    move v3, v8

    .line 993
    goto :goto_2

    .line 1007
    .restart local v3    # "_y":F
    .restart local v4    # "compositing":Z
    .restart local v7    # "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    :cond_8
    iget-object v1, v7, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 1008
    .restart local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :cond_9
    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4

    .line 1012
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v7    # "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    :cond_a
    instance-of v8, v6, Lcom/caverock/androidsvg/SVG$Symbol;

    if-eqz v8, :cond_d

    .line 1014
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_b

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1015
    .restart local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_6
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_c

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1016
    .restart local v0    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1017
    check-cast v6, Lcom/caverock/androidsvg/SVG$Symbol;

    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v6, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 1018
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_5

    .line 1014
    .end local v0    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_b
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v11, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_6

    .line 1015
    .restart local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :cond_c
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v0, v11, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_7

    .line 1022
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :cond_d
    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_5
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "isContainer"    # Z

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 332
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 333
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_0

    .line 336
    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    if-eqz p2, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 339
    :cond_2
    return-void
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 24
    .param p1, "marker"    # Lcom/caverock/androidsvg/SVG$Marker;
    .param p2, "pos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .prologue
    .line 2962
    const/4 v8, 0x0

    .line 2965
    .local v8, "angle":F
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 2968
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2970
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2972
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    .line 2973
    :cond_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v8, v0

    .line 2980
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    const/high16 v15, 0x3f800000    # 1.0f

    .line 2984
    .local v15, "unitsScale":F
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 2986
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 2987
    .local v13, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2988
    invoke-virtual {v13, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2989
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2991
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 2992
    .local v6, "_refX":F
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 2993
    .local v7, "_refY":F
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 2994
    .local v5, "_markerWidth":F
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 2996
    .local v4, "_markerHeight":F
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 3003
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v20, v0

    div-float v17, v5, v20

    .line 3004
    .local v17, "xScale":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v20, v0

    div-float v19, v4, v20

    .line 3007
    .local v19, "yScale":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3008
    .local v14, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_6
    sget-object v20, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 3010
    invoke-virtual {v14}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v20

    sget-object v21, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 3011
    .local v9, "aspectScale":F
    :goto_7
    move/from16 v19, v9

    move/from16 v17, v9

    .line 3015
    .end local v9    # "aspectScale":F
    :cond_2
    neg-float v0, v6

    move/from16 v20, v0

    mul-float v20, v20, v17

    neg-float v0, v7

    move/from16 v21, v0

    mul-float v21, v21, v19

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3020
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v20, v0

    mul-float v12, v20, v17

    .line 3021
    .local v12, "imageW":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v20, v0

    mul-float v11, v20, v19

    .line 3022
    .local v11, "imageH":F
    const/16 v16, 0x0

    .line 3023
    .local v16, "xOffset":F
    const/16 v18, 0x0

    .line 3024
    .local v18, "yOffset":F
    sget-object v20, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {v14}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 3041
    :goto_8
    sget-object v20, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {v14}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_1

    .line 3058
    :goto_9
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_3

    .line 3059
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 3062
    :cond_3
    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 3063
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3078
    .end local v11    # "imageH":F
    .end local v12    # "imageW":F
    .end local v14    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v16    # "xOffset":F
    .end local v17    # "xScale":F
    .end local v18    # "yOffset":F
    .end local v19    # "yScale":F
    :cond_4
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v10

    .line 3080
    .local v10, "compositing":Z
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 3082
    if-eqz v10, :cond_5

    .line 3083
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3085
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3086
    return-void

    .line 2976
    .end local v4    # "_markerHeight":F
    .end local v5    # "_markerWidth":F
    .end local v6    # "_refX":F
    .end local v7    # "_refY":F
    .end local v10    # "compositing":Z
    .end local v13    # "m":Landroid/graphics/Matrix;
    .end local v15    # "unitsScale":F
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto/16 :goto_0

    .line 2980
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v15

    goto/16 :goto_1

    .line 2991
    .restart local v13    # "m":Landroid/graphics/Matrix;
    .restart local v15    # "unitsScale":F
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2992
    .restart local v6    # "_refX":F
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2993
    .restart local v7    # "_refY":F
    :cond_a
    const/high16 v5, 0x40400000    # 3.0f

    goto/16 :goto_4

    .line 2994
    .restart local v5    # "_markerWidth":F
    :cond_b
    const/high16 v4, 0x40400000    # 3.0f

    goto/16 :goto_5

    .line 3007
    .restart local v4    # "_markerHeight":F
    .restart local v17    # "xScale":F
    .restart local v19    # "yScale":F
    :cond_c
    sget-object v14, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_6

    .line 3010
    .restart local v14    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_d
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto/16 :goto_7

    .line 3029
    .restart local v11    # "imageH":F
    .restart local v12    # "imageW":F
    .restart local v16    # "xOffset":F
    .restart local v18    # "yOffset":F
    :pswitch_1
    sub-float v20, v5, v12

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v16, v16, v20

    .line 3030
    goto/16 :goto_8

    .line 3034
    :pswitch_2
    sub-float v20, v5, v12

    sub-float v16, v16, v20

    .line 3035
    goto/16 :goto_8

    .line 3046
    :pswitch_3
    sub-float v20, v4, v11

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v18, v18, v20

    .line 3047
    goto/16 :goto_9

    .line 3051
    :pswitch_4
    sub-float v20, v4, v11

    sub-float v18, v18, v20

    .line 3052
    goto/16 :goto_9

    .line 3070
    .end local v11    # "imageH":F
    .end local v12    # "imageW":F
    .end local v14    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v16    # "xOffset":F
    .end local v17    # "xScale":F
    .end local v18    # "yOffset":F
    .end local v19    # "yScale":F
    :cond_e
    neg-float v0, v6

    move/from16 v20, v0

    neg-float v0, v7

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_4

    .line 3074
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_a

    .line 3024
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3041
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2893
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 2954
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    :cond_0
    :goto_0
    return-void

    .line 2896
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    :cond_1
    const/4 v2, 0x0

    .line 2897
    .local v2, "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v1, 0x0

    .line 2898
    .local v1, "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v0, 0x0

    .line 2900
    .local v0, "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2901
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 2902
    .local v6, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v6, :cond_6

    move-object v2, v6

    .line 2903
    check-cast v2, Lcom/caverock/androidsvg/SVG$Marker;

    .line 2908
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 2909
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 2910
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v6, :cond_7

    move-object v1, v6

    .line 2911
    check-cast v1, Lcom/caverock/androidsvg/SVG$Marker;

    .line 2916
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 2917
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 2918
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v6, :cond_8

    move-object v0, v6

    .line 2919
    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    .line 2924
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    :goto_3
    const/4 v5, 0x0

    .line 2925
    .local v5, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    instance-of v7, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v7, :cond_9

    .line 2926
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v7, p0, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v5

    .line 2932
    :goto_4
    if-eqz v5, :cond_0

    .line 2935
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 2936
    .local v4, "markerCount":I
    if-eqz v4, :cond_0

    .line 2940
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v10, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v10, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2942
    if-eqz v2, :cond_5

    .line 2943
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v2, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2945
    :cond_5
    if-eqz v1, :cond_b

    .line 2947
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_5
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_b

    .line 2948
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v1, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2947
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2905
    .end local v3    # "i":I
    .end local v4    # "markerCount":I
    .end local v5    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    :cond_6
    const-string v7, "Marker reference \'%s\' not found"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2913
    :cond_7
    const-string v7, "Marker reference \'%s\' not found"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2921
    :cond_8
    const-string v7, "Marker reference \'%s\' not found"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2927
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v5    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_9
    instance-of v7, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v7, :cond_a

    .line 2928
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    .line 2930
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    :cond_a
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    .line 2952
    .restart local v4    # "markerCount":I
    :cond_b
    if-eqz v0, :cond_0

    .line 2953
    add-int/lit8 v7, v4, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v0, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    goto/16 :goto_0
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 12
    .param p1, "mask"    # Lcom/caverock/androidsvg/SVG$Mask;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    .line 4181
    const-string v6, "Mask render"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4183
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 4186
    .local v2, "maskUnitsAreUser":Z
    :goto_0
    if-eqz v2, :cond_6

    .line 4188
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4189
    .local v3, "w":F
    :goto_1
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 4190
    .local v0, "h":F
    :goto_2
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 4191
    .local v4, "x":F
    :goto_3
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 4205
    .local v5, "y":F
    :goto_4
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-nez v6, :cond_b

    .line 4229
    :cond_0
    :goto_5
    return-void

    .line 4183
    .end local v0    # "h":F
    .end local v2    # "maskUnitsAreUser":Z
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4188
    .restart local v2    # "maskUnitsAreUser":Z
    :cond_2
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_1

    .line 4189
    .restart local v3    # "w":F
    :cond_3
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_2

    .line 4190
    .restart local v0    # "h":F
    :cond_4
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->width:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    goto :goto_3

    .line 4191
    .restart local v4    # "x":F
    :cond_5
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->height:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    goto :goto_4

    .line 4196
    .end local v0    # "h":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    :cond_6
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_7

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    .line 4197
    .restart local v4    # "x":F
    :goto_6
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    .line 4198
    .restart local v5    # "y":F
    :goto_7
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_9

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    .line 4199
    .restart local v3    # "w":F
    :goto_8
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    .line 4200
    .restart local v0    # "h":F
    :goto_9
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v7, v4

    add-float v4, v6, v7

    .line 4201
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v7, v5

    add-float v5, v6, v7

    .line 4202
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v3, v6

    .line 4203
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v0, v6

    goto/16 :goto_4

    .line 4196
    .end local v0    # "h":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_7
    const v4, -0x42333333    # -0.1f

    goto :goto_6

    .line 4197
    .restart local v4    # "x":F
    :cond_8
    const v5, -0x42333333    # -0.1f

    goto :goto_7

    .line 4198
    .restart local v5    # "y":F
    :cond_9
    const v3, 0x3f99999a    # 1.2f

    goto :goto_8

    .line 4199
    .restart local v3    # "w":F
    :cond_a
    const v0, 0x3f99999a    # 1.2f

    goto :goto_9

    .line 4209
    .restart local v0    # "h":F
    :cond_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4211
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4215
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4218
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v6, :cond_c

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_c
    const/4 v1, 0x1

    .line 4219
    .local v1, "maskContentUnitsAreUser":Z
    :goto_a
    if-nez v1, :cond_d

    .line 4220
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4221
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4225
    :cond_d
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 4228
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_5

    .line 4218
    .end local v1    # "maskContentUnitsAreUser":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 14
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .prologue
    .line 831
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "deviceLanguage":Ljava/lang/String;
    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v3

    .line 835
    .local v3, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 838
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v11, v0, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-eqz v11, :cond_0

    move-object v1, v0

    .line 841
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 844
    .local v1, "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    .line 848
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v9

    .line 849
    .local v9, "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 853
    :cond_1
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v6

    .line 854
    .local v6, "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 855
    sget-object v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    if-nez v11, :cond_2

    .line 856
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->initialiseSupportedFeaturesMap()V

    .line 857
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 862
    :cond_3
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v7

    .line 863
    .local v7, "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 864
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v3, :cond_0

    .line 866
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 867
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    .line 872
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v8

    .line 873
    .local v8, "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_7

    .line 874
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v3, :cond_0

    .line 876
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 877
    .local v4, "fontName":Ljava/lang/String;
    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v4, v12, v13}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    if-nez v12, :cond_6

    goto/16 :goto_0

    .line 883
    .end local v4    # "fontName":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 886
    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v1    # "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    .end local v6    # "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    return-void
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPath;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1611
    const-string v8, "TextPath render"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v8, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1615
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1620
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    .line 1621
    .local v5, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v5, :cond_2

    .line 1623
    const-string v8, "TextPath reference \'%s\' not found"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 1627
    check-cast v4, Lcom/caverock/androidsvg/SVG$Path;

    .line 1628
    .local v4, "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v8, p0, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 1630
    .local v3, "path":Landroid/graphics/Path;
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v8, :cond_3

    .line 1631
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1633
    :cond_3
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v3, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1635
    .local v2, "measure":Landroid/graphics/PathMeasure;
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    invoke-virtual {v8, p0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v6

    .line 1638
    .local v6, "startOffset":F
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1639
    .local v0, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v8, :cond_4

    .line 1640
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v7

    .line 1641
    .local v7, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v8, :cond_6

    .line 1642
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v6, v8

    .line 1648
    .end local v7    # "textWidth":F
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1650
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1652
    .local v1, "compositing":Z
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v8, p0, v3, v6, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1654
    if-eqz v1, :cond_0

    .line 1655
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_0

    .end local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .end local v1    # "compositing":Z
    .end local v6    # "startOffset":F
    :cond_5
    move v6, v9

    .line 1635
    goto :goto_1

    .line 1644
    .restart local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .restart local v6    # "startOffset":F
    .restart local v7    # "textWidth":F
    :cond_6
    sub-float/2addr v6, v7

    goto :goto_2
.end method

.method private requiresCompositing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 731
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v1, :cond_0

    .line 732
    const-string v1, "Masks are not supported when using getPicture()"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private resetState()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 177
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 180
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 182
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 184
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 185
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 188
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    .line 192
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    .line 196
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 197
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    .line 198
    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 5
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 2430
    move v1, p1

    .line 2431
    .local v1, "left":F
    move v3, p2

    .line 2432
    .local v3, "top":F
    add-float v2, p1, p3

    .line 2433
    .local v2, "right":F
    add-float v0, p2, p4

    .line 2435
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v4, :cond_0

    .line 2436
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v1, v4

    .line 2437
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v3, v4

    .line 2438
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v2, v4

    .line 2439
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v0, v4

    .line 2442
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2443
    return-void
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 3
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "isFill"    # Z
    .param p3, "paint"    # Lcom/caverock/androidsvg/SVG$SvgPaint;

    .prologue
    .line 2365
    if-eqz p2, :cond_1

    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2367
    .local v1, "paintOpacity":F
    instance-of v2, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v2, :cond_2

    .line 2368
    check-cast p3, Lcom/caverock/androidsvg/SVG$Colour;

    .end local p3    # "paint":Lcom/caverock/androidsvg/SVG$SvgPaint;
    iget v0, p3, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2374
    .local v0, "col":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 2375
    if-eqz p2, :cond_3

    .line 2376
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2379
    .end local v0    # "col":I
    :cond_0
    :goto_2
    return-void

    .line 2365
    .end local v1    # "paintOpacity":F
    .restart local p3    # "paint":Lcom/caverock/androidsvg/SVG$SvgPaint;
    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto :goto_0

    .line 2369
    .restart local v1    # "paintOpacity":F
    :cond_2
    instance-of v2, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v2, :cond_0

    .line 2370
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .restart local v0    # "col":I
    goto :goto_1

    .line 2378
    .end local p3    # "paint":Lcom/caverock/androidsvg/SVG$SvgPaint;
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 10
    .param p1, "isFill"    # Z
    .param p2, "ref"    # Lcom/caverock/androidsvg/SVG$SolidColor;

    .prologue
    const-wide v8, 0x180000000L

    const-wide v6, 0x100000000L

    const-wide v4, 0x80000000L

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3482
    if-eqz p1, :cond_4

    .line 3484
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3486
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3487
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v3, :cond_3

    :goto_0
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3490
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3492
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 3496
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3498
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3521
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 3487
    goto :goto_0

    .line 3503
    :cond_4
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3505
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3506
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v3, :cond_7

    :goto_2
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3509
    :cond_5
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3511
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3515
    :cond_6
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3517
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 3506
    goto :goto_2
.end method

.method private statePop()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 360
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 361
    return-void
.end method

.method private statePush()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 352
    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isFirstChild"    # Z
    .param p3, "isLastChild"    # Z

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-eqz v0, :cond_0

    .line 1806
    const-string v0, "[\\n\\t]"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    :goto_0
    return-object v0

    .line 1809
    :cond_0
    const-string v0, "\\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1810
    const-string v0, "\\t"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1812
    if-eqz p2, :cond_1

    .line 1813
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1814
    :cond_1
    if-eqz p3, :cond_2

    .line 1815
    const-string v0, "\\s+$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1816
    :cond_2
    const-string v0, "\\s{2,}"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 637
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v5, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v5, :cond_0

    .line 643
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 645
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 646
    const/16 v5, 0x8

    new-array v3, v5, [F

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v3, v7

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 647
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v6

    aput v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 648
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v6

    aput v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    aput v6, v3, v5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v3, v9

    const/4 v5, 0x7

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 649
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    aput v6, v3, v5

    .line 651
    .local v3, "pts":[F
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 652
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 654
    new-instance v4, Landroid/graphics/RectF;

    aget v5, v3, v7

    aget v6, v3, v8

    aget v7, v3, v7

    aget v8, v3, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 655
    .local v4, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-gt v0, v9, :cond_6

    .line 656
    aget v5, v3, v0

    iget v6, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    aget v5, v3, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 657
    :cond_2
    aget v5, v3, v0

    iget v6, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    aget v5, v3, v0

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 658
    :cond_3
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 659
    :cond_4
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 655
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 662
    :cond_6
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 663
    .local v2, "parent":Lcom/caverock/androidsvg/SVG$SvgElement;
    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_7

    .line 664
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    iput-object v5, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_0

    .line 666
    :cond_7
    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    iget v8, v4, Landroid/graphics/RectF;->right:F

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    goto/16 :goto_0
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 13
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "style"    # Lcom/caverock/androidsvg/SVG$Style;

    .prologue
    .line 2065
    const-wide/16 v10, 0x1000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2067
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 2070
    :cond_0
    const-wide/16 v10, 0x800

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2072
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 2075
    :cond_1
    const-wide/16 v10, 0x1

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2077
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2078
    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v10, :cond_2b

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 2081
    :cond_2
    const-wide/16 v10, 0x4

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2083
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2087
    :cond_3
    const-wide/16 v10, 0x1805

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2089
    const/4 v10, 0x1

    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2092
    :cond_4
    const-wide/16 v10, 0x2

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2094
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2098
    :cond_5
    const-wide/16 v10, 0x8

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2100
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2101
    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v10, :cond_2c

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 2104
    :cond_6
    const-wide/16 v10, 0x10

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2106
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2109
    :cond_7
    const-wide/16 v10, 0x1818

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2111
    const/4 v10, 0x0

    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2114
    :cond_8
    const-wide v10, 0x800000000L

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2116
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2119
    :cond_9
    const-wide/16 v10, 0x20

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2121
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2122
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2125
    :cond_a
    const-wide/16 v10, 0x40

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2127
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2128
    sget-object v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v11}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2144
    :cond_b
    :goto_2
    const-wide/16 v10, 0x80

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2146
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2147
    sget-object v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v11}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 2163
    :cond_c
    :goto_3
    const-wide/16 v10, 0x100

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2165
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2166
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 2169
    :cond_d
    const-wide/16 v10, 0x200

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2171
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2174
    :cond_e
    const-wide/16 v10, 0x400

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2176
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2179
    :cond_f
    const-wide/16 v10, 0x600

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2182
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-nez v10, :cond_2d

    .line 2184
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2212
    :cond_10
    :goto_4
    const-wide/16 v10, 0x4000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2214
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v1

    .line 2215
    .local v1, "currentFontSize":F
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2216
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, p0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2217
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, p0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2220
    .end local v1    # "currentFontSize":F
    :cond_11
    const-wide/16 v10, 0x2000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2222
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2225
    :cond_12
    const-wide/32 v10, 0x8000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2228
    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_32

    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_32

    .line 2229
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2236
    :cond_13
    :goto_5
    const-wide/32 v10, 0x10000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2238
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2242
    :cond_14
    const-wide/32 v10, 0x1a000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 2244
    const/4 v2, 0x0

    .line 2245
    .local v2, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    const/4 v3, 0x0

    .line 2247
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v10, :cond_17

    .line 2248
    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v2

    .line 2250
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2251
    .local v4, "fontName":Ljava/lang/String;
    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v12, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v4, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2252
    if-nez v3, :cond_16

    if-eqz v2, :cond_16

    .line 2253
    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v4, v11, v12}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2255
    :cond_16
    if-eqz v3, :cond_15

    .line 2259
    .end local v4    # "fontName":Ljava/lang/String;
    :cond_17
    if-nez v3, :cond_18

    .line 2261
    const-string/jumbo v10, "sans-serif"

    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v12, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2263
    :cond_18
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2264
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2267
    .end local v2    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .end local v3    # "font":Landroid/graphics/Typeface;
    :cond_19
    const-wide/32 v10, 0x20000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 2269
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2270
    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v12, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v10, v12, :cond_34

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2271
    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v12, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v10, v12, :cond_35

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2274
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_1a

    .line 2275
    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v12, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v10, v12, :cond_36

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2276
    iget-object v11, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v12, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v10, v12, :cond_37

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2280
    :cond_1a
    const-wide v10, 0x1000000000L

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 2282
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2285
    :cond_1b
    const-wide/32 v10, 0x40000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2287
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2290
    :cond_1c
    const-wide/32 v10, 0x80000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 2292
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2295
    :cond_1d
    const-wide/32 v10, 0x200000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 2297
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2300
    :cond_1e
    const-wide/32 v10, 0x400000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 2302
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2305
    :cond_1f
    const-wide/32 v10, 0x800000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 2307
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2310
    :cond_20
    const-wide/32 v10, 0x1000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 2312
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2315
    :cond_21
    const-wide/32 v10, 0x2000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 2317
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2320
    :cond_22
    const-wide/32 v10, 0x100000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 2322
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2325
    :cond_23
    const-wide/32 v10, 0x10000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 2327
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2330
    :cond_24
    const-wide/32 v10, 0x20000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 2332
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2335
    :cond_25
    const-wide/32 v10, 0x40000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 2337
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2340
    :cond_26
    const-wide/32 v10, 0x4000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 2342
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2345
    :cond_27
    const-wide/32 v10, 0x8000000

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 2347
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2350
    :cond_28
    const-wide v10, 0x200000000L

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 2352
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2355
    :cond_29
    const-wide v10, 0x400000000L

    invoke-direct {p0, p2, v10, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 2357
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2360
    :cond_2a
    return-void

    .line 2078
    :cond_2b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2101
    :cond_2c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2131
    :pswitch_0
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_2

    .line 2134
    :pswitch_1
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_2

    .line 2137
    :pswitch_2
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_2

    .line 2150
    :pswitch_3
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_3

    .line 2153
    :pswitch_4
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_3

    .line 2156
    :pswitch_5
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_3

    .line 2188
    :cond_2d
    const/4 v6, 0x0

    .line 2189
    .local v6, "intervalSum":F
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v8, v10

    .line 2192
    .local v8, "n":I
    rem-int/lit8 v10, v8, 0x2

    if-nez v10, :cond_2e

    move v0, v8

    .line 2193
    .local v0, "arrayLen":I
    :goto_a
    new-array v7, v0, [F

    .line 2194
    .local v7, "intervals":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    if-ge v5, v0, :cond_2f

    .line 2195
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v11, v5, v8

    aget-object v10, v10, v11

    invoke-virtual {v10, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    aput v10, v7, v5

    .line 2196
    aget v10, v7, v5

    add-float/2addr v6, v10

    .line 2194
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 2192
    .end local v0    # "arrayLen":I
    .end local v5    # "i":I
    .end local v7    # "intervals":[F
    :cond_2e
    mul-int/lit8 v0, v8, 0x2

    goto :goto_a

    .line 2198
    .restart local v0    # "arrayLen":I
    .restart local v5    # "i":I
    .restart local v7    # "intervals":[F
    :cond_2f
    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-nez v10, :cond_30

    .line 2199
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_4

    .line 2201
    :cond_30
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    .line 2202
    .local v9, "offset":F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_31

    .line 2205
    rem-float v10, v9, v6

    add-float v9, v6, v10

    .line 2207
    :cond_31
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/DashPathEffect;

    invoke-direct {v11, v7, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_4

    .line 2230
    .end local v0    # "arrayLen":I
    .end local v5    # "i":I
    .end local v6    # "intervalSum":F
    .end local v7    # "intervals":[F
    .end local v8    # "n":I
    .end local v9    # "offset":F
    :cond_32
    iget-object v10, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_33

    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x384

    if-ge v10, v11, :cond_33

    .line 2231
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 2233
    :cond_33
    iget-object v10, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v11, v10, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 2270
    :cond_34
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 2271
    :cond_35
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 2275
    :cond_36
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 2276
    :cond_37
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 2128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2147
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 4
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .prologue
    .line 387
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 388
    .local v0, "isRootSVG":Z
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 391
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 399
    .local v1, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v3, v1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v3, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    iget-object v3, v1, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1

    .line 387
    .end local v0    # "isRootSVG":Z
    .end local v1    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    .restart local v0    # "isRootSVG":Z
    :cond_3
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v2, :cond_4

    .line 407
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 408
    :cond_4
    return-void
.end method

.method private viewportFill()V
    .locals 2

    .prologue
    .line 2452
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v1, :cond_2

    .line 2453
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2459
    .local v0, "col":I
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 2462
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2463
    .end local v0    # "col":I
    :cond_1
    return-void

    .line 2454
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v1, :cond_1

    .line 2455
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .restart local v0    # "col":I
    goto :goto_0
.end method

.method private visible()Z
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1967
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 495
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method


# virtual methods
.method protected getCurrentFontSize()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getCurrentFontXHeight()F
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_0
.end method

.method protected getDPI()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method protected renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 6
    .param p1, "document"    # Lcom/caverock/androidsvg/SVG;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;
    .param p4, "directRenderingMode"    # Z

    .prologue
    .line 254
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    .line 255
    iput-boolean p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    .line 257
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v1

    .line 259
    .local v1, "rootObj":Lcom/caverock/androidsvg/SVG$Svg;
    if-nez v1, :cond_0

    .line 260
    const-string v0, "Nothing to render. Document is empty."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 267
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 270
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz p2, :cond_1

    move-object v4, p2

    :goto_1
    if-eqz p3, :cond_2

    move-object v5, p3

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    :cond_2
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_2
.end method
