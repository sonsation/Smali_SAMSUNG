.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LyricsType"
.end annotation


# static fields
.field static final LYRICS:I = 0x1

.field static final NO:I = 0x0

.field static final SYNCED_LYRICS:I = 0x2


# instance fields
.field lyricsType:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "lyricsType"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;->lyricsType:I

    .line 143
    return-void
.end method

.method static from(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;
    .locals 2
    .param p0, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 161
    .local v0, "lyricsType":I
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;-><init>(I)V

    return-object v1

    .line 159
    .end local v0    # "lyricsType":I
    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .restart local v0    # "lyricsType":I
    :goto_1
    goto :goto_0

    .end local v0    # "lyricsType":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 147
    instance-of v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 148
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;

    .line 149
    .local v0, "l":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;->lyricsType:I

    iget v3, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;->lyricsType:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 151
    .end local v0    # "l":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;
    :cond_0
    return v1
.end method
