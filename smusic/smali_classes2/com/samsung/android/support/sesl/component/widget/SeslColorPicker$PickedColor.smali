.class Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;
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
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mColor:I

    .line 357
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 361
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mColor:I

    return v0
.end method

.method public getV()F
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mColor:I

    .line 365
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 366
    return-void
.end method

.method public setHS(FF)V
    .locals 3
    .param p1, "hue"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 374
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 375
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 377
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mColor:I

    .line 378
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 382
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->mColor:I

    .line 383
    return-void
.end method
