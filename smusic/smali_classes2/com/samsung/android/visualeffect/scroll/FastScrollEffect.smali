.class public Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;
.super Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;
.source "FastScrollEffect.java"


# instance fields
.field private circleRadius:F

.field private listText:Ljava/lang/String;

.field private listTextCharSequence:Ljava/lang/CharSequence;

.field private listTextPaint:Landroid/text/TextPaint;

.field private listTextSize:F

.field private maxRoundRectWidth:F

.field private minRoundRectWidth:F

.field private paintColor:I

.field private roundRectWidth:F

.field private scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

.field private textColor:I

.field private textShapeMargin:F

.field private textShapePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, 0x42880000    # 68.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    .line 18
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    .line 19
    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    .line 21
    const/high16 v0, 0x444c0000    # 816.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    .line 22
    const/high16 v0, 0x44960000    # 1200.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    .line 24
    const v0, -0x50506

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textColor:I

    .line 25
    const v0, -0x3301abbb

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->paintColor:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listText:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "visualeffectScroll"

    const-string v1, "ListScrollEffect : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    invoke-direct {v0, v1}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationTotalFrame:I

    .line 40
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animationTotalFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationTotalFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    .line 43
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    .line 44
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    .line 45
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    .line 46
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    .line 48
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->shapePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->paintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->paintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 61
    return-void
.end method

.method private drawLastFrameCircle(Landroid/graphics/Canvas;F)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widthOffset"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 118
    const/4 v1, 0x0

    .local v1, "left":F
    const/4 v3, 0x0

    .line 119
    .local v3, "right":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 120
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    div-float/2addr v5, v6

    sub-float v1, v0, v5

    .line 121
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    div-float/2addr v5, v6

    add-float v3, v0, v5

    .line 122
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    mul-float/2addr v5, v6

    sub-float v8, v0, v5

    .line 123
    .local v8, "avail":F
    cmpl-float v0, p2, v8

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v8, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    .line 145
    .end local v8    # "avail":F
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    sub-float v2, v0, v5

    .line 146
    .local v2, "top":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    add-float v4, v0, v5

    .line 147
    .local v4, "bottom":F
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentTextShapeAlpha:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget v6, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->circleRadius:F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 149
    return-void

    .line 127
    .end local v2    # "top":F
    .end local v4    # "bottom":F
    :cond_1
    cmpl-float v0, p2, v5

    if-lez v0, :cond_0

    .line 128
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    mul-float/2addr v0, v6

    add-float v9, p2, v0

    .line 129
    .local v9, "tempWidth":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_2

    .line 130
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    sub-float/2addr v0, v5

    div-float v1, v0, v6

    .line 131
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->minRoundRectWidth:F

    add-float/2addr v0, v5

    div-float v3, v0, v6

    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_3

    .line 134
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    sub-float/2addr v0, v5

    div-float v1, v0, v6

    .line 135
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    add-float/2addr v0, v5

    div-float v3, v0, v6

    .line 136
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->maxRoundRectWidth:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    mul-float/2addr v5, v6

    sub-float v8, v0, v5

    .line 137
    .restart local v8    # "avail":F
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v8, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    goto :goto_0

    .line 140
    .end local v8    # "avail":F
    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    div-float v5, p2, v6

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    sub-float v1, v0, v5

    .line 141
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float/2addr v0, v6

    div-float v5, p2, v6

    add-float/2addr v0, v5

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapeMargin:F

    add-float v3, v0, v5

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationCurrentFrame:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;

    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationCurrentFrame:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/common/FastScrollPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v2

    .line 96
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 97
    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isLTR:Z

    if-eqz v3, :cond_2

    .line 98
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isDrawText:Z

    if-eqz v3, :cond_0

    .line 107
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentWidthOffset:F

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->drawLastFrameCircle(Landroid/graphics/Canvas;F)V

    .line 110
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    div-float v0, v3, v6

    .line 111
    .local v0, "bX":F
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float v1, v3, v4

    .line 112
    .local v1, "bY":F
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentListTextAlpha:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 113
    iget-object v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 100
    .end local v0    # "bX":F
    .end local v1    # "bY":F
    :cond_2
    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method public open(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 65
    return-void
.end method

.method public open(FLjava/lang/String;)V
    .locals 5
    .param p1, "y"    # F
    .param p2, "listText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open : y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  listText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput p1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetY:F

    .line 70
    if-eqz p2, :cond_3

    const-string v0, ""

    if-eq p2, v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isDrawText:Z

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isDrawText:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listText:Ljava/lang/String;

    if-eq v0, p2, :cond_0

    .line 73
    iput-object p2, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listText:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextCharSequence:Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetWidthOffset:F

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isOpen:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetWidthOffset:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentWidthOffset:F

    .line 80
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isOpen:Z

    .line 81
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isYMoving:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isWidthMoving:Z

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->isFrameMoving:Z

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->viewWidth:F

    .line 85
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->animationCurrentFrame:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->targetY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->currentY:F

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->startAnimation()V

    .line 87
    return-void

    :cond_3
    move v0, v2

    .line 70
    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->textShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    return-void
.end method

.method public setListTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 158
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 160
    return-void
.end method

.method public setListTextSize(F)V
    .locals 3
    .param p1, "textSize"    # F

    .prologue
    .line 163
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->listTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 165
    return-void
.end method

.method public setRoundRectWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 168
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoundRectWidth : width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput p1, p0, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->roundRectWidth:F

    .line 170
    return-void
.end method
