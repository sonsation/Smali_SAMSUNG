.class public Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;
.source "CpMilkLyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;
    }
.end annotation


# static fields
.field private static final NO_USE_UPDATED_COLUMN:J = -0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lyricsCachePath"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtain([Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;)V

    .line 45
    return-void
.end method

.method private loadLyricsUrlFromCp(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;)V
    .locals 6
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;

    .prologue
    .line 72
    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLyricsUrlFromCp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    .line 74
    .local v1, "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;)V

    .line 95
    .local v0, "callback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "trackIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getLyrics(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 98
    return-void
.end method


# virtual methods
.method protected getCachedLyricsInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 2
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->getCachedLyricsInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsJournal$LyricsInfo;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    .line 103
    .local v0, "cached":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    .end local v0    # "cached":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :goto_0
    return-object v0

    .restart local v0    # "cached":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareLyricsUrl(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;Ljava/lang/Object;)V
    .locals 10
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;
    .param p3, "user"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareLyricsUrl Track-id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;->getContentUriForFullTrack()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "track_id"

    aput-object v3, v2, v8

    const-string/jumbo v3, "track_synclyrics_url"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string/jumbo v4, "track_lyrics_url"

    aput-object v4, v2, v3

    const-string/jumbo v3, "track_id=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;->loadLyricsUrlFromCp(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 62
    :cond_3
    :try_start_2
    const-string/jumbo v0, "track_synclyrics_url"

    .line 63
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    const-string/jumbo v0, "track_lyrics_url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    :cond_4
    const-wide/16 v0, -0x1

    invoke-interface {p2, v7, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;->onLyricsUrlPrepared(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    if-eqz v6, :cond_1

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 51
    .end local v7    # "url":Ljava/lang/String;
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_6

    if-eqz v5, :cond_7

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
