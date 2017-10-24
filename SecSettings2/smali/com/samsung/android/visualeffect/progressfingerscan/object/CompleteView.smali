.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;
.super Landroid/view/View;
.source "CompleteView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentRatio:F

.field private halfStrokeWidth:F

.field private height:I

.field private paint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "completeColor"    # I
    .param p5, "strokeWidth"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->TAG:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    .line 23
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    .line 24
    div-int/lit8 v0, p5, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 44
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    const/4 v2, 0x0

    .line 35
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    .line 36
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->invalidate(IIII)V

    .line 37
    return-void
.end method
