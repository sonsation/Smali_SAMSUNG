.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TagBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeSpan"
.end annotation


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mHeight:I

.field private final mText:Ljava/lang/CharSequence;

.field private final mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    .line 265
    iput p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mWidth:I

    .line 266
    iput p4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mHeight:I

    .line 268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4, "end"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v10

    .line 284
    .local v10, "textWidth":F
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mWidth:I

    int-to-float v1, v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 286
    .local v11, "width":F
    sub-float v1, v11, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    .line 288
    .local v8, "fsm":F
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mHeight:I

    sub-int v2, p8, p6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v9, v1

    .line 289
    .local v9, "height":F
    move/from16 v0, p6

    int-to-float v1, v0

    sub-int v2, p8, p6

    int-to-float v2, v2

    sub-float v2, v9, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 p6, v0

    .line 291
    move/from16 v0, p6

    int-to-float v3, v0

    add-float v4, p5, v11

    move/from16 v0, p6

    int-to-float v1, v0

    add-float v5, v1, v9

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-float v5, p5, v8

    move/from16 v0, p7

    int-to-float v6, v0

    move-object v1, p1

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 293
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4, "end"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
