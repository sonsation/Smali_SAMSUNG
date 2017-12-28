.class public abstract Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;
.super Ljava/lang/Object;
.source "AbsColorWheelRenderer.java"

# interfaces
.implements Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderer;


# instance fields
.field protected colorCircleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/colorpicker/flask/ColorCircle;",
            ">;"
        }
    .end annotation
.end field

.field protected colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorCircleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected calcTotalCount(FF)I
    .locals 6

    const/4 v0, 0x1

    const-wide v2, 0x40088121e29cdd4cL    # 3.063052912151454

    div-float v1, p2, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAlphaValueAsInt()I
    .locals 2

    iget-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    iget v0, v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;->alpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getColorCircleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/colorpicker/flask/ColorCircle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorCircleList:Ljava/util/List;

    return-object v0
.end method

.method public getRenderOption()Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    invoke-direct {v0}, Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;-><init>()V

    iput-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    :cond_0
    iget-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    return-object v0
.end method

.method public initWith(Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;)V
    .locals 1

    iput-object p1, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Landroid/preference/colorpicker/flask/renderer/ColorWheelRenderOption;

    iget-object v0, p0, Landroid/preference/colorpicker/flask/renderer/AbsColorWheelRenderer;->colorCircleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
