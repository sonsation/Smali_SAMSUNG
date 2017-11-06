.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TagBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddingSpan"
.end annotation


# instance fields
.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mText:Ljava/lang/CharSequence;

    .line 233
    iput p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mPaddingLeft:I

    .line 234
    iput p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mPaddingRight:I

    .line 235
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7
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
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mPaddingLeft:I

    int-to-float v0, v0

    add-float v4, p5, v0

    int-to-float v5, p7

    move-object v0, p1

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 250
    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
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
    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method
