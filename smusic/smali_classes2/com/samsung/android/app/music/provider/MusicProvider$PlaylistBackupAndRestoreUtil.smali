.class final Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;
.super Ljava/lang/Object;
.source "MusicProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistBackupAndRestoreUtil"
.end annotation


# static fields
.field private static final RAW_QUERY_CHECK_DUPLICATED_PLAY_ORDER:Ljava/lang/String; = "SELECT * FROM  (SELECT count(play_order) AS count_of_tracks    FROM audio_playlists_map WHERE playlist_id = ? GROUP BY play_order) WHERE count_of_tracks > 1"

.field private static final RAW_QUERY_GET_PLAYLISTS_WITH_DUPLICATED_PLAY_ORDER:Ljava/lang/String; = "SELECT playlist_id, count_of_tracks FROM  (SELECT playlist_id, count(play_order) AS count_of_tracks FROM   audio_playlists_map GROUP BY playlist_id, play_order)  WHERE count_of_tracks > 1 GROUP BY playlist_id"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_B&R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3435
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->updateAudioPlaylistsMap(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3435
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->rearrangePlayOrder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static rearrangePlayOrder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 3461
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rearrangePlayOrderInPlaylist : arg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3463
    .local v4, "start":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3464
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v1, v6

    .line 3467
    .local v1, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    const-string v6, "SELECT * FROM  (SELECT count(play_order) AS count_of_tracks    FROM audio_playlists_map WHERE playlist_id = ? GROUP BY play_order) WHERE count_of_tracks > 1"

    invoke-virtual {p0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 3468
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 3469
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->rearrangePlayOrderInternal(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3471
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3472
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3474
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3477
    .local v2, "end":J
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rearrangePlayOrderInPlaylist takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    return-void

    .line 3471
    .end local v2    # "end":J
    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3474
    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 3471
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3467
    :catch_1
    move-exception v6

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3471
    :catchall_1
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v7, :cond_4

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :goto_2
    :try_start_8
    throw v6

    :catch_2
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception v6

    goto :goto_1
.end method

.method private static rearrangePlayOrderInternal(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3481
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rearrangePlayOrderInPlaylistInternal id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    const-string v0, "DROP TABLE IF EXISTS tempTable;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3485
    const-string v0, "CREATE TABLE IF NOT EXISTS tempTable AS SELECT * FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order;"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3488
    const-string v0, "UPDATE audio_playlists_map SET play_order = (SELECT rowid FROM tempTable WHERE tempTable._id = audio_playlists_map._id) WHERE playlist_id=?;"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3491
    return-void
.end method

.method private static updateAudioPlaylistsMap(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3450
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateAudioPlaylistsMap"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3452
    .local v2, "start":J
    const-string v4, "UPDATE audio_playlists_map SET audio_id=(SELECT CASE WHEN (SELECT _id FROM audio_meta WHERE _data=audio_data) IS NULL THEN -1 ELSE (SELECT _id FROM audio_meta WHERE _data=audio_data) END) WHERE audio_id NOT IN (SELECT _id FROM audio_meta)"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3457
    .local v0, "end":J
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAudioPlaylistsMap takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    return-void
.end method
