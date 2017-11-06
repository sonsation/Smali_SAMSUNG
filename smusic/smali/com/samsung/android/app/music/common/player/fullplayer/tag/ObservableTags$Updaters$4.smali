.class final enum Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$4;
.super Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;)V

    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 310
    if-nez p2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p2

    .line 313
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;

    .line 314
    .local v0, "l":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;
    iget v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;->lyricsType:I

    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$4;->addSpace(Landroid/view/View;Landroid/text/SpannableStringBuilder;I)V

    .line 318
    iget v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;->lyricsType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$4;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->LYRICS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;->SYNCED:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 320
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$4;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->LYRICS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;->UNSYNCED:Ljava/lang/CharSequence;

    goto :goto_1
.end method
