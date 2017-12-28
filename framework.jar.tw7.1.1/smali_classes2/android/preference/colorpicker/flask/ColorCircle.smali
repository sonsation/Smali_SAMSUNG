.class public Landroid/preference/colorpicker/flask/ColorCircle;
.super Ljava/lang/Object;
.source "ColorCircle.java"


# instance fields
.field private color:I

.field private hsv:[F

.field private hsvClone:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/colorpicker/flask/ColorCircle;->set(FF[F)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->color:I

    return v0
.end method

.method public getHsv()[F
    .locals 1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    return-object v0
.end method

.method public getHsvWithLightness(F)[F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsvClone:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsvClone:[F

    :cond_0
    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsvClone:[F

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsvClone:[F

    iget-object v1, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsvClone:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsvClone:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->y:F

    return v0
.end method

.method public set(FF[F)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p1, p0, Landroid/preference/colorpicker/flask/ColorCircle;->x:F

    iput p2, p0, Landroid/preference/colorpicker/flask/ColorCircle;->y:F

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    aget v1, p3, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    aget v1, p3, v3

    aput v1, v0, v3

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    aget v1, p3, v4

    aput v1, v0, v4

    iget-object v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Landroid/preference/colorpicker/flask/ColorCircle;->color:I

    return-void
.end method

.method public sqDist(FF)D
    .locals 8

    iget v4, p0, Landroid/preference/colorpicker/flask/ColorCircle;->x:F

    sub-float/2addr v4, p1

    float-to-double v0, v4

    iget v4, p0, Landroid/preference/colorpicker/flask/ColorCircle;->y:F

    sub-float/2addr v4, p2

    float-to-double v2, v4

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method
