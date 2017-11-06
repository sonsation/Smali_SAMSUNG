.class public final Lcom/samsung/android/app/music/provider/RestoreContentsUtil;
.super Ljava/lang/Object;
.source "RestoreContentsUtil.java"


# static fields
.field private static final ACTION_10009_FAVORITE_TAB:I = 0xf45c4

.field private static final ACTION_10009_QUEUE:I = 0xf45c5

.field private static final ACTION_20200_SORT_KEY:I = 0x1ed2a0

.field private static final BULK_UPDATE_URI:Landroid/net/Uri;

.field private static final MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "content://com.sec.android.app.music/"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://com.sec.android.app.music/sync/local/update"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->BULK_UPDATE_URI:Landroid/net/Uri;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static addRestoreList(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "fromVersion"    # I
    .param p2, "toVersion"    # I

    .prologue
    const/16 v3, 0x2719

    .line 37
    if-ne p1, v3, :cond_0

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "restore_action"

    const v2, 0xf45c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v1, "from_version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string/jumbo v1, "to_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v1, "extra"

    const-string v2, "post"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "restore_list"

    const-string/jumbo v2, "restore_action"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 48
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    if-gt p1, v3, :cond_1

    if-eqz p1, :cond_1

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "restore_action"

    const v2, 0xf45c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v1, "extra"

    const-string v2, "post"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "restore_list"

    const-string/jumbo v2, "restore_action"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 56
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    const/16 v1, 0x4ee8

    if-ge p1, v1, :cond_2

    const/16 v1, 0x4e6d

    if-lt p1, v1, :cond_2

    if-eqz p1, :cond_2

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "restore_action"

    const v2, 0x1ed2a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v1, "extra"

    const-string v2, "pre"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "restore_list"

    const-string/jumbo v2, "restore_action"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 62
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method public static postRestore(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 93
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "extra=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "post"

    aput-object v5, v4, v0

    move-object v0, p0

    move-object v5, v2

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 96
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 114
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 100
    :cond_3
    :try_start_2
    const-string/jumbo v0, "restore_action"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 102
    .local v7, "actionIndex":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 104
    .local v6, "action":I
    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postRestore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 105
    packed-switch v6, :pswitch_data_0

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postRestore invalid action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 93
    .end local v6    # "action":I
    .end local v7    # "actionIndex":I
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v2, :cond_7

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    throw v0

    .line 107
    .restart local v6    # "action":I
    .restart local v7    # "actionIndex":I
    :pswitch_0
    :try_start_5
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->restoreHeartTab(Landroid/content/Context;)V

    goto :goto_1

    .line 114
    .end local v6    # "action":I
    .end local v7    # "actionIndex":I
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 113
    .restart local v7    # "actionIndex":I
    :cond_5
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    if-eqz v8, :cond_1

    if-eqz v2, :cond_6

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "actionIndex":I
    :catch_3
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 105
    :pswitch_data_0
    .packed-switch 0xf45c4
        :pswitch_0
    .end packed-switch
.end method

.method public static preRestore(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 65
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "extra=?"

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "pre"

    aput-object v0, v4, v5

    move-object v0, p0

    move-object v5, v2

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 89
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 72
    :cond_3
    :try_start_2
    const-string/jumbo v0, "restore_action"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 74
    .local v7, "actionIndex":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 76
    .local v6, "action":I
    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preRestore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 77
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.music/"

    .line 80
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "update_sort_key"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 79
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 65
    .end local v6    # "action":I
    .end local v7    # "actionIndex":I
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v2, :cond_7

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    throw v0

    .line 86
    .restart local v7    # "actionIndex":I
    :cond_5
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "extra=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pre"

    aput-object v5, v3, v4

    .line 87
    invoke-static {p0, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 89
    if-eqz v8, :cond_1

    if-eqz v2, :cond_6

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "actionIndex":I
    :catch_3
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1ed2a0
        :pswitch_0
    .end packed-switch
.end method

.method private static restoreHeartTab(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 125
    const-string v0, "UPDATE OR IGNORE hearts SET category_id=(SELECT _id FROM audio_playlists WHERE source_playlist_id=category_id) WHERE category_id>0 AND category_type=65540"

    .line 128
    .local v0, "rawQuery":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    const-string v3, "exec_sql"

    .line 129
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 132
    const-string v0, "UPDATE OR IGNORE hearts SET category_id=(SELECT album_id FROM albums WHERE source_album_id=category_id) WHERE category_id>0 AND category_type=65538"

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    const-string v3, "exec_sql"

    .line 136
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 139
    const-string v0, "UPDATE OR IGNORE hearts SET category_id=(SELECT artist_id FROM artists WHERE source_artist_id=category_id) WHERE category_id>0 AND category_type=65539"

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->MUSIC_PROVIDER_METHOD_URI:Landroid/net/Uri;

    const-string v3, "exec_sql"

    .line 143
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 144
    return-void
.end method
