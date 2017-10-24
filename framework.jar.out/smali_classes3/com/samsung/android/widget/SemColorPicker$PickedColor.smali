.class Lcom/samsung/android/widget/SemColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SemColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickedColor"
.end annotation


# instance fields
.field private mColor:I

.field private mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    .line 362
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    .line 364
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    return v0
.end method

.method public getV()F
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    .line 370
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 368
    return-void
.end method

.method public setHS(FF)V
    .locals 3
    .param p1, "hue"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 382
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    .line 377
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    .line 385
    return-void
.end method
