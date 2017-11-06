.class Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;
.super Ljava/lang/Object;
.source "SyncHeartContentsImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$CategoryTypeIndex;,
        Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;,
        Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartSyncAction;
    }
.end annotation


# static fields
.field private static final CATEGORY_TYPE_COUNT:I = 0xa

.field private static final CP_ATTRS:Ljava/lang/String; = "cp_attrs, "

.field private static final CP_ATTRS_LOCAL:Ljava/lang/String; = "65537 AS cp_attrs,"

.field private static final CP_ATTRS_WHERE:Ljava/lang/String; = " AND (cp_attrs & 1)"

.field private static final DEBUG:Z = false

.field private static final HEART_RAW_QUERIES:[Ljava/lang/String;

.field private static final SQLITE_MAX_COMPOUND_SELECT:I = 0x1f4

.field private static final SYNC_QUERY_ORDER:Ljava/lang/String; = "category_type, category_id"

.field private static final TAG:Ljava/lang/String;

.field private static final UNION:Ljava/lang/String; = " UNION "


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlaylistOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->TAG:Ljava/lang/String;

    .line 604
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SELECT 65538 AS category_type, album AS favorite_name, CAST(_id AS TEXT) AS category_id, _id AS album_id, 65537 AS cp_attrs,numsongs AS data1, \'\'  AS data2, NULL AS dummy FROM music_album_info WHERE _id IN("

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SELECT 65539 AS category_type, artist AS favorite_name, CAST(_id AS TEXT) AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, number_of_albums AS data2, NULL AS dummy FROM music_artist_info WHERE _id IN("

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SELECT 65542 AS category_type, genre_name AS favorite_name, genre_name AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, \'\' AS data2, dummy FROM (SELECT genre_name, album_id, count(_id) AS number_of_tracks, min(title COLLATE LOCALIZED) AS dummy FROM audio_meta WHERE is_music=1  AND (cp_attrs & 1) GROUP BY genre_name) WHERE genre_name IN ("

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SELECT 65543 AS category_type, bucket_display_name AS favorite_name, bucket_id AS category_id, album_id, 65537 AS cp_attrs,_data AS data1, \'\' AS data2, NULL AS dummy FROM music_folders_view WHERE bucket_id IN ("

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SELECT 65544 AS category_type, composer AS favorite_name, composer AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, \'\' AS data2, NULL AS dummy  FROM (SELECT composer, album_id, sum(number_of_tracks) AS number_of_tracks, dummy  FROM (SELECT album_id, count(_id) AS number_of_tracks, min(title COLLATE LOCALIZED) as dummy,  composer FROM audio_meta WHERE is_music=1  AND (cp_attrs & 1) GROUP BY composer) GROUP BY composer ) WHERE composer IN ("

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SELECT 85 AS category_type, favorite_title AS favorite_name, favorite_id AS category_id, favorite_thumbnail_id AS album_id, 65537 AS cp_attrs,\'0\' AS data1, \'\'  AS data2, NULL AS dummy FROM milkfavorite_album_list WHERE favorite_id IN("

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SELECT 84 AS category_type, favorite_title AS favorite_name, favorite_id AS category_id, favorite_thumbnail_id AS album_id, 65537 AS cp_attrs,\'0\' AS data1, \'\'  AS data2, NULL AS dummy FROM milkfavorite_artist_list WHERE favorite_id IN("

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SELECT 86 AS category_type, favorite_title AS favorite_name, favorite_id AS category_id, favorite_thumbnail_id AS album_id, 65537 AS cp_attrs,\'0\' AS data1, \'\'  AS data2, NULL AS dummy FROM milkfavorite_milkmagazine_list WHERE favorite_id IN("

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SELECT 65539 AS category_type, artist AS favorite_name, artist AS category_id, album_id, 65537 AS cp_attrs,number_of_tracks AS data1, number_of_albums AS data2, NULL AS dummy FROM music_album_artist_view WHERE artist IN ("

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->HEART_RAW_QUERIES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistOnly"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mContext:Landroid/content/Context;

    .line 57
    iput-boolean p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mPlaylistOnly:Z

    .line 58
    return-void
.end method

.method private checkDeleteItem(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "data1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 299
    const v2, 0x10004

    if-ne p1, v2, :cond_0

    const/16 v2, -0xb

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    const/16 v2, 0x55

    if-eq p1, v2, :cond_1

    const/16 v2, 0x54

    if-eq p1, v2, :cond_1

    const/16 v2, 0x56

    if-ne p1, v2, :cond_2

    .line 312
    :cond_1
    :goto_0
    return v1

    .line 306
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 307
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 308
    const/4 v1, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "count":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertListTypeToCategoryTypeIndex(II)I
    .locals 4
    .param p1, "listType"    # I
    .param p2, "subCategoryType"    # I

    .prologue
    .line 474
    sparse-switch p1, :sswitch_data_0

    .line 507
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listType is Invaild "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :sswitch_0
    const/4 v0, 0x0

    .line 509
    .local v0, "categoryType":I
    :goto_0
    return v0

    .line 479
    .end local v0    # "categoryType":I
    :sswitch_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 480
    const/16 v0, 0x9

    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 482
    .end local v0    # "categoryType":I
    :cond_0
    const/4 v0, 0x1

    .line 484
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 486
    .end local v0    # "categoryType":I
    :sswitch_2
    const/4 v0, 0x2

    .line 487
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 489
    .end local v0    # "categoryType":I
    :sswitch_3
    const/4 v0, 0x3

    .line 490
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 492
    .end local v0    # "categoryType":I
    :sswitch_4
    const/4 v0, 0x4

    .line 493
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 495
    .end local v0    # "categoryType":I
    :sswitch_5
    const/4 v0, 0x5

    .line 496
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 498
    .end local v0    # "categoryType":I
    :sswitch_6
    const/4 v0, 0x6

    .line 499
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 501
    .end local v0    # "categoryType":I
    :sswitch_7
    const/4 v0, 0x7

    .line 502
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 504
    .end local v0    # "categoryType":I
    :sswitch_8
    const/16 v0, 0x8

    .line 505
    .restart local v0    # "categoryType":I
    goto :goto_0

    .line 474
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_7
        0x55 -> :sswitch_6
        0x56 -> :sswitch_8
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_5
        0x10006 -> :sswitch_2
        0x10007 -> :sswitch_3
        0x10008 -> :sswitch_4
    .end sparse-switch
.end method

.method private deleteAndUpdateHeartItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 51
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "heartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v31, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 136
    .local v32, "size":I
    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x1f4

    move/from16 v44, v0

    move/from16 v0, v32

    rem-int/lit16 v6, v0, 0x1f4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    add-int v37, v44, v6

    .line 138
    .local v37, "subsetSize":I
    const/16 v28, 0x0

    .line 139
    .local v28, "index":I
    move/from16 v0, v37

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v38, v0

    .line 140
    .local v38, "subsets":[Landroid/database/Cursor;
    const/16 v27, 0x0

    .local v27, "i":I
    move/from16 v29, v28

    .end local v28    # "index":I
    .local v29, "index":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 141
    move/from16 v25, v27

    .line 142
    .local v25, "fromIndex":I
    add-int/lit8 v6, v37, -0x1

    move/from16 v0, v29

    if-ne v0, v6, :cond_1

    move/from16 v41, v32

    .line 144
    .local v41, "toIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mContext:Landroid/content/Context;

    new-instance v44, Ljava/util/ArrayList;

    .line 145
    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-direct {v0, v6, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->makeRawQueryAndSelectionArgsWithHeartItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v30

    .line 146
    .local v30, "rawQuery":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "deleteAndUpdateHeartItems - from : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", to : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", subsetSize : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", size : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", selectionArgs : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 148
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 146
    move-object/from16 v0, v44

    invoke-static {v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-nez v30, :cond_2

    move/from16 v28, v29

    .line 140
    .end local v29    # "index":I
    .restart local v28    # "index":I
    :goto_3
    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v27, v0

    move/from16 v29, v28

    .end local v28    # "index":I
    .restart local v29    # "index":I
    goto/16 :goto_1

    .line 136
    .end local v25    # "fromIndex":I
    .end local v27    # "i":I
    .end local v29    # "index":I
    .end local v30    # "rawQuery":Ljava/lang/String;
    .end local v37    # "subsetSize":I
    .end local v38    # "subsets":[Landroid/database/Cursor;
    .end local v41    # "toIndex":I
    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 142
    .restart local v25    # "fromIndex":I
    .restart local v27    # "i":I
    .restart local v29    # "index":I
    .restart local v37    # "subsetSize":I
    .restart local v38    # "subsets":[Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v6, v29, 0x1

    mul-int/lit16 v0, v6, 0x1f4

    move/from16 v41, v0

    goto/16 :goto_2

    .line 152
    .restart local v30    # "rawQuery":Ljava/lang/String;
    .restart local v41    # "toIndex":I
    :cond_2
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getRawQueryAppendedUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 153
    .local v7, "uri":Landroid/net/Uri;
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "index":I
    .restart local v28    # "index":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 154
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 153
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v38, v29

    .line 155
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 158
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v25    # "fromIndex":I
    .end local v28    # "index":I
    .end local v30    # "rawQuery":Ljava/lang/String;
    .end local v41    # "toIndex":I
    .restart local v29    # "index":I
    :cond_3
    new-instance v21, Landroid/database/MergeCursor;

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v21, "cursor":Landroid/database/Cursor;
    const/16 v44, 0x0

    .line 159
    if-eqz v21, :cond_4

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_7

    .line 161
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->deleteHeartItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 162
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->TAG:Ljava/lang/String;

    const-string v45, "deleteAndUpdateHeartItems : Source provider\'s cursor is invaild. deleted invalid heartItems"

    move-object/from16 v0, v45

    invoke-static {v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    if-eqz v21, :cond_5

    if-eqz v44, :cond_6

    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_5
    :goto_4
    return-void

    .line 290
    :catch_0
    move-exception v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 166
    :cond_7
    :try_start_2
    const-string v6, "category_type"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 167
    .local v18, "categoryTypeColumnIndex":I
    const-string v6, "favorite_name"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 168
    .local v17, "categoryNameColumnIndex":I
    const-string v6, "category_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 169
    .local v16, "categoryIdColumnIndex":I
    const-string v6, "album_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 170
    .local v15, "albumIdColumnIndex":I
    const-string v6, "cp_attrs"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 171
    .local v20, "cpAttrsColumnIndex":I
    const-string v6, "data1"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 172
    .local v22, "data1ColumnIndex":I
    const-string v6, "data2"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 195
    .local v23, "data2ColumnIndex":I
    const/16 v40, 0x0

    .local v40, "targetIndex":I
    const/16 v36, 0x0

    .line 196
    .local v36, "sourceIndex":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 197
    .local v39, "targetCount":I
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v35

    .line 199
    .local v35, "sourceCount":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v24, "deleteHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v42, "updateHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    :cond_8
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 205
    .local v8, "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 207
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 208
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 207
    move-object/from16 v0, v45

    invoke-virtual {v8, v6, v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->compareTo(ILjava/lang/String;)I

    move-result v19

    .line 209
    .local v19, "compare":I
    if-lez v19, :cond_a

    .line 210
    add-int/lit8 v36, v36, 0x1

    .line 252
    :goto_5
    move/from16 v0, v40

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    move/from16 v0, v36

    move/from16 v1, v35

    if-lt v0, v1, :cond_8

    .line 254
    :cond_9
    :goto_6
    move/from16 v0, v40

    move/from16 v1, v39

    if-ge v0, v1, :cond_10

    .line 255
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    check-cast v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 256
    .restart local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    const/4 v6, 0x1

    iput v6, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->action:I

    .line 257
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v40, v40, 0x1

    .line 259
    goto :goto_6

    .line 211
    :cond_a
    if-gez v19, :cond_b

    .line 212
    const/4 v6, 0x1

    iput v6, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->action:I

    .line 213
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    .line 216
    :cond_b
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 217
    .local v10, "sourceAlbumId":J
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 218
    .local v12, "sourceCpAttrs":I
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "sourceData1":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 220
    .local v14, "sourceData2":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "sourceCategoryName":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 222
    .local v34, "sourceCategoryType":I
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 225
    .local v33, "sourceCategoryId":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 226
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2, v13}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->checkDeleteItem(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 227
    :cond_c
    sget-object v6, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->TAG:Ljava/lang/String;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "deleteAndUpdateHeartItems : sourceCategoryType : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", sourceCategoryName : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", sourceData1 "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-static {v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v6, 0x1

    iput v6, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->action:I

    .line 231
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v36, v36, 0x1

    .line 233
    add-int/lit8 v40, v40, 0x1

    .line 234
    goto/16 :goto_5

    .line 237
    :cond_d
    invoke-virtual/range {v8 .. v14}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->needUpdate(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 239
    const/4 v6, 0x2

    iput v6, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->action:I

    .line 240
    iput-object v9, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryName:Ljava/lang/String;

    .line 241
    iput-wide v10, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->albumId:J

    .line 242
    iput v12, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->cpAttrs:I

    .line 243
    iput-object v13, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data1:Ljava/lang/String;

    .line 244
    iput-object v14, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data2:Ljava/lang/String;

    .line 245
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_7
    add-int/lit8 v36, v36, 0x1

    .line 250
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_5

    .line 247
    :cond_e
    const/4 v6, 0x3

    iput v6, v8, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->action:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    .line 158
    .end local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    .end local v9    # "sourceCategoryName":Ljava/lang/String;
    .end local v10    # "sourceAlbumId":J
    .end local v12    # "sourceCpAttrs":I
    .end local v13    # "sourceData1":Ljava/lang/String;
    .end local v14    # "sourceData2":Ljava/lang/String;
    .end local v15    # "albumIdColumnIndex":I
    .end local v16    # "categoryIdColumnIndex":I
    .end local v17    # "categoryNameColumnIndex":I
    .end local v18    # "categoryTypeColumnIndex":I
    .end local v19    # "compare":I
    .end local v20    # "cpAttrsColumnIndex":I
    .end local v22    # "data1ColumnIndex":I
    .end local v23    # "data2ColumnIndex":I
    .end local v24    # "deleteHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .end local v33    # "sourceCategoryId":Ljava/lang/String;
    .end local v34    # "sourceCategoryType":I
    .end local v35    # "sourceCount":I
    .end local v36    # "sourceIndex":I
    .end local v39    # "targetCount":I
    .end local v40    # "targetIndex":I
    .end local v42    # "updateHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    :catch_1
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    :catchall_0
    move-exception v44

    move-object/from16 v50, v44

    move-object/from16 v44, v6

    move-object/from16 v6, v50

    :goto_8
    if-eqz v21, :cond_f

    if-eqz v44, :cond_13

    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_f
    :goto_9
    throw v6

    .line 274
    .restart local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    .restart local v15    # "albumIdColumnIndex":I
    .restart local v16    # "categoryIdColumnIndex":I
    .restart local v17    # "categoryNameColumnIndex":I
    .restart local v18    # "categoryTypeColumnIndex":I
    .restart local v19    # "compare":I
    .restart local v20    # "cpAttrsColumnIndex":I
    .restart local v22    # "data1ColumnIndex":I
    .restart local v23    # "data2ColumnIndex":I
    .restart local v24    # "deleteHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .restart local v35    # "sourceCount":I
    .restart local v36    # "sourceIndex":I
    .restart local v39    # "targetCount":I
    .restart local v40    # "targetIndex":I
    .restart local v42    # "updateHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->deleteHeartItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 278
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_11

    .line 279
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 280
    .local v26, "heartItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    new-instance v43, Landroid/content/ContentValues;

    invoke-direct/range {v43 .. v43}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v43, "value":Landroid/content/ContentValues;
    const-string v45, "favorite_name"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v45, "album_id"

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->albumId:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v45, "cp_attrs"

    move-object/from16 v0, v26

    iget v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->cpAttrs:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v45, "data1"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data1:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v45, "data2"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->data2:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v45, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "_id="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->id:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v43

    move-object/from16 v3, v46

    move-object/from16 v4, v47

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_a

    .line 290
    .end local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    .end local v15    # "albumIdColumnIndex":I
    .end local v16    # "categoryIdColumnIndex":I
    .end local v17    # "categoryNameColumnIndex":I
    .end local v18    # "categoryTypeColumnIndex":I
    .end local v19    # "compare":I
    .end local v20    # "cpAttrsColumnIndex":I
    .end local v22    # "data1ColumnIndex":I
    .end local v23    # "data2ColumnIndex":I
    .end local v24    # "deleteHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .end local v26    # "heartItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    .end local v35    # "sourceCount":I
    .end local v36    # "sourceIndex":I
    .end local v39    # "targetCount":I
    .end local v40    # "targetIndex":I
    .end local v42    # "updateHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .end local v43    # "value":Landroid/content/ContentValues;
    :catchall_1
    move-exception v6

    goto/16 :goto_8

    .restart local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    .restart local v15    # "albumIdColumnIndex":I
    .restart local v16    # "categoryIdColumnIndex":I
    .restart local v17    # "categoryNameColumnIndex":I
    .restart local v18    # "categoryTypeColumnIndex":I
    .restart local v19    # "compare":I
    .restart local v20    # "cpAttrsColumnIndex":I
    .restart local v22    # "data1ColumnIndex":I
    .restart local v23    # "data2ColumnIndex":I
    .restart local v24    # "deleteHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .restart local v35    # "sourceCount":I
    .restart local v36    # "sourceIndex":I
    .restart local v39    # "targetCount":I
    .restart local v40    # "targetIndex":I
    .restart local v42    # "updateHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    :cond_11
    if-eqz v21, :cond_5

    if-eqz v44, :cond_12

    :try_start_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_12
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .end local v8    # "targetItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    .end local v15    # "albumIdColumnIndex":I
    .end local v16    # "categoryIdColumnIndex":I
    .end local v17    # "categoryNameColumnIndex":I
    .end local v18    # "categoryTypeColumnIndex":I
    .end local v19    # "compare":I
    .end local v20    # "cpAttrsColumnIndex":I
    .end local v22    # "data1ColumnIndex":I
    .end local v23    # "data2ColumnIndex":I
    .end local v24    # "deleteHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .end local v35    # "sourceCount":I
    .end local v36    # "sourceIndex":I
    .end local v39    # "targetCount":I
    .end local v40    # "targetIndex":I
    .end local v42    # "updateHeartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    :catch_3
    move-exception v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_13
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9
.end method

.method private deleteHeartItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, "heartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "deleteIds":Ljava/lang/StringBuilder;
    const-string v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 377
    .local v1, "heartItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    iget-wide v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    .end local v1    # "heartItem":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    .end local v0    # "deleteIds":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getHeartItems(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v22, "heartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    new-instance v24, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    .line 77
    .local v24, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    if-eqz p2, :cond_0

    .line 78
    const-string v2, "category_type=?"

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 79
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x10004

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 81
    :cond_0
    const-string v2, "category_type, category_id"

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 82
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v2, p1

    .line 83
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 82
    .local v19, "cursor":Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 85
    if-eqz v19, :cond_2

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 87
    .local v23, "idColumnIndex":I
    const-string v2, "favorite_name"

    .line 88
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 89
    .local v16, "categoryNameColumnIndex":I
    const-string v2, "category_type"

    .line 90
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 91
    .local v17, "categoryTypeColumnIndex":I
    const-string v2, "category_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 92
    .local v15, "categoryIdColumnIndex":I
    const-string v2, "album_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 93
    .local v14, "albumIdColumnIndex":I
    const-string v2, "cp_attrs"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 94
    .local v18, "cpColumnIndex":I
    const-string v2, "data1"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 95
    .local v20, "data1ColumnIndex":I
    const-string v2, "data2"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 96
    .local v21, "data2ColumnIndex":I
    const-string/jumbo v2, "sub_category_type"

    .line 97
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 100
    .local v25, "subCategoryTypeColumnIndex":I
    :cond_1
    new-instance v2, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 101
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 102
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 104
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 106
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 107
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 108
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 109
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;-><init>(JLjava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V

    .line 100
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    .line 113
    .end local v14    # "albumIdColumnIndex":I
    .end local v15    # "categoryIdColumnIndex":I
    .end local v16    # "categoryNameColumnIndex":I
    .end local v17    # "categoryTypeColumnIndex":I
    .end local v18    # "cpColumnIndex":I
    .end local v20    # "data1ColumnIndex":I
    .end local v21    # "data2ColumnIndex":I
    .end local v23    # "idColumnIndex":I
    .end local v25    # "subCategoryTypeColumnIndex":I
    :cond_2
    if-eqz v19, :cond_3

    if-eqz v26, :cond_4

    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :cond_3
    :goto_0
    return-object v22

    .line 113
    :catch_0
    move-exception v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :catchall_0
    move-exception v3

    move-object/from16 v27, v3

    move-object v3, v2

    move-object/from16 v2, v27

    :goto_1
    if-eqz v19, :cond_5

    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    throw v2

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object/from16 v3, v26

    goto :goto_1
.end method

.method private getPlaylistRawQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    .line 514
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 516
    .local v2, "listItemId":I
    packed-switch v2, :pswitch_data_0

    .line 567
    int-to-long v6, v2

    .line 568
    invoke-static {p1, v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistFilterOption(Landroid/content/Context;J)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistOrderBy(I)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "orderBy":Ljava/lang/String;
    int-to-long v6, v2

    invoke-static {p1, v6, v7}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SELECT 65540 AS category_type,  name AS favorite_name, CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) AS category_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " album_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count(*) AS data1, \'\' AS data2, min("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AS dummy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FROM (SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      M._id as _id, album_id, play_order, name,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      FROM audio_playlists_map M, all_audio A, audio_playlists PL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      WHERE M.audio_id = A._id AND playlist_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND PL._id=playlist_id AND M.audio_cp_attrs = A.cp_attrs)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 594
    .end local v3    # "orderBy":Ljava/lang/String;
    .local v4, "rawQuery":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 518
    .end local v4    # "rawQuery":Ljava/lang/String;
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SELECT 65540 AS category_type, \'Recently added\' AS favorite_name,  CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) AS category_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  album_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  count(*) AS data1, \'\' AS data2, max(date_added) as dummy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM (SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id, date_added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       FROM audio_meta "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       WHERE is_music = 1 AND recently_added_remove_flag = 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND (cp_attrs & 1)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       ORDER BY date_added DESC LIMIT 900)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    .restart local v4    # "rawQuery":Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v4    # "rawQuery":Ljava/lang/String;
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM (SELECT 65540 AS category_type, \'Most played\' AS favorite_name, CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) AS category_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " album_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " min(count(*), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AS data1, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  \'\' AS data2, max(most_played) as dummy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM audio WHERE is_music = 1 AND most_played != 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY most_played DESC LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .restart local v4    # "rawQuery":Ljava/lang/String;
    goto/16 :goto_0

    .line 539
    .end local v4    # "rawQuery":Ljava/lang/String;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT 65540 AS category_type, \'Recently Played\' AS favorite_name, CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) AS category_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  album_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  count(*) AS data1, \'\' AS data2, max(recently_played) as dummy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM (SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id, recently_played "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       FROM audio_meta "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       WHERE is_music = 1 AND recently_played != 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       ORDER BY recently_played DESC LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 548
    .restart local v4    # "rawQuery":Ljava/lang/String;
    goto/16 :goto_0

    .line 551
    .end local v4    # "rawQuery":Ljava/lang/String;
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v0

    .line 553
    .local v0, "favouritePlaylistId":J
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistFilterOption(Landroid/content/Context;J)I

    move-result v5

    .line 552
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistOrderBy(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    .restart local v3    # "orderBy":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SELECT 65540 AS category_type, \'Favourites\' AS favorite_name, CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) AS category_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  album_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count(*) AS data1, \'\' AS data2, min("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AS dummy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM (SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       M._id as _id, album_id, play_order, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       FROM audio_playlists_map M, audio_meta A WHERE M.audio_id = A._id AND playlist_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    .restart local v4    # "rawQuery":Ljava/lang/String;
    goto/16 :goto_0

    .line 581
    .end local v0    # "favouritePlaylistId":J
    .end local v4    # "rawQuery":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SELECT 65540 AS category_type,  name AS favorite_name, CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) AS category_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " album_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count(*) AS data1, \'\' AS data2, min("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AS dummy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FROM (SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cp_attrs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      M._id as _id, album_id, play_order, name,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      FROM audio_playlists_map M, audio_meta A, audio_playlists PL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      WHERE M.audio_id = A._id AND playlist_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND PL._id=playlist_id)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "rawQuery":Ljava/lang/String;
    goto/16 :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private makeRawQueryAndSelectionArgsWithHeartItems(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "heartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    .local p3, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v8, 0xa

    new-array v1, v8, [Ljava/lang/StringBuilder;

    .line 319
    .local v1, "builders":[Ljava/lang/StringBuilder;
    const/16 v8, 0xa

    new-array v7, v8, [Ljava/util/ArrayList;

    .line 320
    .local v7, "selectionArgsArray":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;

    .line 321
    .local v4, "item":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    iget v9, v4, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryType:I

    iget v10, v4, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->subCategoryType:I

    .line 322
    invoke-direct {p0, v9, v10}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->convertListTypeToCategoryTypeIndex(II)I

    move-result v2

    .line 323
    .local v2, "categoryTypeIndex":I
    const/4 v9, 0x5

    if-ne v2, v9, :cond_1

    .line 324
    aget-object v9, v1, v2

    if-nez v9, :cond_0

    .line 325
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v9, v1, v2

    .line 327
    :cond_0
    aget-object v9, v1, v2

    iget-object v10, v4, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryId:Ljava/lang/String;

    invoke-direct {p0, p1, v10}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->getPlaylistRawQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " UNION "

    .line 328
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :cond_1
    aget-object v9, v1, v2

    if-nez v9, :cond_2

    .line 332
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->HEART_RAW_QUERIES:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v9, v1, v2

    .line 334
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aput-object v9, v7, v2

    .line 336
    :cond_2
    aget-object v9, v1, v2

    const-string v10, "?,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    aget-object v9, v7, v2

    iget-object v10, v4, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->categoryId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v2    # "categoryTypeIndex":I
    .end local v4    # "item":Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
    :cond_3
    const/4 v8, 0x5

    aget-object v8, v1, v8

    if-eqz v8, :cond_4

    .line 342
    const/4 v8, 0x5

    aget-object v0, v1, v8

    .line 343
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const-string v9, " UNION "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 347
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v5, 0x0

    .line 348
    .local v5, "rawQuery":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v6, "rawQueryBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v8, 0xa

    if-ge v3, v8, :cond_7

    .line 350
    aget-object v8, v1, v3

    if-eqz v8, :cond_6

    .line 351
    const/4 v8, 0x5

    if-eq v3, v8, :cond_5

    .line 352
    aget-object v8, v1, v3

    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aput-object v8, v1, v3

    .line 354
    :cond_5
    aget-object v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " UNION "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    aget-object v8, v7, v3

    if-eqz v8, :cond_6

    .line 356
    aget-object v8, v7, v3

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 361
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_8

    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const-string v9, " UNION "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ORDER BY category_type, category_id"

    .line 364
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 369
    :cond_8
    return-object v5
.end method


# virtual methods
.method public doSync()V
    .locals 4

    .prologue
    .line 62
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncHeartContentsImpl playlistOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mPlaylistOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mPlaylistOnly:Z

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->getHeartItems(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "heartItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->deleteAndUpdateHeartItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 71
    :cond_0
    return-void
.end method
