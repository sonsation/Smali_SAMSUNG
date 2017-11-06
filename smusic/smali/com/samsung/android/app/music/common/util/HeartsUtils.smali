.class public final Lcom/samsung/android/app/music/common/util/HeartsUtils;
.super Ljava/lang/Object;
.source "HeartsUtils.java"


# static fields
.field private static final LOCAL_CP_ATTRS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 192
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->buildCpAttrs([I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS cp_attrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    .line 191
    return-void

    :array_0
    .array-data 4
        0x10000
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getAudioIds(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v4, v0

    if-nez v4, :cond_2

    .line 278
    :cond_0
    const/4 v4, 0x0

    new-array v0, v4, [J

    move-object/from16 v22, v0

    .line 327
    :cond_1
    :goto_0
    return-object v22

    .line 280
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v13, "ids":Ljava/util/List;, "Ljava/util/List<[J>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 282
    .local v16, "keywordsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    .line 283
    .local v21, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "category_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "category_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "sub_category_type"

    aput-object v6, v4, v5

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 287
    const/16 v17, 0x0

    .line 288
    .local v17, "length":I
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v3, p0

    .line 289
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 288
    .local v12, "cursor":Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 291
    if-eqz v12, :cond_8

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 292
    const-string v4, "category_id"

    .line 293
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 294
    .local v15, "keywordColIndex":I
    const-string v4, "category_type"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 295
    .local v24, "typeColIndex":I
    const-string/jumbo v4, "sub_category_type"

    .line 296
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 298
    .local v23, "subTypeColIndex":I
    :cond_3
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 299
    .local v14, "keyword":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 300
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 301
    .local v19, "listType":I
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_6

    .line 302
    const/16 v4, 0x55

    move/from16 v0, v19

    if-eq v0, v4, :cond_4

    const/16 v4, 0x54

    move/from16 v0, v19

    if-eq v0, v4, :cond_4

    const/16 v4, 0x56

    move/from16 v0, v19

    if-ne v0, v4, :cond_6

    .line 305
    :cond_4
    const/16 v22, 0x0

    .line 320
    if-eqz v12, :cond_1

    if-eqz v25, :cond_5

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 308
    :cond_6
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 310
    .local v3, "cr":Landroid/content/ContentResolver;
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 309
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v14, v4}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v9

    .line 311
    .local v9, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v4, v9, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v9, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v9, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v9, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    .local v11, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 313
    :try_start_3
    invoke-static {v11}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v10

    .line 314
    .local v10, "audioIds":[J
    array-length v4, v10

    add-int v17, v17, v4

    .line 315
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 316
    if-eqz v11, :cond_7

    if-eqz v5, :cond_b

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 318
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v10    # "audioIds":[J
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v19    # "listType":I
    :cond_7
    :goto_1
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 320
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "keywordColIndex":I
    .end local v23    # "subTypeColIndex":I
    .end local v24    # "typeColIndex":I
    :cond_8
    if-eqz v12, :cond_9

    if-eqz v25, :cond_e

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 321
    :cond_9
    :goto_2
    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 322
    .local v22, "resultList":[J
    const/16 v20, 0x0

    .line 323
    .local v20, "position":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [J

    .line 324
    .local v18, "list":[J
    const/4 v5, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    move-object/from16 v0, v18

    array-length v5, v0

    add-int v20, v20, v5

    .line 326
    goto :goto_3

    .line 316
    .end local v18    # "list":[J
    .end local v20    # "position":I
    .end local v22    # "resultList":[J
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v10    # "audioIds":[J
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v14    # "keyword":Ljava/lang/String;
    .restart local v15    # "keywordColIndex":I
    .restart local v19    # "listType":I
    .restart local v23    # "subTypeColIndex":I
    .restart local v24    # "typeColIndex":I
    :catch_1
    move-exception v4

    :try_start_7
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 288
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v10    # "audioIds":[J
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "keywordColIndex":I
    .end local v19    # "listType":I
    .end local v23    # "subTypeColIndex":I
    .end local v24    # "typeColIndex":I
    :catch_2
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 320
    :catchall_0
    move-exception v5

    move-object/from16 v26, v5

    move-object v5, v4

    move-object/from16 v4, v26

    :goto_4
    if-eqz v12, :cond_a

    if-eqz v5, :cond_f

    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_a
    :goto_5
    throw v4

    .line 316
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v10    # "audioIds":[J
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v14    # "keyword":Ljava/lang/String;
    .restart local v15    # "keywordColIndex":I
    .restart local v19    # "listType":I
    .restart local v23    # "subTypeColIndex":I
    .restart local v24    # "typeColIndex":I
    :cond_b
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 320
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v10    # "audioIds":[J
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "keywordColIndex":I
    .end local v19    # "listType":I
    .end local v23    # "subTypeColIndex":I
    .end local v24    # "typeColIndex":I
    :catchall_1
    move-exception v4

    move-object/from16 v5, v25

    goto :goto_4

    .line 311
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v14    # "keyword":Ljava/lang/String;
    .restart local v15    # "keywordColIndex":I
    .restart local v19    # "listType":I
    .restart local v23    # "subTypeColIndex":I
    .restart local v24    # "typeColIndex":I
    :catch_3
    move-exception v4

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 316
    :catchall_2
    move-exception v5

    move-object/from16 v26, v5

    move-object v5, v4

    move-object/from16 v4, v26

    :goto_6
    if-eqz v11, :cond_c

    if-eqz v5, :cond_d

    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_c
    :goto_7
    :try_start_d
    throw v4

    :catch_4
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_7

    .line 320
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "keywordColIndex":I
    .end local v19    # "listType":I
    .end local v23    # "subTypeColIndex":I
    .end local v24    # "typeColIndex":I
    :catch_5
    move-exception v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_6
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 316
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v14    # "keyword":Ljava/lang/String;
    .restart local v15    # "keywordColIndex":I
    .restart local v19    # "listType":I
    .restart local v23    # "subTypeColIndex":I
    .restart local v24    # "typeColIndex":I
    :catchall_3
    move-exception v4

    goto :goto_6
.end method

.method public static getFavoriteCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v7, 0x0

    .line 115
    .local v7, "count":I
    const/4 v6, 0x0

    .line 117
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 124
    :cond_0
    if-eqz v6, :cond_1

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavoriteCount() - count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v7

    .line 124
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getMaxDisplayOrder(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v7, 0x0

    .line 142
    .local v7, "displayOrder":I
    const/4 v6, 0x0

    .line 144
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "max(display_order)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 151
    :cond_0
    if-eqz v6, :cond_1

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_1
    add-int/lit8 v0, v7, 0x1

    return v0

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "subCategoryType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 333
    new-array v8, v10, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v8, v9

    .line 334
    .local v8, "projection":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 374
    :pswitch_0
    const/4 v0, 0x0

    .line 376
    .local v0, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :goto_0
    if-eqz v0, :cond_0

    .line 377
    iput-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 379
    :cond_0
    return-object v0

    .line 336
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_1
    const v1, 0x100050

    if-ne p3, v1, :cond_2

    .line 337
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;

    .line 338
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v1

    invoke-direct {v0, p0, p2, v1, v5}, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 344
    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :goto_1
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 345
    .local v6, "playlistId":J
    const-wide/16 v2, -0xe

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1

    const-wide/16 v2, -0xc

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1

    const-wide/16 v2, -0xd

    cmp-long v1, v6, v2

    if-nez v1, :cond_3

    .line 348
    :cond_1
    new-array v8, v10, [Ljava/lang/String;

    .end local v8    # "projection":[Ljava/lang/String;
    const-string v1, "_id"

    aput-object v1, v8, v9

    .restart local v8    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v6    # "playlistId":J
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    const-string v3, "local"

    .line 342
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_1

    .line 350
    .restart local v6    # "playlistId":J
    :cond_3
    new-array v8, v10, [Ljava/lang/String;

    .end local v8    # "projection":[Ljava/lang/String;
    const-string v1, "audio_id"

    aput-object v1, v8, v9

    .line 352
    .restart local v8    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 354
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v6    # "playlistId":J
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0

    .line 357
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_3
    if-ne p3, v2, :cond_4

    .line 358
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;

    invoke-direct {v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0

    .line 361
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :cond_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0

    .line 365
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0

    .line 368
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0

    .line 371
    .end local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_6
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v0    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static isFavorite(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "subCategoryType"    # I

    .prologue
    .line 69
    const/4 v8, 0x0

    .line 70
    .local v8, "isFavorite":Z
    const/4 v6, 0x0

    .line 71
    .local v6, "c":Landroid/database/Cursor;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    const-string v1, "You should check why parameters invalid. categoryId : %s, categoryType : %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 72
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 78
    :cond_1
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v10, "selectionArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v0, "category_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category_id"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const v0, 0x10003

    if-ne p1, v0, :cond_2

    .line 85
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sub_category_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 91
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "category_id"

    aput-object v3, v2, v0

    .line 92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    .line 91
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 96
    .local v7, "count":I
    if-lez v7, :cond_5

    const/4 v8, 0x1

    .line 97
    :goto_1
    const/4 v0, 0x1

    if-le v7, v0, :cond_3

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "isFavorite type[%s], id[%s]\'s count[%d]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListTypeDebugText(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v5, 0x2

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v5

    .line 99
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v7    # "count":I
    :cond_3
    if-eqz v6, :cond_4

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 110
    goto/16 :goto_0

    .line 96
    .restart local v7    # "count":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 106
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "count":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "selectionArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static makeFavoriteContentValue(Landroid/content/Context;ILjava/lang/String;I)Landroid/content/ContentValues;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "subCategoryType"    # I

    .prologue
    const/4 v9, 0x0

    .line 160
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v8, "newValue":Landroid/content/ContentValues;
    const-string v0, "category_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v0, "category_id"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "sub_category_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->makeQueryArg(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v6

    .line 167
    .local v6, "arg":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v7, 0x0

    .line 169
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 172
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "favorite_name"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "album_id"

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v0, "cp_attrs"

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    const-string v0, "data1"

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "data2"

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v7, :cond_0

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_0
    const-string v0, "display_order"

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->getMaxDisplayOrder(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    .end local v8    # "newValue":Landroid/content/ContentValues;
    :goto_0
    return-object v8

    .line 179
    .restart local v8    # "newValue":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    const-string v1, "makeFavoriteContentValue : data is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    if-eqz v7, :cond_2

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v9

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 184
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static makeQueryArg(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "subCategoryType"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    sget-object v6, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeQueryArg - categoryType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListTypeDebugText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "\'\' AS data2"

    .line 199
    .local v2, "data2":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 200
    .local v0, "arg":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    packed-switch p1, :pswitch_data_0

    .line 270
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/app/music/common/util/HeartsUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " makeQueryArg invalid categoryType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :pswitch_1
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->CONTENT_URI:Landroid/net/Uri;

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 203
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "album"

    aput-object v7, v6, v5

    const-string v7, "_id"

    aput-object v7, v6, v4

    sget-object v7, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "numsongs"

    aput-object v7, v6, v10

    aput-object v2, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 205
    const-string v6, "_id=?"

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 206
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 273
    :goto_0
    return-object v0

    .line 209
    :pswitch_2
    if-ne p3, v9, :cond_0

    .line 210
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->CONTENT_URI:Landroid/net/Uri;

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 211
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "artist"

    aput-object v7, v6, v5

    const-string v7, "album_id"

    aput-object v7, v6, v4

    sget-object v7, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "number_of_tracks"

    aput-object v7, v6, v10

    const-string v7, "number_of_albums"

    aput-object v7, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 215
    const-string v6, "artist =?"

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 216
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_0
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->CONTENT_URI:Landroid/net/Uri;

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 219
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "artist"

    aput-object v7, v6, v5

    const-string v7, "album_id"

    aput-object v7, v6, v4

    sget-object v7, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "number_of_tracks"

    aput-object v7, v6, v10

    const-string v7, "number_of_albums"

    aput-object v7, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 223
    const-string v6, "_id=?"

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 224
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0

    .line 228
    :pswitch_3
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->CONTENT_URI:Landroid/net/Uri;

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 229
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "genre_name"

    aput-object v7, v6, v5

    const-string v7, "album_id"

    aput-object v7, v6, v4

    sget-object v7, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "number_of_tracks"

    aput-object v7, v6, v10

    aput-object v2, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 232
    const-string v6, "genre_name=?"

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 233
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0

    .line 236
    :pswitch_4
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->CONTENT_URI:Landroid/net/Uri;

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 237
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "bucket_display_name"

    aput-object v7, v6, v5

    const-string v7, "album_id"

    aput-object v7, v6, v4

    sget-object v7, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "_data"

    aput-object v7, v6, v10

    aput-object v2, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 240
    const-string v6, "bucket_id=?"

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 241
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_0

    .line 244
    :pswitch_5
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 245
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "composer"

    aput-object v7, v6, v5

    const-string v7, "album_id"

    aput-object v7, v6, v4

    sget-object v7, Lcom/samsung/android/app/music/common/util/HeartsUtils;->LOCAL_CP_ATTRS:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "number_of_tracks"

    aput-object v7, v6, v10

    aput-object v2, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 248
    const-string v6, "composer=?"

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 249
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_0

    .line 252
    :pswitch_6
    const v1, 0x10001

    .line 253
    .local v1, "cpAttrs":I
    const v6, 0x100050

    if-ne p3, v6, :cond_2

    move v3, v4

    .line 254
    .local v3, "isOnlinePlaylist":Z
    :goto_1
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 255
    const/4 v1, 0x3

    .line 256
    if-eqz v3, :cond_1

    .line 257
    or-int/lit8 v1, v1, 0x8

    .line 260
    :cond_1
    if-eqz v3, :cond_3

    const-string/jumbo v6, "online"

    :goto_2
    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->getMetaContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 263
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "name"

    aput-object v7, v6, v5

    const-string v5, "album_id"

    aput-object v5, v6, v4

    const-string v4, "cp_attrs"

    aput-object v4, v6, v9

    const-string v4, "number_of_tracks"

    aput-object v4, v6, v10

    aput-object v2, v6, v11

    iput-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto/16 :goto_0

    .end local v3    # "isOnlinePlaylist":Z
    :cond_2
    move v3, v5

    .line 253
    goto :goto_1

    .line 260
    .restart local v3    # "isOnlinePlaylist":Z
    :cond_3
    const-string v6, "local"

    goto :goto_2

    .line 200
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 133
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method public static setFavorite(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "isFavorite"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->setFavorite(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 49
    return-void
.end method

.method public static setFavorite(Landroid/content/Context;ILjava/lang/String;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryType"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "isFavorite"    # Z
    .param p4, "subCategoryType"    # I

    .prologue
    .line 53
    if-eqz p3, :cond_1

    .line 55
    invoke-static {p0, p1, p2, p4}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->makeFavoriteContentValue(Landroid/content/Context;ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 56
    .local v0, "value":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 57
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 65
    .end local v0    # "value":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "category_type=? AND category_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 60
    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    return-void
.end method
