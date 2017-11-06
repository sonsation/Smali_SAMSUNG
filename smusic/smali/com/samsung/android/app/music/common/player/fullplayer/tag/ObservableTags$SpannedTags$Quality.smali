.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quality"
.end annotation


# instance fields
.field final DSD:Ljava/lang/CharSequence;

.field final UHQ:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 408
    .local v6, "res":Landroid/content/res/Resources;
    const v0, 0x7f11010e

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 409
    .local v3, "color":I
    const v0, 0x7f0d04d4

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 410
    .local v4, "w":I
    const v0, 0x7f0d04d3

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 411
    .local v5, "h":I
    const v1, 0x7f0a04c8

    const-string/jumbo v0, "sec-roboto-light"

    .line 412
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, p1

    .line 411
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;III)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;->UHQ:Ljava/lang/CharSequence;

    .line 413
    const v1, 0x7f0a048b

    const-string/jumbo v0, "sec-roboto-light"

    .line 414
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, p1

    .line 413
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;III)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;->DSD:Ljava/lang/CharSequence;

    .line 415
    return-void
.end method
