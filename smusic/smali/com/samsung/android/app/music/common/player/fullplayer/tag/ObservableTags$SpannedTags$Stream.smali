.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stream"
.end annotation


# instance fields
.field final DRM:Ljava/lang/CharSequence;

.field final MILK:Ljava/lang/CharSequence;

.field final MP3:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const v0, 0x7f0a0487

    const-string/jumbo v1, "sec-roboto-light"

    .line 428
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 427
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;->DRM:Ljava/lang/CharSequence;

    .line 429
    const v0, 0x7f0a04ae

    const-string/jumbo v1, "sec-roboto-light"

    .line 430
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 429
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;->MP3:Ljava/lang/CharSequence;

    .line 431
    const v0, 0x7f0a04c4

    const-string/jumbo v1, "sec-roboto-condensed"

    .line 432
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 431
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;->MILK:Ljava/lang/CharSequence;

    .line 433
    return-void
.end method
