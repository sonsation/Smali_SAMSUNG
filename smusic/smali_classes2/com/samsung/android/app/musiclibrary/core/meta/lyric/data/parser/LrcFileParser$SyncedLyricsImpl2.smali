.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;
.super Ljava/lang/Object;
.source "LrcFileParser.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncedLyricsImpl2"
.end annotation


# instance fields
.field private final mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    .line 273
    return-void
.end method


# virtual methods
.method public find(J)I
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->find(J)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getCount()I

    move-result v0

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->isSyncable()Z

    move-result v0

    return v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "offset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->setTimeOffset(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeOffset(J)V
    .locals 1
    .param p1, "timeOffset"    # J

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->setTimeOffset(J)V

    .line 320
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->trim()V

    .line 315
    return-void
.end method
