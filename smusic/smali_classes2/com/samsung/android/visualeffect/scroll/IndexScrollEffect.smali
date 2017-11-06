.class public Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;
.super Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;
.source "IndexScrollEffect.java"


# static fields
.field public static final LEFT_HANDLE:I = 0x0

.field public static final RIGHT_HANDLE:I = 0x1


# instance fields
.field private bigTextAlphaWhenOpen:[I

.field private bigTextPaint:Landroid/graphics/Paint;

.field private bigTextSize:F

.field private bigTextSizeSpecific:F

.field private bigTextXOffsetWhenOpen:[F

.field private circleCenterX:F

.field private circleCenterY:F

.field private circleRadius:F

.field private handleMode:I

.field private paintColor:I

.field private rightMargin:F

.field private scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

.field private shownFrameWhenOpen:I

.field private smallTextPaint:Landroid/graphics/Paint;

.field private smallTextSize:F

.field private smallTextY:F

.field private targetBigText:Ljava/lang/String;

.field private targetSmallText:Ljava/lang/String;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;-><init>(Landroid/content/Context;)V

    .line 19
    const/high16 v1, 0x430c0000    # 140.0f

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextY:F

    .line 23
    const/high16 v1, 0x43240000    # 164.0f

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSize:F

    .line 24
    const/high16 v1, 0x42300000    # 44.0f

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextSize:F

    .line 25
    const/high16 v1, 0x43180000    # 152.0f

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSizeSpecific:F

    .line 26
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextXOffsetWhenOpen:[F

    .line 28
    iput v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->textColor:I

    .line 29
    const v1, -0x33007d00

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->paintColor:I

    .line 30
    iput v4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shownFrameWhenOpen:I

    .line 31
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextAlphaWhenOpen:[I

    .line 32
    iput v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetBigText:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetSmallText:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "visualeffectScroll"

    const-string v2, "IndexScrollEffect : Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scale:F

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    .line 46
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationTotalFrame:I

    .line 47
    const-string/jumbo v1, "visualeffectScroll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationTotalFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationTotalFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    .line 50
    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSize:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSize:F

    .line 51
    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextSize:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextSize:F

    .line 52
    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSizeSpecific:F

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSizeSpecific:F

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextXOffsetWhenOpen:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextXOffsetWhenOpen:[F

    aget v2, v1, v0

    iget v3, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scale:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->paintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getCircleCenterX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    .line 60
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getCircleCenterY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 72
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    return-void

    .line 26
    :array_0
    .array-data 4
        0x0
        0x42080000    # 34.0f
        0x423c0000    # 47.0f
        0x42960000    # 75.0f
        0x43030000    # 131.0f
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0xff
        0xcd
        0x9b
        0x69
        0x37
    .end array-data
.end method

.method private drawLastFrameCircle(Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widthOffset"    # F

    .prologue
    .line 174
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 175
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    sub-float/2addr v0, v5

    sub-float v1, v0, p2

    .line 176
    .local v1, "left":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    sub-float v2, v0, v5

    .line 177
    .local v2, "top":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    add-float v3, v0, v5

    .line 178
    .local v3, "right":F
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    add-float v4, v0, v5

    .line 179
    .local v4, "bottom":F
    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget v6, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 183
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    iget v6, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->close()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentWidthOffset:F

    .line 127
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v3

    .line 136
    .local v3, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 138
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-nez v8, :cond_3

    :cond_2
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-ne v8, v12, :cond_5

    .line 139
    :cond_3
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationTotalFrame:I

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_4

    .line 150
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentWidthOffset:F

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->drawLastFrameCircle(Landroid/graphics/Canvas;F)V

    .line 152
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 155
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v9}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shownFrameWhenOpen:I

    sub-int/2addr v9, v10

    if-lt v8, v9, :cond_0

    .line 157
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    sub-int/2addr v8, v9

    add-int/lit8 v6, v8, -0x1

    .line 158
    .local v6, "textXOffsetIndex":I
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextXOffsetWhenOpen:[F

    aget v2, v8, v6

    .line 159
    .local v2, "bigTextXOffset":F
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetWidthOffset:F

    div-float/2addr v8, v11

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    sub-float/2addr v8, v9

    sub-float v7, v8, v2

    .line 160
    .local v7, "tx":F
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_a

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    sub-float v7, v8, v7

    move v0, v7

    .line 161
    .end local v7    # "tx":F
    .local v0, "bX":F
    :goto_2
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float v1, v8, v9

    .line 162
    .local v1, "bY":F
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextAlphaWhenOpen:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetBigText:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v9}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_0

    .line 166
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_d

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    sub-float v4, v8, v9

    .line 167
    .local v4, "sX":F
    :goto_3
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextY:F

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float v5, v8, v9

    .line 168
    .local v5, "sY":F
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetSmallText:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v4, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "bX":F
    .end local v1    # "bY":F
    .end local v2    # "bigTextXOffset":F
    .end local v4    # "sX":F
    .end local v5    # "sY":F
    .end local v6    # "textXOffsetIndex":I
    :cond_5
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_6

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-eqz v8, :cond_7

    :cond_6
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-nez v8, :cond_8

    .line 141
    :cond_7
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {p1, v8, v10, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_1

    .line 144
    :cond_8
    const-string/jumbo v8, "visualeffectScroll"

    const-string v9, "handleMode Parameter Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v2    # "bigTextXOffset":F
    .restart local v6    # "textXOffsetIndex":I
    .restart local v7    # "tx":F
    :cond_9
    move v0, v7

    .line 160
    goto :goto_2

    :cond_a
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-ne v8, v12, :cond_b

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    sub-float v7, v8, v7

    move v0, v7

    goto/16 :goto_2

    :cond_b
    move v0, v7

    goto/16 :goto_2

    .line 166
    .end local v7    # "tx":F
    .restart local v0    # "bX":F
    .restart local v1    # "bY":F
    :cond_c
    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    goto :goto_3

    :cond_d
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-ne v8, v12, :cond_e

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    sub-float v4, v8, v9

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    goto :goto_3
.end method

.method public open(FFFLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "y"    # F
    .param p2, "smallTextY"    # F
    .param p3, "rightMargin"    # F
    .param p4, "bigText"    # Ljava/lang/String;
    .param p5, "smallText"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 78
    iput v6, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->open(FFFLjava/lang/String;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public open(FFFLjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "y"    # F
    .param p2, "smallTextY"    # F
    .param p3, "rightMargin"    # F
    .param p4, "bigText"    # Ljava/lang/String;
    .param p5, "smallText"    # Ljava/lang/String;
    .param p6, "handlePosition"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 83
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isOpen:Z

    if-eqz v0, :cond_0

    .line 86
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationTotalFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    .line 89
    :cond_0
    const-string/jumbo v0, "\u0d10"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSizeSpecific:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    :goto_0
    iput p6, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    .line 97
    iput p1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetY:F

    .line 98
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isOpen:Z

    .line 99
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isYMoving:Z

    .line 100
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isWidthMoving:Z

    .line 101
    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isFrameMoving:Z

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    .line 103
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->startAnimation()V

    .line 106
    iput p2, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextY:F

    .line 107
    iput p3, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    .line 109
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 110
    iput-object p4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetBigText:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetSmallText:Ljava/lang/String;

    .line 112
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 113
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetWidthOffset:F

    .line 115
    iput v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shownFrameWhenOpen:I

    .line 121
    :cond_2
    :goto_1
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 117
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetWidthOffset:F

    .line 118
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextXOffsetWhenOpen:[F

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shownFrameWhenOpen:I

    goto :goto_1
.end method

.method public setBigTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 191
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBigTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    return-void
.end method

.method public setBigTextSize(F)V
    .locals 3
    .param p1, "textSize"    # F

    .prologue
    .line 201
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBigTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    return-void
.end method

.method public setSmallTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 186
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmallTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    return-void
.end method

.method public setSmallTextSize(F)V
    .locals 3
    .param p1, "textSize"    # F

    .prologue
    .line 196
    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmallTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    return-void
.end method
