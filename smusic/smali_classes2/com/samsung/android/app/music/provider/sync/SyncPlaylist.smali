.class public final Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;
.super Ljava/lang/Object;
.source "SyncPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    }
.end annotation


# static fields
.field private static final BULK_INSERT_PLAYLIST_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

.field private static final SOURCE_PLAYLIST_URI:Landroid/net/Uri;

.field private static final SYNC_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static UPDATE_NONE:I

.field private static UPDATE_PLAYLIST:I

.field private static UPDATE_PLAYLIST_FAVORITE:I

.field private static UPDATE_PLAYLIST_MEMBER:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "secFilter"

    const-string v2, "include"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SOURCE_PLAYLIST_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.sec.android.app.music/audio/playlists/sync_all_bulk_insert"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->BULK_INSERT_PLAYLIST_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.sec.android.app.music/audio/playlists/sync_playlist_queue"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SYNC_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.sec.android.app.music/"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    .line 368
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v3

    const-string v1, "play_order"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 406
    sput v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_NONE:I

    .line 408
    sput v4, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST:I

    .line 410
    sput v5, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_FAVORITE:I

    .line 412
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_MEMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Landroid/content/ContentValues;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->updateAudioMediaInternal(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Landroid/content/ContentValues;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->updatePlaylistValueInternal(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->deletePlaylistInternal(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static addToSyncPlaylistInfoInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "playlistId"    # J
    .param p3, "syncDownAction"    # Ljava/lang/String;

    .prologue
    .line 770
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "playlist_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const-string/jumbo v1, "sync_down_action"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string/jumbo v1, "request_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 774
    const-string/jumbo v1, "sync_playlist_list"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 775
    return-void
.end method

.method private static addToSyncPlaylistInfoInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "syncDownAction"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 756
    .local v0, "currentTimeMillis":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO sync_playlist_list (playlist_id,request_date,sync_down_action)  SELECT DISTINCT playlist_id, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "audio_playlists_map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "rawQuery":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 762
    invoke-virtual {p0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bulkInsert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I[Landroid/content/ContentValues;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "match"    # I
    .param p4, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 112
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isNoSyncUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "2_playlist_members"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->addToSyncPlaylistInfoInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x450
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static clearMusicProviderPlaylistGarbageData(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    const-string v0, "DELETE FROM audio_playlists_map WHERE audio_id=-1"

    .line 277
    .local v0, "rawQuery":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    const-string v3, "exec_sql"

    const/4 v4, 0x0

    .line 278
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 279
    return-void
.end method

.method public static delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "match"    # I
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isNoSyncUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 163
    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 165
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 174
    :pswitch_2
    const-string v0, "2_playlist_members"

    invoke-static {p1, p4, p5, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->addToSyncPlaylistInfoInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x44f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static deletePlaylistInternal(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 729
    const/4 v9, 0x0

    .line 730
    .local v9, "count":I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "group_concat(source_playlist_id, \',\')"

    aput-object v1, v2, v0

    .line 732
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "audio_playlists"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 733
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 732
    .local v8, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 735
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 748
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move v10, v9

    .line 750
    .end local v9    # "count":I
    .local v10, "count":I
    :goto_1
    return v10

    .line 748
    .end local v10    # "count":I
    .restart local v9    # "count":I
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 738
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 739
    .local v11, "sourceIds":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    .line 748
    :cond_4
    if-eqz v8, :cond_5

    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_2
    move v10, v9

    .end local v9    # "count":I
    .restart local v10    # "count":I
    goto :goto_1

    .end local v10    # "count":I
    .restart local v9    # "count":I
    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 742
    :cond_7
    :try_start_4
    sget-object v13, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 743
    .local v13, "sourceUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "sourceSelection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v13, v12, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 745
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePlaylistInternal : sourceSelection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 748
    if-eqz v8, :cond_8

    if-eqz v1, :cond_9

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_8
    :goto_3
    move v10, v9

    .line 750
    .end local v9    # "count":I
    .restart local v10    # "count":I
    goto :goto_1

    .line 748
    .end local v10    # "count":I
    .restart local v9    # "count":I
    :catch_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 732
    .end local v11    # "sourceIds":Ljava/lang/String;
    .end local v12    # "sourceSelection":Ljava/lang/String;
    .end local v13    # "sourceUri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 748
    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_4
    if-eqz v8, :cond_a

    if-eqz v1, :cond_b

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_5
    throw v0

    :catch_4
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private static getAndUpdateFavoriteSourceId(Landroid/content/Context;J)J
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J

    .prologue
    .line 607
    const-wide/16 v10, -0x1

    .line 609
    .local v10, "sourceId":J
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SOURCE_PLAYLIST_URI:Landroid/net/Uri;

    .line 610
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v2

    .line 611
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "name=?"

    .line 612
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "FavoriteList#328795!432@1341"

    aput-object v7, v6, v2

    .line 613
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 614
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 613
    .local v8, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 615
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 619
    :cond_0
    const-wide/16 v14, -0x1

    cmp-long v2, v10, v14

    if-nez v2, :cond_4

    .line 620
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 621
    .local v12, "value":Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v13, "FavoriteList#328795!432@1341"

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SOURCE_PLAYLIST_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 625
    .local v9, "newUri":Landroid/net/Uri;
    if-nez v9, :cond_3

    .line 626
    const/4 v2, 0x1

    sget-object v13, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string v14, "getAndUpdateFavoriteSourceId : insert failed."

    invoke-static {v2, v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    const-wide/16 v14, -0x1

    .line 639
    if-eqz v8, :cond_1

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    .end local v9    # "newUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-wide v14

    .line 639
    .restart local v9    # "newUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 629
    :cond_3
    :try_start_2
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 632
    .end local v9    # "newUri":Landroid/net/Uri;
    .end local v12    # "value":Landroid/content/ContentValues;
    :cond_4
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 633
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 634
    .restart local v12    # "value":Landroid/content/ContentValues;
    const-string/jumbo v2, "source_playlist_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x1

    if-ge v2, v13, :cond_5

    .line 637
    const/4 v2, 0x1

    sget-object v13, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string v14, "getAndUpdateFavoriteSourceId is failed"

    invoke-static {v2, v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 639
    :cond_5
    if-eqz v8, :cond_6

    if-eqz v7, :cond_7

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 641
    :cond_6
    :goto_1
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAndUpdateFavoriteSourceId : sourcePlaylistId "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v14, v10

    .line 642
    goto :goto_0

    .line 639
    :catch_1
    move-exception v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 613
    .end local v12    # "value":Landroid/content/ContentValues;
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 639
    :catchall_0
    move-exception v7

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    :goto_2
    if-eqz v8, :cond_8

    if-eqz v7, :cond_9

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_3
    throw v2

    :catch_3
    move-exception v13

    invoke-virtual {v7, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method private static getUpdateItemsInternal(Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;Z)I
    .locals 6
    .param p0, "mediaInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .param p1, "musicInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .param p2, "fullSync"    # Z

    .prologue
    .line 416
    sget v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_NONE:I

    .line 419
    .local v0, "updateItem":I
    const-string v1, "now playing list 0123456789"

    iget-object v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    sget v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_NONE:I

    .line 440
    :goto_0
    return v1

    .line 423
    :cond_0
    const-string v1, "SYNCED"

    iget-object v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSyncedHashCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    sget v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_MEMBER:I

    .line 427
    :cond_1
    sget v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_NONE:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    .line 431
    :cond_2
    const-string v1, "FavoriteList#328795!432@1341"

    iget-object v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    sget v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_FAVORITE:I

    or-int/2addr v0, v1

    .line 436
    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mDateAdded:J

    iget-wide v4, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mDateAdded:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    if-eq v1, v2, :cond_5

    .line 437
    :cond_4
    sget v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST:I

    or-int/2addr v0, v1

    :cond_5
    move v1, v0

    .line 440
    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "match"    # I
    .param p4, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 98
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isNoSyncUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "2_playlist_members"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->addToSyncPlaylistInfoInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x450
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static insertPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "entryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertPlaylist : entryList "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "inserted":I
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 381
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 382
    .local v3, "localSyncPlaylistUri":Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    .line 384
    .local v0, "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v5, "playlistValue":Landroid/content/ContentValues;
    const-string/jumbo v7, "source_playlist_id"

    iget-wide v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSourceId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v7, "name"

    iget-object v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v7, "_data"

    iget-object v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mData:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v7, "date_added"

    iget-wide v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mDateAdded:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string/jumbo v7, "synced_hashcode"

    const-string v8, "NOT_SYNCED"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {p0, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 393
    .local v4, "playlistUri":Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 394
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertPlaylist : failed to insert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    .line 399
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->BULK_INSERT_PLAYLIST_URI:Landroid/net/Uri;

    iget-wide v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    .line 400
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 399
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 401
    .local v2, "localSyncPlaylistMemberUri":Landroid/net/Uri;
    invoke-static {p0, v2, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->insertPlaylistMembersInternal(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;)I

    move-result v7

    add-int/2addr v1, v7

    .line 402
    goto :goto_0

    .line 403
    .end local v0    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v2    # "localSyncPlaylistMemberUri":Landroid/net/Uri;
    .end local v4    # "playlistUri":Landroid/net/Uri;
    .end local v5    # "playlistValue":Landroid/content/ContentValues;
    :cond_1
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertPlaylist : entryList member inserted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private static insertPlaylistMembersInternal(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localSyncMemberUri"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    .prologue
    const/4 v3, 0x0

    .line 502
    const/4 v8, 0x0

    .line 504
    .local v8, "inserted":I
    const-string v0, "external"

    iget-wide v4, p2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSourceId:J

    .line 505
    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 506
    .local v1, "sourceMembersUri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->MEMBERS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 507
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 508
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 527
    if-eqz v7, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    :cond_1
    :goto_0
    return v0

    .line 527
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 511
    :cond_3
    :try_start_2
    const-string v0, "audio_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 512
    .local v6, "audioSourceIdIndex":I
    const-string v0, "play_order"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 514
    .local v9, "playOrderIndex":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v11, "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 518
    .local v10, "value":Landroid/content/ContentValues;
    const-string v0, "audio_source_id"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    const-string v0, "play_order"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 506
    .end local v6    # "audioSourceIdIndex":I
    .end local v9    # "playOrderIndex":I
    .end local v10    # "value":Landroid/content/ContentValues;
    .end local v11    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_2
    if-eqz v7, :cond_4

    if-eqz v3, :cond_8

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    throw v0

    .line 524
    .restart local v6    # "audioSourceIdIndex":I
    .restart local v9    # "playOrderIndex":I
    .restart local v11    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertPlaylistMembersInternal : source count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 525
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    add-int/2addr v8, v0

    .line 527
    if-eqz v7, :cond_6

    if-eqz v3, :cond_7

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_4
    move v0, v8

    .line 529
    goto/16 :goto_0

    .line 527
    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v6    # "audioSourceIdIndex":I
    .end local v9    # "playOrderIndex":I
    .end local v11    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_3
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private static isMediaScanning(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 260
    .line 261
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 270
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move v0, v8

    .line 271
    :cond_2
    :goto_1
    return v0

    .line 270
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 266
    :cond_4
    :try_start_2
    const-string/jumbo v0, "volume"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "volume":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v0, "external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    const/4 v0, 0x1

    .line 270
    if-eqz v6, :cond_2

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    if-eqz v2, :cond_8

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_2
    move v0, v8

    .line 271
    goto :goto_1

    .line 270
    :catch_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 260
    .end local v7    # "volume":Ljava/lang/String;
    :catch_3
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_9

    if-eqz v2, :cond_a

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_9
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static isNoSyncUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 181
    const-string/jumbo v1, "syncFlow"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static makePlaylistList(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "musicProviderCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    .local p2, "addEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    .local p3, "updateEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "date_added"

    aput-object v3, v4, v2

    .line 329
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "name<>\'now playing list 0123456789\'"

    .line 332
    .local v5, "selection":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SOURCE_PLAYLIST_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 333
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 332
    .local v19, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 334
    if-nez v19, :cond_2

    .line 364
    if-eqz v19, :cond_0

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 338
    :cond_2
    :try_start_1
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 339
    .local v23, "sourceIdIndex":I
    const-string v2, "name"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 340
    .local v24, "sourceNameIndex":I
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 341
    .local v21, "sourceDataIndex":I
    const-string v2, "date_added"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 343
    .local v22, "sourceDateAddedIndex":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 345
    .local v10, "sourceId":J
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 346
    .local v12, "sourceName":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 347
    .local v13, "sourceData":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 349
    .local v14, "sourceDateAdded":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    .line 350
    .local v20, "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    new-instance v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    const-wide/16 v8, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const-string v18, "NOT_SYNCED"

    invoke-direct/range {v7 .. v18}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;-><init>(JJLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 354
    .local v7, "newEntry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    if-nez v20, :cond_4

    .line 355
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_2
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 332
    .end local v7    # "newEntry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v10    # "sourceId":J
    .end local v12    # "sourceName":Ljava/lang/String;
    .end local v13    # "sourceData":Ljava/lang/String;
    .end local v14    # "sourceDateAdded":J
    .end local v20    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v21    # "sourceDataIndex":I
    .end local v22    # "sourceDateAddedIndex":I
    .end local v23    # "sourceIdIndex":I
    .end local v24    # "sourceNameIndex":I
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :catchall_0
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_3
    if-eqz v19, :cond_3

    if-eqz v3, :cond_7

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    throw v2

    .line 357
    .restart local v7    # "newEntry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .restart local v10    # "sourceId":J
    .restart local v12    # "sourceName":Ljava/lang/String;
    .restart local v13    # "sourceData":Ljava/lang/String;
    .restart local v14    # "sourceDateAdded":J
    .restart local v20    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .restart local v21    # "sourceDataIndex":I
    .restart local v22    # "sourceDateAddedIndex":I
    .restart local v23    # "sourceIdIndex":I
    .restart local v24    # "sourceNameIndex":I
    :cond_4
    :try_start_4
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    iput-wide v8, v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    .line 358
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 364
    .end local v7    # "newEntry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v10    # "sourceId":J
    .end local v12    # "sourceName":Ljava/lang/String;
    .end local v13    # "sourceData":Ljava/lang/String;
    .end local v14    # "sourceDateAdded":J
    .end local v20    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v21    # "sourceDataIndex":I
    .end local v22    # "sourceDateAddedIndex":I
    .end local v23    # "sourceIdIndex":I
    .end local v24    # "sourceNameIndex":I
    :catchall_1
    move-exception v2

    goto :goto_3

    .restart local v21    # "sourceDataIndex":I
    .restart local v22    # "sourceDateAddedIndex":I
    .restart local v23    # "sourceIdIndex":I
    .restart local v24    # "sourceNameIndex":I
    :cond_5
    if-eqz v19, :cond_0

    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v21    # "sourceDataIndex":I
    .end local v22    # "sourceDateAddedIndex":I
    .end local v23    # "sourceIdIndex":I
    .end local v24    # "sourceNameIndex":I
    :catch_3
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method private static prePlaylistScan(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "playlistCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    .line 286
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v6, "source_playlist_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "_data"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date_added"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "name"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v6, "synced_hashcode"

    aput-object v6, v4, v2

    .line 294
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "name<>\'now playing list 0123456789\'"

    .line 297
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 298
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 297
    .local v19, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 299
    if-nez v19, :cond_2

    .line 316
    if-eqz v19, :cond_0

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v2

    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    :cond_2
    :try_start_1
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 304
    .local v23, "idIndex":I
    const-string/jumbo v2, "source_playlist_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 305
    .local v25, "sourceId":I
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 306
    .local v20, "dataIndex":I
    const-string v2, "date_added"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 307
    .local v21, "dateAddedIndex":I
    const-string v2, "name"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 308
    .local v24, "nameIndex":I
    const-string/jumbo v2, "synced_hashcode"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 310
    .local v22, "hashCodeIndex":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    new-instance v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 312
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, -0x1

    const/16 v17, -0x1

    .line 313
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v7 .. v18}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;-><init>(JJLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 314
    .local v7, "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 297
    .end local v7    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v20    # "dataIndex":I
    .end local v21    # "dateAddedIndex":I
    .end local v22    # "hashCodeIndex":I
    .end local v23    # "idIndex":I
    .end local v24    # "nameIndex":I
    .end local v25    # "sourceId":I
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :catchall_0
    move-exception v6

    move-object/from16 v26, v6

    move-object v6, v2

    move-object/from16 v2, v26

    :goto_2
    if-eqz v19, :cond_3

    if-eqz v6, :cond_6

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    throw v2

    .restart local v20    # "dataIndex":I
    .restart local v21    # "dateAddedIndex":I
    .restart local v22    # "hashCodeIndex":I
    .restart local v23    # "idIndex":I
    .restart local v24    # "nameIndex":I
    .restart local v25    # "sourceId":I
    :cond_4
    if-eqz v19, :cond_0

    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v20    # "dataIndex":I
    .end local v21    # "dateAddedIndex":I
    .end local v22    # "hashCodeIndex":I
    .end local v23    # "idIndex":I
    .end local v24    # "nameIndex":I
    .end local v25    # "sourceId":I
    :catch_3
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method static syncDown(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncDown"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "playlist_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "playlist_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "sync_down_action"

    aput-object v3, v4, v2

    .line 234
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v7, "sync_down_action"

    .line 235
    .local v7, "orderBy":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SYNC_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    .line 236
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 235
    .local v10, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 237
    if-nez v10, :cond_2

    .line 256
    if-eqz v10, :cond_0

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 241
    :cond_2
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 242
    .local v11, "idIndex":I
    const-string v2, "playlist_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 243
    .local v14, "playlistIdIndex":I
    const-string v2, "playlist_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 244
    .local v15, "playlistNameIndex":I
    const-string/jumbo v2, "sync_down_action"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 246
    .local v9, "actionIndex":I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "action":Ljava/lang/String;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 250
    .local v12, "playlistId":J
    const-string v2, "2_playlist_members"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->syncDownPlaylistMembersInternal(Landroid/content/Context;J)V

    .line 253
    :cond_3
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->SYNC_PLAYLIST_QUEUE_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 253
    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 235
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "actionIndex":I
    .end local v11    # "idIndex":I
    .end local v12    # "playlistId":J
    .end local v14    # "playlistIdIndex":I
    .end local v15    # "playlistNameIndex":I
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :catchall_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_2
    if-eqz v10, :cond_4

    if-eqz v3, :cond_7

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    throw v2

    .restart local v9    # "actionIndex":I
    .restart local v11    # "idIndex":I
    .restart local v14    # "playlistIdIndex":I
    .restart local v15    # "playlistNameIndex":I
    :cond_5
    if-eqz v10, :cond_0

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "actionIndex":I
    .end local v11    # "idIndex":I
    .end local v14    # "playlistIdIndex":I
    .end local v15    # "playlistNameIndex":I
    :catch_3
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method private static syncDownPlaylistMembersInternal(Landroid/content/Context;J)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J

    .prologue
    .line 533
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncDownPlaylistMembersInternal"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "source_playlist_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    .line 543
    .local v4, "projection":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "selection":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 545
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 544
    .local v12, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 547
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 548
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "syncDownPlaylistMembersInternal : not exist in Music Provider "

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 554
    if-eqz v12, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 604
    :cond_1
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 551
    :cond_3
    :try_start_2
    const-string/jumbo v2, "source_playlist_id"

    .line 552
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 553
    .local v18, "sourcePlaylistId":Ljava/lang/Long;
    const-string v2, "name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v16

    .line 554
    .local v16, "playlistName":Ljava/lang/String;
    if-eqz v12, :cond_4

    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 557
    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syncDownPlaylistMembersInternal : sourcePlaylistId "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "FavoriteList#328795!432@1341"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 559
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 560
    invoke-static/range {p0 .. p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->getAndUpdateFavoriteSourceId(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 563
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-gez v2, :cond_9

    .line 564
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syncDownPlaylistMembersInternal : sourcePlaylistId is invalid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 544
    .end local v16    # "playlistName":Ljava/lang/String;
    .end local v18    # "sourcePlaylistId":Ljava/lang/Long;
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 554
    :catchall_0
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    :goto_2
    if-eqz v12, :cond_7

    if-eqz v3, :cond_8

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    throw v2

    :catch_3
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 570
    .restart local v16    # "playlistName":Ljava/lang/String;
    .restart local v18    # "sourcePlaylistId":Ljava/lang/Long;
    :cond_9
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "source_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "play_order"

    aput-object v3, v4, v2

    .line 574
    .restart local v4    # "projection":[Ljava/lang/String;
    const-string v2, "local"

    .line 575
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "play_order"

    move-object/from16 v6, p0

    move-object v8, v4

    .line 574
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v3, 0x0

    .line 577
    if-nez v12, :cond_b

    .line 603
    if-eqz v12, :cond_1

    if-eqz v3, :cond_a

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 581
    :cond_b
    :try_start_7
    const-string/jumbo v2, "source_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 582
    .local v17, "sourceIdIndex":I
    const-string v2, "play_order"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 584
    .local v15, "playOrderIndex":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v21, "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 586
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v20, "values":Landroid/content/ContentValues;
    const-string v2, "audio_id"

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 588
    const-string v2, "playlist_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 589
    const-string v2, "play_order"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 574
    .end local v15    # "playOrderIndex":I
    .end local v17    # "sourceIdIndex":I
    .end local v20    # "values":Landroid/content/ContentValues;
    .end local v21    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_5
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 603
    :catchall_1
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    :goto_5
    if-eqz v12, :cond_c

    if-eqz v3, :cond_10

    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_c
    :goto_6
    throw v2

    .line 593
    .restart local v15    # "playOrderIndex":I
    .restart local v17    # "sourceIdIndex":I
    .restart local v21    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_d
    :try_start_a
    const-string v2, "external"

    .line 594
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v19

    .line 595
    .local v19, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 596
    .local v13, "deleted":I
    const/4 v14, 0x0

    .line 597
    .local v14, "inserted":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 599
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v14

    .line 601
    :cond_e
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "syncDownPlaylistMembersInternal : playlistId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", inserted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 603
    if-eqz v12, :cond_1

    if-eqz v3, :cond_f

    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v13    # "deleted":I
    .end local v14    # "inserted":I
    .end local v15    # "playOrderIndex":I
    .end local v17    # "sourceIdIndex":I
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v21    # "valuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_7
    move-exception v6

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception v2

    goto/16 :goto_5

    .line 554
    .end local v16    # "playlistName":Ljava/lang/String;
    .end local v18    # "sourcePlaylistId":Ljava/lang/Long;
    :catchall_3
    move-exception v2

    goto/16 :goto_2
.end method

.method static syncUp(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fullSync"    # Z

    .prologue
    .line 186
    sget-object v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "syncUp started"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isMediaScanning(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    sget-object v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "syncUp : skip because MediaScanning is running."

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 199
    .local v4, "time1":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v2, "musicProviderCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    invoke-static {p0, v2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->prePlaylistScan(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "addEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v3, "updateEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    invoke-static {p0, v2, v0, v3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->makePlaylistList(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, "addSize":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 209
    .local v8, "updateSize":I
    if-lez v1, :cond_1

    .line 210
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->insertPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 213
    :cond_1
    if-lez v8, :cond_2

    .line 214
    invoke-static {p0, v2, v3, p1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->updatePlaylist(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    .line 218
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 219
    .local v6, "time2":J
    sget-object v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syncUp elapsed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v6, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "syncUp ended"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "match"    # I
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isNoSyncUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 130
    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 133
    :pswitch_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v6}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 143
    :pswitch_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$2;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v6}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "2_playlist_members"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->addToSyncPlaylistInfoInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static updateAudioMediaInternal(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 647
    const/4 v14, 0x0

    .line 649
    .local v14, "count":I
    const-string v5, "most_played"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "recently_played"

    .line 650
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "recently_added_remove_flag"

    .line 651
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 652
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateAudioMediaInternal : update is not related to Playlist\'s default playlist"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v14

    .line 695
    .end local v14    # "count":I
    .local v15, "count":I
    :goto_0
    return v15

    .line 657
    .end local v15    # "count":I
    .restart local v14    # "count":I
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string v5, " AND "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "group_concat(source_id, \',\')"

    aput-object v6, v7, v5

    .line 662
    .local v7, "projection":[Ljava/lang/String;
    const-string v6, "audio_meta"

    .line 663
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 662
    .local v13, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 665
    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    .line 694
    :cond_1
    if-eqz v13, :cond_2

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v15, v14

    .end local v14    # "count":I
    .restart local v15    # "count":I
    goto :goto_0

    .end local v15    # "count":I
    .restart local v14    # "count":I
    :catch_0
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 668
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 669
    .local v21, "sourceIds":Ljava/lang/String;
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-nez v5, :cond_8

    .line 694
    :cond_5
    if-eqz v13, :cond_6

    if-eqz v6, :cond_7

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_2
    move v15, v14

    .end local v14    # "count":I
    .restart local v15    # "count":I
    goto :goto_0

    .end local v15    # "count":I
    .restart local v14    # "count":I
    :catch_1
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 673
    :cond_8
    :try_start_4
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .local v17, "newValue":Landroid/content/ContentValues;
    const-string v5, "most_played"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 675
    .local v16, "mostPlayed":Ljava/lang/Integer;
    if-eqz v16, :cond_9

    .line 676
    const-string v5, "most_played"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    :cond_9
    const-string/jumbo v5, "recently_played"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 679
    .local v19, "recentlyPlayed":Ljava/lang/Integer;
    if-eqz v19, :cond_a

    .line 680
    const-string/jumbo v5, "recently_played"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    :cond_a
    const-string/jumbo v5, "recently_added_remove_flag"

    .line 683
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 684
    .local v18, "recentlyAddedRemove":Ljava/lang/Integer;
    if-eqz v18, :cond_b

    .line 685
    const-string/jumbo v5, "recently_added_remove_flag"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    :cond_b
    sget-object v23, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 689
    .local v23, "sourceUri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 691
    .local v22, "sourceSelection":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 692
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAudioMediaInternal : sourceSelection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", updated : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 694
    if-eqz v13, :cond_c

    if-eqz v6, :cond_d

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_c
    :goto_3
    move v15, v14

    .line 695
    .end local v14    # "count":I
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 694
    .end local v15    # "count":I
    .restart local v14    # "count":I
    :catch_2
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 662
    .end local v16    # "mostPlayed":Ljava/lang/Integer;
    .end local v17    # "newValue":Landroid/content/ContentValues;
    .end local v18    # "recentlyAddedRemove":Ljava/lang/Integer;
    .end local v19    # "recentlyPlayed":Ljava/lang/Integer;
    .end local v21    # "sourceIds":Ljava/lang/String;
    .end local v22    # "sourceSelection":Ljava/lang/String;
    .end local v23    # "sourceUri":Landroid/net/Uri;
    :catch_3
    move-exception v5

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 694
    :catchall_0
    move-exception v6

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    :goto_4
    if-eqz v13, :cond_e

    if-eqz v6, :cond_f

    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_e
    :goto_5
    throw v5

    :catch_4
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v5

    goto :goto_4
.end method

.method private static updatePlaylist(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "fullSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "musicProviderCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    .local p2, "entryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;>;"
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePlaylist : entryList "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "inserted":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    .line 450
    .local v0, "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePlaylist : entry.name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v7, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mData:Ljava/lang/String;

    .line 454
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;

    invoke-static {v0, v7, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->getUpdateItemsInternal(Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;Z)I

    move-result v4

    .line 456
    .local v4, "updateItem":I
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePlaylist : updateItem ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], entry : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_NONE:I

    if-eq v4, v7, :cond_0

    .line 462
    sget v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST:I

    and-int/2addr v7, v4

    sget v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST:I

    if-ne v7, v9, :cond_1

    .line 463
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v6, "value":Landroid/content/ContentValues;
    const-string v7, "name"

    iget-object v9, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v7, "date_added"

    iget-wide v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mDateAdded:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 467
    .local v5, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {p0, v5, v6, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_1
    sget v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_FAVORITE:I

    and-int/2addr v7, v4

    sget v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_FAVORITE:I

    if-ne v7, v9, :cond_2

    .line 473
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .restart local v6    # "value":Landroid/content/ContentValues;
    const-string/jumbo v7, "source_playlist_id"

    iget-wide v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSourceId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 476
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {p0, v5, v6, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_2
    sget v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_MEMBER:I

    and-int/2addr v7, v4

    sget v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->UPDATE_PLAYLIST_MEMBER:I

    if-ne v7, v9, :cond_0

    .line 481
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->BULK_INSERT_PLAYLIST_URI:Landroid/net/Uri;

    iget-wide v10, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    .line 482
    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 481
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 484
    .local v2, "localSyncPlaylistMemberUri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getDeleteBeforeInsertUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 486
    invoke-static {p0, v2, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->insertPlaylistMembersInternal(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;)I

    move-result v7

    add-int/2addr v1, v7

    goto/16 :goto_0

    .line 489
    .end local v0    # "entry":Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
    .end local v2    # "localSyncPlaylistMemberUri":Landroid/net/Uri;
    .end local v4    # "updateItem":I
    :cond_3
    sget-object v7, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePlaylist : entryList inserted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz v1, :cond_4

    .line 494
    const-string v7, "content://com.sec.android.app.music/audio/media/raw_sql/"

    .line 495
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 496
    .local v3, "notifyUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 498
    .end local v3    # "notifyUri":Landroid/net/Uri;
    :cond_4
    return-void
.end method

.method private static updatePlaylistValueInternal(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 701
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "source_playlist_id"

    aput-object v2, v3, v1

    .line 702
    .local v3, "projection":[Ljava/lang/String;
    const-string v2, "audio_playlists"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 703
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 702
    .local v9, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 705
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 724
    :cond_0
    if-eqz v9, :cond_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 725
    :cond_1
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 708
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 709
    .local v13, "sourceId":Ljava/lang/String;
    sget-object v14, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 710
    .local v14, "sourceUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 712
    .local v15, "where":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v12, "newValues":Landroid/content/ContentValues;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 714
    .local v11, "name":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 715
    const-string v1, "name"

    invoke-virtual {v12, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_4
    const-string v1, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 718
    .local v10, "data":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 719
    const-string v1, "_data"

    invoke-virtual {v12, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_5
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 722
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v15, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 724
    :cond_6
    if-eqz v9, :cond_1

    if-eqz v2, :cond_7

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 702
    .end local v10    # "data":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "newValues":Landroid/content/ContentValues;
    .end local v13    # "sourceId":Ljava/lang/String;
    .end local v14    # "sourceUri":Landroid/net/Uri;
    .end local v15    # "where":Ljava/lang/String;
    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 724
    :catchall_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_1
    if-eqz v9, :cond_8

    if-eqz v2, :cond_9

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_2
    throw v1

    :catch_3
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method
