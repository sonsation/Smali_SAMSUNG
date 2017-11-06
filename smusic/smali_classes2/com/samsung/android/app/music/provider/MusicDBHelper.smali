.class final Lcom/samsung/android/app/music/provider/MusicDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicDBHelper.java"


# static fields
.field private static final ALBUM_PINYIN_COLUMNS_20077:[Ljava/lang/String;

.field private static final ARTIST_PINYIN_COLUMNS_20077:[Ljava/lang/String;

.field private static final AUDIO_PINYIN_COLUMNS_20077:[Ljava/lang/String;

.field static final DATABASE_VERSION:I = 0x4eeb

.field private static final PLAYLIST_PINYIN_COLUMNS:[Ljava/lang/String;

.field private static final RESERVED_COLUMNS_ALBUM_20200:Ljava/lang/String; = "album_id, source_album_id, album_key, album, album_artist"

.field private static final RESERVED_COLUMNS_ALBUM_20200_WITH_PINYIN:Ljava/lang/String; = "album_id, source_album_id, album_key, album, album_artist, album_pinyin"

.field private static final RESERVED_COLUMNS_ALBUM_ART_20200:Ljava/lang/String; = "album_id, source_album_id, album_art_location, _data"

.field private static final RESERVED_COLUMNS_ARTIST_20200:Ljava/lang/String; = "artist_id, source_artist_id, artist_key, artist"

.field private static final RESERVED_COLUMNS_ARTIST_20200_WITH_PINYIN:Ljava/lang/String; = "artist_id, source_artist_id, artist_key, artist, artist_pinyin"

.field private static final RESERVED_COLUMNS_AUDIO_META_20200:Ljava/lang/String; = "_id, source_id, _data, _size, mime_type, title, title_key, _display_name, duration, track, artist_id, album_id, genre_name, composer, year, year_name, bucket_id, bucket_display_name, sampling_rate, bit_depth, is_music, is_favorite, is_secretbox, is_drm, date_added, date_modified, date_updated, recently_played, most_played, recently_added_remove_flag, media_type"

.field private static final RESERVED_COLUMNS_AUDIO_META_20200_WITH_PINYIN:Ljava/lang/String; = "_id, source_id, _data, _size, mime_type, title, title_key, _display_name, duration, track, artist_id, album_id, genre_name, composer, year, year_name, bucket_id, bucket_display_name, sampling_rate, bit_depth, is_music, is_favorite, is_secretbox, is_drm, date_added, date_modified, date_updated, recently_played, most_played, recently_added_remove_flag, media_type, title_pinyin, genre_name_pinyin, composer_pinyin, _display_name_pinyin, bucket_display_name_pinyin"

.field private static final RESERVED_COLUMNS_FAVORITE_20200:Ljava/lang/String; = "_id, category_type, category_id, favorite_name, album_id, data1, data2, display_order"

.field private static final RESERVED_COLUMNS_PLAYLIST_20077:Ljava/lang/String; = "_id, source_id, _data, name, date_added, date_modified, synced_hashcode"

.field private static final RESERVED_COLUMNS_PLAYLIST_20077_WITH_PINYIN:Ljava/lang/String; = "_id, source_id, _data, name, date_added, date_modified, synced_hashcode, name_pinyin"

.field private static final RESERVED_COLUMNS_PLAYLIST_20200:Ljava/lang/String;

.field private static final RESERVED_COLUMNS_PLAYLIST_20200_WITH_PINYIN:Ljava/lang/String;

.field private static final RESERVED_COLUMNS_PLAYLIST_MAP_20200:Ljava/lang/String; = "_id, audio_id, audio_source_id, playlist_id, play_order, audio_data"

.field static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/samsung/android/app/music/provider/MusicDBHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/provider/MusicDBInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    .line 69
    const-string v0, "_id, source_id, _data, name, date_added, date_modified, synced_hashcode"

    const-string/jumbo v1, "source_id"

    const-string/jumbo v2, "source_playlist_id"

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->RESERVED_COLUMNS_PLAYLIST_20200:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->RESERVED_COLUMNS_PLAYLIST_20200:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->RESERVED_COLUMNS_PLAYLIST_20200_WITH_PINYIN:Ljava/lang/String;

    .line 339
    const-string/jumbo v0, "title_pinyin TEXT,genre_name_pinyin TEXT,composer_pinyin TEXT,_display_name_pinyin TEXT,bucket_display_name_pinyin TEXT"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->AUDIO_PINYIN_COLUMNS_20077:[Ljava/lang/String;

    .line 341
    const-string v0, "album_pinyin TEXT"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->ALBUM_PINYIN_COLUMNS_20077:[Ljava/lang/String;

    .line 343
    const-string v0, "artist_pinyin TEXT"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->ARTIST_PINYIN_COLUMNS_20077:[Ljava/lang/String;

    .line 345
    const-string v0, "name_pinyin TEXT"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->PLAYLIST_PINYIN_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 96
    const-string/jumbo v0, "smusic.db"

    const/4 v1, 0x0

    const/16 v2, 0x4eeb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicDBHelper : pinyin enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MUSIC_PROVIDER_ENABLED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 102
    return-void
.end method

.method private addColumnAudioDataToPlaylistMap_20078(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 430
    const-string v0, "audio_playlists_map"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_data TEXT"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 432
    const-string v0, "audio_playlists_map_data_index"

    const-string v1, "audio_playlists_map(audio_data)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "UPDATE audio_playlists_map SET audio_data=(SELECT _data FROM audio_meta WHERE _id=audio_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    const-string v0, "DELETE FROM audio_playlists_map WHERE audio_data is NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private addColumnSortByToPlaylist_20200(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 442
    const-string v4, "audio_playlists"

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "sort_by INTEGER DEFAULT -1"

    aput-object v6, v5, v8

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    const-string v4, "music_player_pref"

    .line 445
    invoke-virtual {p2, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 446
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "playlist_sorting_rule"

    const/4 v5, 0x0

    .line 447
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "legacySortBy":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 450
    sget-object v4, Lcom/samsung/android/app/music/common/info/MusicPreference$Value$Library$PlaylistSorting;->ALPHABETICAL:Ljava/lang/String;

    .line 451
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    .line 452
    .local v2, "sortBy":I
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "sort_by"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v4, "audio_playlists"

    const-string v5, "name=?"

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "FavoriteList#328795!432@1341"

    aput-object v7, v6, v8

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 457
    .end local v2    # "sortBy":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private addColumnsForMilkIntegrated_20200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    const-string v0, "audio_meta"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "local_track_id TEXT"

    aput-object v2, v1, v3

    const-string v2, "drm_type INTEGER DEFAULT 0"

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 486
    const-string v0, "audio_playlists"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "is_sync INTEGER DEFAULT 0"

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 490
    const-string v0, "audio_playlists_map"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "audio_cp_attrs INTEGER"

    aput-object v2, v1, v3

    const-string/jumbo v2, "server_track_seq_id TEXT"

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 495
    const-string v0, "hearts"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "server_category_id TEXT"

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method private alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    .line 549
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p3, v2

    .line 551
    .local v0, "column":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ADD COLUMN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alter column duplicate column :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 556
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    return-void
.end method

.method private clearMelonDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 281
    const-string/jumbo v1, "sqlite_master"

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "type"

    aput-object v0, v2, v6

    const-string v0, "name"

    aput-object v0, v2, v7

    const-string v3, "(type=? OR type=?) AND name LIKE ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "view"

    aput-object v0, v4, v6

    const-string/jumbo v0, "table"

    aput-object v0, v4, v7

    const-string v0, "melon_%"

    aput-object v0, v4, v11

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 285
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, "type":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "name":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearMelonDatabase : type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "view"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 281
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v8, :cond_0

    if-eqz v5, :cond_5

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v0

    .line 293
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 297
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    if-eqz v5, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 300
    :cond_3
    :goto_3
    const-string v0, "DROP TABLE IF EXISTS audio_meta_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map_online_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v0, "DROP TABLE IF EXISTS dcf"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "DROP VIEW IF EXISTS dcf_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    const-string v0, "DROP TRIGGER IF EXISTS dcf_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    const-string v0, "DROP TRIGGER IF EXISTS melon_thumbnails_update_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    const-string v0, "DROP TRIGGER IF EXISTS download_complete_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    const-string v0, "DELETE FROM albums WHERE source_album_id IS NULL OR album_content_location!=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v0, "DELETE FROM album_art WHERE source_album_id IS NULL OR album_art_location!=\'mediaStore\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    const-string v0, "DELETE FROM artists WHERE source_artist_id IS NULL OR artist_content_location!=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    const-string v0, "DELETE FROM audio_meta WHERE content_location!=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    const-string v0, "DELETE FROM audio_playlists_map WHERE audio_data LIKE \'dummy_data_%\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    return-void

    .line 297
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private clearOldDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 263
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    const-string v0, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v0, "DROP VIEW IF EXISTS audio_with_albumart"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v0, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v0, "DROP VIEW IF EXISTS music_folders_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "DROP VIEW IF EXISTS searchhelpertitle"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v0, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    const-string v0, "DROP TABLE IF EXISTS download_queue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    const-string v0, "DROP TABLE IF EXISTS dlna_dms_contents_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v0, "DROP TABLE IF EXISTS inventory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string v0, "DROP TABLE IF EXISTS remote_songs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string v0, "DROP VIEW IF EXISTS remote_songs_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method private createAudioIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 367
    const-string v0, "album_id_idx"

    const-string v1, "audio_meta(album_id)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "artist_id_idx"

    const-string v1, "audio_meta(artist_id)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v0, "title_idx"

    const-string v1, "audio_meta(title)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v0, "titlekey_index"

    const-string v1, "audio_meta(title_key)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "music_artist_name_index"

    const-string v1, "audio_meta(music_album_artist)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "genre_name_index"

    const-string v1, "audio_meta(genre_name)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "composer_index"

    const-string v1, "audio_meta(composer)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "bucket_id_index"

    const-string v1, "audio_meta(bucket_id)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "path_index"

    const-string v1, "audio_meta(_data)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "albumkey_index"

    const-string v1, "albums(album_key)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "album_idx"

    const-string v1, "albums(album)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "artistkey_index"

    const-string v1, "artists(artist_key)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "artist_idx"

    const-string v1, "artists(artist)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private createAudioTable_20077(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 349
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "createAudioTable"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "audio_meta"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id INTEGER,_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre_name TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2,content_location INTEGER,exclusivity INTEGER,CONSTRAINT unique_contents UNIQUE(source_id, content_location) ON CONFLICT IGNORE"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "albums"

    const-string v1, "album_id INTEGER PRIMARY KEY,source_album_id INTEGER,album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT,album_content_location INTEGER NOT NULL,CONSTRAINT unique_albums UNIQUE(source_album_id, album_content_location),CONSTRAINT unique_albums_key UNIQUE(album_key, album_content_location)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "album_art"

    const-string/jumbo v1, "source_album_id        INTEGER,album_id               INTEGER UNIQUE,album_art_location     TEXT,_data                  TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "artists"

    const-string v1, "artist_id INTEGER PRIMARY KEY,source_artist_id INTEGER,artist_key TEXT NOT NULL,artist TEXT NOT NULL,artist_content_location INTEGER NOT NULL, CONSTRAINT unique_artist UNIQUE(source_artist_id, artist_content_location),CONSTRAINT unique_artist_key UNIQUE(artist_key, artist_content_location)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "audio_meta"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->AUDIO_PINYIN_COLUMNS_20077:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 359
    const-string v0, "albums"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->ALBUM_PINYIN_COLUMNS_20077:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    const-string v0, "artists"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->ARTIST_PINYIN_COLUMNS_20077:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method private createAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 387
    const-string v0, "audio"

    const-string v1, "SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "music_album_info"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->VIEW_SCHEMA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "music_artist_info"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->VIEW_SCHEMA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "music_album_artist_view"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;->VIEW_SCHEMA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "music_genres_view"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Genre;->VIEW_SCHEMA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "music_folders_view"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;->VIEW_SCHEMA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "music_composers_view"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Composer;->VIEW_SCHEMA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v0, "search_helper_title"

    const-string v1, "SELECT * FROM audio ORDER BY title  COLLATE LOCALIZED "

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->LOCAL_VIEW_SEARCH_QUERY_ARTIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNION ALL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->LOCAL_VIEW_SEARCH_QUERY_ALBUM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNION ALL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->LOCAL_VIEW_SEARCH_QUERY_TRACK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "bixby_total_search"

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->TOTAL_LOCAL_VIEW_SEARCH_QUERY_TRACK:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private createDLNATable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 321
    const-string v0, "dlna_dms_contents_table"

    const-string v1, "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, artist TEXT, album TEXT, album_id INTEGER, title TEXT, _data TEXT, mime_type TEXT, duration INTEGER, _size LONG, extension TEXT, seed TEXT, genre_name TEXT"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "dlna_open_intent_table"

    const-string v1, "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, artist TEXT, album TEXT, album_id INTEGER, title TEXT, _data TEXT, mime_type TEXT, duration INTEGER, _size LONG, extension TEXT, seed TEXT, genre_name TEXT"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "dlna_dms_table"

    const-string v1, "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, album_art TEXT, nic_id TEXT"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "dlna_dmr_table"

    const-string v1, "_id INTEGER PRIMARY KEY, avplayer_id TEXT, avplayer_name TEXT, album_art TEXT, nic_id TEXT, is_seekable_on_paused INTEGER, ip_address TEXT"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "DROP TABLE IF EXISTS dlna_album_art"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    const-string v0, "CREATE TABLE IF NOT EXISTS dlna_album_art (album_id INTEGER PRIMARY KEY,album_art TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private createFavoriteTable_10009(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 510
    const-string v0, "favorites"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0,CONSTRAINT unique_favorites UNIQUE(category_type, category_id)"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "INSERT OR IGNORE INTO favorites (category_type,category_id) VALUES (65540,-11);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "indexName"    # Ljava/lang/String;
    .param p3, "indexSchema"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private createPlaylistTable_20077(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 410
    const-string v1, "audio_playlists"

    const-string v2, "_id INTEGER PRIMARY KEY,source_id INTEGER,_data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "audio_playlists"

    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBHelper;->PLAYLIST_PINYIN_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    :cond_0
    const-string v1, "audio_playlists_map"

    const-string v2, "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,audio_source_id INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v1, "audio_playlists_cleanup"

    const-string v2, "DELETE ON audio_playlists   BEGIN     DELETE FROM audio_playlists_map WHERE playlist_id = old._id;  END;"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTriggerInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v1, "sync_playlist_list"

    const-string v2, "_id INTEGER PRIMARY KEY, playlist_id INTEGER NOT NULL, playlist_name TEXT, sync_down_action TEXT, request_date INTEGER NOT NULL, CONSTRAINT unique_sync_list UNIQUE(playlist_id,sync_down_action) ON CONFLICT REPLACE"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v1, "sync_playlist_list_update_trigger"

    const-string v2, "AFTER INSERT ON sync_playlist_list  BEGIN    UPDATE sync_playlist_list SET playlist_name=(SELECT name FROM audio_playlists WHERE audio_playlists._id=new.playlist_id); END"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTriggerInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "FavoriteList#328795!432@1341"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "_data"

    const-string v2, "FavoriteList#328795!432@1341"

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makePlaylistData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    const-string v1, "audio_playlists"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 427
    return-void
.end method

.method private createStreamingCacheTables_20077(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 517
    const-string/jumbo v0, "streaming_cache_table"

    const-string v1, "_id INTEGER PRIMARY KEY, streaming_id TEXT NOT NULL, path TEXT NOT NULL, quality INTEGER, bitrate TEXT, type TEXT, server_time_stamp TEXT, duration INTEGER, content_length INTEGER, downloaded_length INTEGER DEFAULT 0, is_full_stream INTEGER DEFAULT 0, encrypt_type INTEGER DEFAULT -1, date_modified INTEGER DEFAULT (strftime(\'%s\',\'now\')), last_access_time INTEGER DEFAULT (strftime(\'%s\',\'now\')), CONSTRAINT unique_name UNIQUE (path) ON CONFLICT REPLACE"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "tableDefinition"    # Ljava/lang/String;

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private createTriggerInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "triggerName"    # Ljava/lang/String;
    .param p3, "triggerSchema"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "viewSchema"    # Ljava/lang/String;

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-class v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->sInstance:Lcom/samsung/android/app/music/provider/MusicDBHelper;

    if-nez v0, :cond_1

    .line 86
    const-class v2, Lcom/samsung/android/app/music/provider/MusicDBHelper;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->sInstance:Lcom/samsung/android/app/music/provider/MusicDBHelper;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->sInstance:Lcom/samsung/android/app/music/provider/MusicDBHelper;

    .line 90
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->sInstance:Lcom/samsung/android/app/music/provider/MusicDBHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUniqueKeyExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sourceIdColumnName"    # Ljava/lang/String;
    .param p2, "metaColumnName"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'si:\'||"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||\'_md:\'||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||\'_ca:\'||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x10001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uniqueKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private recreateTableWithColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnsDefinition"    # Ljava/lang/String;
    .param p4, "oldReservedColumns"    # Ljava/lang/String;
    .param p5, "newReservedColumns"    # Ljava/lang/String;

    .prologue
    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "tempTable":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RENAME TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method private recreateTableWithCpAttrsColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnsDefinition"    # Ljava/lang/String;
    .param p4, "reservedColumns"    # Ljava/lang/String;
    .param p5, "cpAttrsColumnName"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "tempTable":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x10001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RENAME TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private recreateTableWithCpAttrsColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnsDefinition"    # Ljava/lang/String;
    .param p4, "reservedColumns"    # Ljava/lang/String;
    .param p5, "cpAttrsColumnName"    # Ljava/lang/String;
    .param p6, "uniqueKeyColumn"    # Ljava/lang/String;
    .param p7, "sourceIdName"    # Ljava/lang/String;
    .param p8, "metaColumnName"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "tempTable":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x10001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    invoke-direct {p0, p7, p8}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getUniqueKeyExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RENAME TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method private recreateTable_20200(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "reservedPinyin"    # Z

    .prologue
    .line 570
    const-string v2, "audio_meta"

    const-string v3, "_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id TEXT,title_unique_key TEXT UNIQUE NOT NULL,_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre_name TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2,title_pinyin TEXT,genre_name_pinyin TEXT,composer_pinyin TEXT,_display_name_pinyin TEXT,bucket_display_name_pinyin TEXT,music_album_artist TEXT, music_album_artist_key TEXT, music_album_artist_pinyin TEXT, genre_name_key TEXT, composer_key TEXT, display_name_key TEXT, bucket_display_name_key TEXT, cp_attrs INTEGER NOT NULL"

    if-eqz p2, :cond_0

    const-string v4, "_id, source_id, _data, _size, mime_type, title, title_key, _display_name, duration, track, artist_id, album_id, genre_name, composer, year, year_name, bucket_id, bucket_display_name, sampling_rate, bit_depth, is_music, is_favorite, is_secretbox, is_drm, date_added, date_modified, date_updated, recently_played, most_played, recently_added_remove_flag, media_type, title_pinyin, genre_name_pinyin, composer_pinyin, _display_name_pinyin, bucket_display_name_pinyin"

    :goto_0
    const-string v5, "cp_attrs"

    const-string/jumbo v6, "title_unique_key"

    const-string/jumbo v7, "source_id"

    const-string/jumbo v8, "title"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithCpAttrsColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v2, "albums"

    const-string v3, "album_id INTEGER PRIMARY KEY,source_album_id TEXT,album_unique_key TEXT UNIQUE NOT NULL,album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT,album_pinyin TEXT,album_cp_attrs INTEGER NOT NULL"

    if-eqz p2, :cond_1

    const-string v4, "album_id, source_album_id, album_key, album, album_artist, album_pinyin"

    :goto_1
    const-string v5, "album_cp_attrs"

    const-string v6, "album_unique_key"

    const-string/jumbo v7, "source_album_id"

    const-string v8, "album"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithCpAttrsColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "artists"

    const-string v3, "artist_id INTEGER PRIMARY KEY, source_artist_id TEXT, artist_unique_key TEXT UNIQUE NOT NULL, artist_key TEXT NOT NULL,artist TEXT NOT NULL,artist_pinyin TEXT, is_multple_artist INTEGER DEFAULT 0, artist_cp_attrs INTEGER NOT NULL"

    if-eqz p2, :cond_2

    const-string v4, "artist_id, source_artist_id, artist_key, artist, artist_pinyin"

    :goto_2
    const-string v5, "artist_cp_attrs"

    const-string v6, "artist_unique_key"

    const-string/jumbo v7, "source_artist_id"

    const-string v8, "artist"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithCpAttrsColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v2, "hearts"

    const-string v3, "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0,cp_attrs INTEGER NOT NULL,CONSTRAINT unique_favorites UNIQUE(category_type, category_id)"

    const-string v4, "_id, category_type, category_id, favorite_name, album_id, data1, data2, display_order"

    const-string v5, "cp_attrs"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithCpAttrsColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "album_art"

    const-string/jumbo v3, "source_album_id        TEXT,album_id               INTEGER UNIQUE,album_art_location     TEXT,_data                  TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

    const-string v4, "album_id, source_album_id, album_art_location, _data"

    const-string v5, "album_id, source_album_id, album_art_location, _data"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v2, "audio_playlists"

    const-string v3, "_id INTEGER PRIMARY KEY,source_playlist_id TEXT, _data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT,name_pinyin TEXT,name_key TEXT"

    if-eqz p2, :cond_3

    const-string v4, "_id, source_id, _data, name, date_added, date_modified, synced_hashcode, name_pinyin"

    :goto_3
    if-eqz p2, :cond_4

    sget-object v5, Lcom/samsung/android/app/music/provider/MusicDBHelper;->RESERVED_COLUMNS_PLAYLIST_20200_WITH_PINYIN:Ljava/lang/String;

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "audio_playlists_map"

    const-string v3, "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,audio_source_id TEXT,audio_data TEXT"

    const-string v4, "_id, audio_id, audio_source_id, playlist_id, play_order, audio_data"

    const-string v5, "_id, audio_id, audio_source_id, playlist_id, play_order, audio_data"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTableWithColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void

    .line 570
    :cond_0
    const-string v4, "_id, source_id, _data, _size, mime_type, title, title_key, _display_name, duration, track, artist_id, album_id, genre_name, composer, year, year_name, bucket_id, bucket_display_name, sampling_rate, bit_depth, is_music, is_favorite, is_secretbox, is_drm, date_added, date_modified, date_updated, recently_played, most_played, recently_added_remove_flag, media_type"

    goto :goto_0

    .line 573
    :cond_1
    const-string v4, "album_id, source_album_id, album_key, album, album_artist"

    goto :goto_1

    .line 576
    :cond_2
    const-string v4, "artist_id, source_artist_id, artist_key, artist"

    goto :goto_2

    .line 585
    :cond_3
    const-string v4, "_id, source_id, _data, name, date_added, date_modified, synced_hashcode"

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/samsung/android/app/music/provider/MusicDBHelper;->RESERVED_COLUMNS_PLAYLIST_20200:Ljava/lang/String;

    goto :goto_4
.end method

.method private renameTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldTableName"    # Ljava/lang/String;
    .param p3, "newTableName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 560
    const-string/jumbo v1, "sqlite_master"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v6

    const-string/jumbo v3, "type=? AND name=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "table"

    aput-object v0, v4, v6

    aput-object p2, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 562
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RENAME TO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 565
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    :cond_1
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 560
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_1
    if-eqz v8, :cond_3

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private updateAudioMetaColumns_20200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    const-string v0, "UPDATE audio_meta SET music_album_artist=(SELECT CASE WHEN album_artist IS NULL THEN artist ELSE album_artist END FROM (SELECT _id, artist, album_artist FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id) AS tmp_audio WHERE tmp_audio._id=audio_meta._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    const-string v0, "UPDATE audio_meta SET music_album_artist=? WHERE music_album_artist IS NULL"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "<unknown>"

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    const-string v0, "UPDATE audio_meta SET composer=? WHERE composer IS NULL"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "<unknown>"

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;IILandroid/content/Context;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 143
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "updateDatabase fromVersion[%d],  toVersion[%d]) start"

    new-array v4, v8, [Ljava/lang/Object;

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 144
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v6, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 147
    if-le p2, p3, :cond_0

    .line 148
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Did you forget to wipe data?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 153
    :cond_0
    const/16 v1, 0x2711

    if-ge p2, v1, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->clearOldDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    :cond_1
    const/16 v1, 0x2719

    if-ge p2, v1, :cond_2

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createFavoriteTable_10009(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    :cond_2
    const/16 v1, 0x4e38

    if-ge p2, v1, :cond_3

    .line 163
    const-string v1, "ALTER TABLE favorites ADD COLUMN content_location INTEGER DEFAULT 1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    :cond_3
    const/16 v1, 0x4e6d

    if-ge p2, v1, :cond_4

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.action.CLEAR_DISK_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createAudioTable_20077(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createPlaylistTable_20077(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    const-string v1, "DROP TABLE IF EXISTS sync_count"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "smusic_db_info"

    const-string/jumbo v2, "sync_content_type TEXT UNIQUE on conflict replace, sync_date_integer INTEGER, sync_date_format TEXT, sync_full_update INTEGER, sync_msg TEXT, sync_locale TEXT"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "restore_list"

    const-string v2, "_id  INTEGER PRIMARY KEY AUTOINCREMENT, restore_action  INTEGER NOT NULL, from_version  INTEGER, to_version  INTEGER, extra  TEXT"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createStreamingCacheTables_20077(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 183
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    const/16 v1, 0x4e6e

    if-ge p2, v1, :cond_5

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->addColumnAudioDataToPlaylistMap_20078(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    const-string v1, "now_playing_queue_map"

    const-string v2, "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,play_order INTEGER NOT NULL"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "DELETE FROM audio_playlists WHERE name=?"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "now playing list 0123456789"

    aput-object v3, v2, v7

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_5
    const/16 v1, 0x4ee8

    if-ge p2, v1, :cond_7

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->clearMelonDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 196
    const-string v1, "DROP TABLE IF EXISTS music_cache_map"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v1, "DROP TABLE IF EXISTS audio_playlists_map_cache"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v1, "favorites"

    const-string v2, "hearts"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->renameTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->recreateTable_20200(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 202
    const-string v1, "audio_playlists_map_data_index"

    const-string v2, "audio_playlists_map(audio_data)"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createIndexInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "audio_playlists_cleanup"

    const-string v2, "DELETE ON audio_playlists   BEGIN     DELETE FROM audio_playlists_map WHERE playlist_id = old._id;  END;"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTriggerInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->addColumnSortByToPlaylist_20200(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->updateAudioMetaColumns_20200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->addColumnsForMilkIntegrated_20200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    const-string v1, "hearts"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, " sub_category_type INTEGER DEFAULT 0"

    aput-object v3, v2, v7

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->alterAddColumnsInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createDLNATable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createAudioIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_6

    .line 218
    const-string v1, "milk_drm"

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER UNIQUE,validity INTEGER DEFAULT 0,track_id TEXT"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "milk_drm_view"

    const-string v2, "SELECT milk_drm._id AS _id, audio_id, title, album_id, album, artist_id, artist, _data, is_secretbox, sampling_rate, mime_type, bit_depth, is_drm, validity, track_id  FROM milk_drm LEFT OUTER JOIN audio ON audio._id = milk_drm.audio_id WHERE drm_type=2"

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_6
    const-string v1, "UPDATE audio_meta SET date_modified=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    :cond_7
    const/16 v1, 0x4ee9

    if-ge p2, v1, :cond_8

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->updateLocalTrackIdColumnForMilk_20201(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    :cond_8
    const/16 v1, 0x4eeb

    if-ge p2, v1, :cond_9

    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->addRestoreList(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 239
    invoke-static {p4, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->clearPlaylistGarbageData(Landroid/content/Context;I)V

    .line 241
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "updateDatabase fromVersion[%d],  toVersion[%d]) end"

    new-array v4, v8, [Ljava/lang/Object;

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 241
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private updateDatabaseRelatedMilkDao(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 246
    if-le p2, p3, :cond_0

    .line 247
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 252
    :cond_0
    const/16 v0, 0x4ee8

    if-ge p2, v0, :cond_1

    .line 253
    const-string v0, "now_playing_queue_unique"

    const-string v1, "_id INTEGER PRIMARY KEY, audio_id INTEGER NOT NULL, recent_order INTEGER NOT NULL"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createTableInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "now_playing_queue_unique_view"

    const-string v1, "SELECT NPQU.*, CASE when PT.audio_id is null then AM._id else PT.audio_id end AS purchased_audio_id FROM now_playing_queue_unique AS NPQU LEFT JOIN audio_meta AS AM ON AM._id = NPQU.audio_id LEFT JOIN purchased_track AS PT ON PT.local_track_ext_320k = AM.local_track_id OR PT.local_track_ext = AM.local_track_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->createViewInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    return-void
.end method

.method private updateLocalTrackIdColumnForMilk_20201(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 502
    const-string v0, "UPDATE audio_meta SET local_track_id = track||\'@\'||_size||\'@\'||duration WHERE cp_attrs = 65537 AND local_track_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 506
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/16 v4, 0x4eeb

    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;IILandroid/content/Context;)V

    .line 112
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->setDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->updateDatabaseRelatedMilkDao(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 117
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 121
    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade : oldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;IILandroid/content/Context;)V

    .line 128
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->setDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->updateDatabaseRelatedMilkDao(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 133
    :cond_0
    return-void
.end method
