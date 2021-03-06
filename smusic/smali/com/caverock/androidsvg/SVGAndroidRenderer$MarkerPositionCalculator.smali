.class Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerPositionCalculator"
.end annotation


# instance fields
.field private closepathReAdjustPending:Z

.field private lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation
.end field

.field private normalCubic:Z

.field private startArc:Z

.field private startX:F

.field private startY:F

.field private subpathStartIndex:I

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V
    .locals 4
    .param p2, "pathDef"    # Lcom/caverock/androidsvg/SVG$PathDefinition;

    .prologue
    const/4 v3, 0x0

    .line 2786
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    .line 2779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2780
    iput-boolean v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2781
    const/4 v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    .line 2787
    if-nez p2, :cond_1

    .line 2805
    :cond_0
    :goto_0
    return-void

    .line 2791
    :cond_1
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2793
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    if-eqz v0, :cond_2

    .line 2796
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2798
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2799
    iput-boolean v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2802
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 10
    .param p1, "rx"    # F
    .param p2, "ry"    # F
    .param p3, "xAxisRotation"    # F
    .param p4, "largeArcFlag"    # Z
    .param p5, "sweepFlag"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    .line 2869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    .line 2870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2871
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$700(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    .line 2872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2874
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2880
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startY:F

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lineTo(FF)V

    .line 2885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2886
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    const/4 v6, 0x0

    .line 2845
    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    if-eqz v1, :cond_1

    .line 2846
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2847
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2848
    iput-boolean v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    .line 2850
    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    sub-float v4, p5, p3

    sub-float v5, p6, p4

    move v2, p5

    move v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 2851
    .local v0, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2852
    iput-boolean v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2853
    return-void
.end method

.method public getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2835
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2836
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2837
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v4, p1, v2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v5, p2, v2

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 2838
    .local v0, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2839
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2840
    return-void
.end method

.method public moveTo(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 2815
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    if-eqz v0, :cond_0

    .line 2818
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2820
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2823
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    if-eqz v0, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2826
    :cond_1
    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startX:F

    .line 2827
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startY:F

    .line 2828
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2829
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    .line 2830
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 2858
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2859
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2860
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    sub-float v4, p3, p1

    sub-float v5, p4, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 2861
    .local v0, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2862
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2863
    return-void
.end method
