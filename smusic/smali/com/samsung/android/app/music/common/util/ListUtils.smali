.class public final Lcom/samsung/android/app/music/common/util/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static checkFinishActivityForNoItem(Landroid/app/Activity;Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "finish":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SPLIT_LIST_VIEW_ENABLED:Z

    if-eqz v1, :cond_2

    .line 391
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    const/4 v0, 0x1

    .line 398
    :cond_1
    :goto_0
    return v0

    .line 395
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static convertToMusicProviderId(Landroid/content/Context;J)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceId"    # J

    .prologue
    const/4 v4, 0x0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "source_id"

    aput-object v5, v2, v0

    const/4 v0, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v0

    move-object v0, p0

    move-object v5, v4

    .line 451
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 457
    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :cond_0
    :goto_0
    return-wide v0

    .line 457
    :catch_0
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 458
    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 457
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 450
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static getActionableCpAttrs()I
    .locals 2

    .prologue
    .line 501
    const v0, 0x10001

    .line 502
    .local v0, "cpAttrs":I
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 503
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    const/4 v0, 0x1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getCreatePlaylistMatrixCursor(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0a00f3

    .line 338
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    .line 339
    .local v2, "playlistQueryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 340
    .local v1, "createPlaylistCursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    .local v0, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0xf

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 349
    return-object v1
.end method

.method public static getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 59
    const-string v7, "music_player_pref"

    .line 60
    invoke-virtual {p0, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 61
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "playlist_menu_list"

    const/4 v8, 0x0

    .line 62
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "defaultPlaylistString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavoriteTrackCount(Landroid/content/Context;)I

    move-result v2

    .line 67
    .local v2, "favoriteTrackCount":I
    if-lez v2, :cond_1

    .line 68
    const/4 v7, 0x2

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->makeDefaultPlaylistListString([J)Ljava/lang/String;

    move-result-object v1

    .line 74
    .end local v2    # "favoriteTrackCount":I
    :cond_0
    :goto_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string/jumbo v7, "|"

    invoke-direct {v6, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v6, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 76
    .local v0, "count":I
    new-array v4, v0, [J

    .line 78
    .local v4, "playlistIds":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 79
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v4, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "playlistIds":[J
    .end local v6    # "strToken":Ljava/util/StringTokenizer;
    .restart local v2    # "favoriteTrackCount":I
    :cond_1
    const/4 v7, 0x1

    new-array v7, v7, [J

    const-wide/16 v8, -0xe

    aput-wide v8, v7, v10

    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->makeDefaultPlaylistListString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    .end local v2    # "favoriteTrackCount":I
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "playlistIds":[J
    .restart local v6    # "strToken":Ljava/util/StringTokenizer;
    :cond_2
    const-string v7, "ListUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDynamicDefaultPlaylistIdsFromPref() - defaultPlaylistString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v4

    .line 68
    :array_0
    .array-data 8
        -0xb
        -0xe
    .end array-data
.end method

.method public static getFavouritesMatrixCursor(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0a00bf

    .line 373
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    .line 374
    .local v2, "playlistQueryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v1, Landroid/database/MatrixCursor;

    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 375
    .local v1, "favouritesCursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v0, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0xb

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v3, :cond_0

    .line 380
    const-string v3, "dummy_for_pinyin_column"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 384
    return-object v1
.end method

.method public static getListFromPath(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 402
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 404
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replace(_data, _display_name, \'\') like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    .line 409
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 412
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v11, v4

    .line 426
    :goto_0
    return-object v11

    .line 416
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v11, v0, [J

    .line 417
    .local v11, "list":[J
    const/4 v7, 0x0

    .line 420
    .local v7, "length":I
    :cond_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 421
    .local v8, "id":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 422
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "length":I
    .local v10, "length":I
    aput-wide v8, v11, v7

    move v7, v10

    .line 424
    .end local v10    # "length":I
    .restart local v7    # "length":I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public static getListItemTextResId(J)I
    .locals 4
    .param p0, "listItemId"    # J

    .prologue
    .line 168
    long-to-int v1, p0

    packed-switch v1, :pswitch_data_0

    .line 182
    const v0, 0x7f0a0219

    .line 185
    .local v0, "resId":I
    :goto_0
    const-string v1, "ListUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListItemTextResId() - listItemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listItem text resId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v0

    .line 170
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f0a00bf

    .line 171
    .restart local v0    # "resId":I
    goto :goto_0

    .line 173
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f0a010b

    .line 174
    .restart local v0    # "resId":I
    goto :goto_0

    .line 176
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x7f0a015d

    .line 177
    .restart local v0    # "resId":I
    goto :goto_0

    .line 179
    .end local v0    # "resId":I
    :pswitch_3
    const v0, 0x7f0a0158

    .line 180
    .restart local v0    # "resId":I
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getListPosition([JJ)I
    .locals 7
    .param p0, "list"    # [J
    .param p1, "audioId"    # J

    .prologue
    const/4 v2, -0x1

    .line 430
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 445
    :cond_0
    return v2

    .line 434
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 438
    const/4 v2, 0x0

    .line 439
    .local v2, "position":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 440
    .local v0, "id":J
    cmp-long v5, p1, v0

    if-eqz v5, :cond_0

    .line 443
    add-int/lit8 v2, v2, 0x1

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getListTypeDebugText(I)Ljava/lang/String;
    .locals 1
    .param p0, "listType"    # I

    .prologue
    .line 193
    sparse-switch p0, :sswitch_data_0

    .line 225
    const-string v0, "INVALID"

    .line 227
    .local v0, "debugString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 195
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_0
    const-string v0, "ALBUM"

    .line 196
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_1
    const-string v0, "ARTIST"

    .line 199
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_2
    const-string v0, "PLAYLIST"

    .line 202
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_3
    const-string v0, "GENRE"

    .line 205
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_4
    const-string v0, "FOLDER"

    .line 208
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_5
    const-string v0, "COMPOSER"

    .line 211
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_6
    const-string v0, "YEAR"

    .line 214
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_7
    const-string v0, "BIGPOND"

    .line 217
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_8
    const-string v0, "DLNA_DMS"

    .line 220
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 222
    .end local v0    # "debugString":Ljava/lang/String;
    :sswitch_9
    const-string v0, "HEART"

    .line 223
    .restart local v0    # "debugString":Ljava/lang/String;
    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_2
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_4
        0x10008 -> :sswitch_5
        0x10009 -> :sswitch_6
        0x1000b -> :sswitch_8
        0x1000c -> :sswitch_7
        0x10030 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getListTypeTextResId(I)I
    .locals 4
    .param p0, "listType"    # I

    .prologue
    .line 126
    sparse-switch p0, :sswitch_data_0

    .line 158
    const v0, 0x7f0a01d1

    .line 161
    .local v0, "resId":I
    :goto_0
    const-string v1, "ListUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListTypeTextResId() - listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listType text resId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v0

    .line 128
    .end local v0    # "resId":I
    :sswitch_0
    const v0, 0x7f0a0073

    .line 129
    .restart local v0    # "resId":I
    goto :goto_0

    .line 131
    .end local v0    # "resId":I
    :sswitch_1
    const v0, 0x7f0a007d

    .line 132
    .restart local v0    # "resId":I
    goto :goto_0

    .line 134
    .end local v0    # "resId":I
    :sswitch_2
    const v0, 0x7f0a0153

    .line 135
    .restart local v0    # "resId":I
    goto :goto_0

    .line 137
    .end local v0    # "resId":I
    :sswitch_3
    const v0, 0x7f0a00c7

    .line 138
    .restart local v0    # "resId":I
    goto :goto_0

    .line 140
    .end local v0    # "resId":I
    :sswitch_4
    const v0, 0x7f0a00c4

    .line 141
    .restart local v0    # "resId":I
    goto :goto_0

    .line 143
    .end local v0    # "resId":I
    :sswitch_5
    const v0, 0x7f0a0090

    .line 144
    .restart local v0    # "resId":I
    goto :goto_0

    .line 146
    .end local v0    # "resId":I
    :sswitch_6
    const v0, 0x7f0a022d

    .line 147
    .restart local v0    # "resId":I
    goto :goto_0

    .line 149
    .end local v0    # "resId":I
    :sswitch_7
    const v0, 0x7f0a047f

    .line 150
    .restart local v0    # "resId":I
    goto :goto_0

    .line 152
    .end local v0    # "resId":I
    :sswitch_8
    const v0, 0x7f0a0124

    .line 153
    .restart local v0    # "resId":I
    goto :goto_0

    .line 155
    .end local v0    # "resId":I
    :sswitch_9
    const v0, 0x7f0a00c8

    .line 156
    .restart local v0    # "resId":I
    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_2
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_4
        0x10008 -> :sswitch_5
        0x10009 -> :sswitch_6
        0x1000b -> :sswitch_8
        0x1000c -> :sswitch_7
        0x10030 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getMatchedLibraryListType(I)I
    .locals 1
    .param p0, "trackListType"    # I

    .prologue
    .line 289
    const/4 v0, -0x1

    .line 290
    .local v0, "libraryListType":I
    sparse-switch p0, :sswitch_data_0

    .line 334
    :goto_0
    return v0

    .line 292
    :sswitch_0
    const v0, 0x110001

    .line 293
    goto :goto_0

    .line 295
    :sswitch_1
    const v0, 0x10004

    .line 296
    goto :goto_0

    .line 298
    :sswitch_2
    const v0, 0x10004

    .line 299
    goto :goto_0

    .line 301
    :sswitch_3
    const v0, 0x10002

    .line 302
    goto :goto_0

    .line 308
    :sswitch_4
    const v0, 0x10003

    .line 309
    goto :goto_0

    .line 311
    :sswitch_5
    const v0, 0x10007

    .line 312
    goto :goto_0

    .line 314
    :sswitch_6
    const v0, 0x10006

    .line 315
    goto :goto_0

    .line 317
    :sswitch_7
    const v0, 0x10008

    .line 318
    goto :goto_0

    .line 320
    :sswitch_8
    const v0, 0x1000b

    .line 321
    goto :goto_0

    .line 323
    :sswitch_9
    const/16 v0, 0x55

    .line 324
    goto :goto_0

    .line 326
    :sswitch_a
    const/16 v0, 0x54

    .line 327
    goto :goto_0

    .line 329
    :sswitch_b
    const/16 v0, 0x56

    .line 330
    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_a
        0x55 -> :sswitch_9
        0x56 -> :sswitch_b
        0x10027 -> :sswitch_4
        0x100002 -> :sswitch_3
        0x100003 -> :sswitch_4
        0x100004 -> :sswitch_1
        0x100006 -> :sswitch_6
        0x100007 -> :sswitch_5
        0x100008 -> :sswitch_7
        0x10000b -> :sswitch_8
        0x100050 -> :sswitch_2
        0x110001 -> :sswitch_0
        0x110027 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMatchedTrackListType(I)I
    .locals 1
    .param p0, "listType"    # I

    .prologue
    .line 250
    const/4 v0, -0x1

    .line 251
    .local v0, "trackListType":I
    sparse-switch p0, :sswitch_data_0

    .line 285
    :goto_0
    return v0

    .line 253
    :sswitch_0
    const v0, 0x100002

    .line 254
    goto :goto_0

    .line 256
    :sswitch_1
    const v0, 0x100003

    .line 257
    goto :goto_0

    .line 259
    :sswitch_2
    const v0, 0x100007

    .line 260
    goto :goto_0

    .line 262
    :sswitch_3
    const v0, 0x100006

    .line 263
    goto :goto_0

    .line 265
    :sswitch_4
    const v0, 0x100008

    .line 266
    goto :goto_0

    .line 268
    :sswitch_5
    const v0, 0x100004

    .line 269
    goto :goto_0

    .line 271
    :sswitch_6
    const v0, 0x10000b

    .line 272
    goto :goto_0

    .line 274
    :sswitch_7
    const/16 v0, 0x55

    .line 275
    goto :goto_0

    .line 277
    :sswitch_8
    const/16 v0, 0x54

    .line 278
    goto :goto_0

    .line 280
    :sswitch_9
    const/16 v0, 0x56

    .line 281
    goto :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_8
        0x55 -> :sswitch_7
        0x56 -> :sswitch_9
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_5
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_2
        0x10008 -> :sswitch_4
        0x1000b -> :sswitch_6
    .end sparse-switch
.end method

.method public static getMatchedTrackListType(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 239
    const v0, 0x10004

    if-ne p1, v0, :cond_1

    .line 240
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const v0, 0x100050

    .line 246
    :goto_0
    return v0

    .line 243
    :cond_0
    const v0, 0x100004

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getMatchedTrackListTypeOrThrow(I)I
    .locals 4
    .param p0, "listType"    # I

    .prologue
    .line 231
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(I)I

    move-result v0

    .line 232
    .local v0, "trackListType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no matched track listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    return v0
.end method

.method public static getNowPlayingListItemMatrixCursor(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0a0157

    .line 353
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    .line 354
    .local v3, "playlistQueryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v2, Landroid/database/MatrixCursor;

    iget-object v4, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 355
    .local v2, "nowPlayingListCursor":Landroid/database/MatrixCursor;
    iget-object v4, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    array-length v1, v4

    .line 359
    .local v1, "length":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getListItemCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v0, "addtoPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v4, :cond_0

    .line 365
    const v4, 0x7f0a00f3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 369
    .end local v0    # "addtoPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    return-object v2
.end method

.method public static getPlaylistFilterOption(Landroid/content/Context;J)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 462
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 463
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v5, "secFilter"

    const-string v8, "include"

    invoke-virtual {v0, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 464
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "sort_by"

    aput-object v0, v2, v9

    .line 465
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    move-object v0, p0

    move-object v5, v4

    .line 469
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    .line 472
    .local v7, "filterOption":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 473
    const/4 v7, 0x4

    .line 478
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    :cond_1
    :goto_1
    return v7

    .line 476
    .end local v7    # "filterOption":I
    :cond_2
    const/4 v7, 0x4

    .restart local v7    # "filterOption":I
    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 468
    .end local v7    # "filterOption":I
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    :catchall_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static getPlaylistOrderBy(I)Ljava/lang/String;
    .locals 3
    .param p0, "filterOption"    # I

    .prologue
    .line 483
    packed-switch p0, :pswitch_data_0

    .line 489
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid filterOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :pswitch_1
    const-string/jumbo v0, "play_order"

    .line 487
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " COLLATE LOCALIZED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isDefaultPlayList(J)Z
    .locals 2
    .param p0, "playListId"    # J

    .prologue
    .line 119
    const-wide/16 v0, -0xe

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xc

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xd

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xb

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs makeDefaultPlaylistListString([J)Ljava/lang/String;
    .locals 7
    .param p0, "playlistIds"    # [J

    .prologue
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 111
    .local v0, "playlistId":J
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "playlistId":J
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    const-string v3, "ListUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeDefaultPlaylistListString() result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs saveDynamicDefaultPlaylistIdsToPref(Landroid/content/Context;[J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistIds"    # [J

    .prologue
    .line 87
    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "playlist_menu_list"

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->makeDefaultPlaylistListString([J)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    return-void
.end method

.method public static saveFavoritePlaylistToPref(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v1

    array-length v0, v1

    .line 97
    .local v0, "len":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 98
    const-string v1, "ListUtils"

    const-string/jumbo v2, "saveFavoritePlaylistToPref() -  ADD ALL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveDynamicDefaultPlaylistIdsToPref(Landroid/content/Context;[J)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 102
    const-string v1, "ListUtils"

    const-string/jumbo v2, "saveFavoritePlaylistToPref() -  ADD FAVORITE_TRACKS, RECENTLY_ADDED"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveDynamicDefaultPlaylistIdsToPref(Landroid/content/Context;[J)V

    goto :goto_0

    .line 99
    nop

    :array_0
    .array-data 8
        -0xb
        -0xc
        -0xd
        -0xe
    .end array-data

    .line 103
    :array_1
    .array-data 8
        -0xb
        -0xe
    .end array-data
.end method
