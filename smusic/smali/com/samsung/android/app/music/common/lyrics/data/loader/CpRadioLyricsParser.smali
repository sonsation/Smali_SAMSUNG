.class public final Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;
.super Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;
.source "CpRadioLyricsParser.java"


# static fields
.field private static final NO_USE_UPDATED_COLUMN:J = -0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lyricsCachePath"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public prepareLyricsUrl(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;Ljava/lang/Object;)V
    .locals 12
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;
    .param p3, "user"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    .local v8, "lyricsUrl":Ljava/lang/String;
    instance-of v0, p3, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    :cond_0
    move-object v7, p3

    .line 37
    check-cast v7, Landroid/os/Bundle;

    .line 38
    .local v7, "data":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->getStationId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 39
    .local v9, "stationId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "track_synclyrics_url"

    aput-object v3, v2, v10

    const-string/jumbo v3, "track_lyrics_url"

    aput-object v3, v2, v11

    const-string/jumbo v3, "station_id=? AND track_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v10

    aput-object p1, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string/jumbo v0, "track_synclyrics_url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string/jumbo v0, "track_lyrics_url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 55
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareLyricsUrl() - lyricsUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-wide/16 v0, -0x1

    invoke-interface {p2, v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;->onLyricsUrlPrepared(Ljava/lang/String;J)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected prepareSourceIdInternal(Landroid/content/Context;JLjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaId"    # J
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "trackId":Ljava/lang/String;
    instance-of v2, p4, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v0, p4

    .line 24
    check-cast v0, Landroid/os/Bundle;

    .line 25
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->getSourceId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareSourceIdInternal() - user data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", trackId :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v1
.end method
