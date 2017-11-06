.class public final Lcom/samsung/android/app/musiclibrary/core/utils/MediaDbUtils;
.super Ljava/lang/Object;
.source "MediaDbUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getAudioIdFromPath(Landroid/content/Context;Ljava/util/ArrayList;)[J
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 21
    .local v17, "itemSize":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v19, "selection":Ljava/lang/StringBuilder;
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 24
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    .line 25
    const-string v2, "?,"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 27
    .local v18, "path":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 28
    .local v13, "fileUri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 29
    .local v12, "filePath":Ljava/lang/String;
    const-string v2, "dummy_data_"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "filePath":Ljava/lang/String;
    :cond_0
    aput-object v12, v6, v14

    .line 24
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 31
    .end local v13    # "fileUri":Landroid/net/Uri;
    .end local v18    # "path":Ljava/lang/String;
    :cond_1
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 32
    const/16 v2, 0x29

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    move/from16 v0, v17

    new-array v10, v0, [J

    .line 35
    .local v10, "audioIds":[J
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 36
    .local v8, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 37
    .local v4, "projection":[Ljava/lang/String;
    iget-object v3, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 38
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 37
    .local v11, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 40
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    .line 41
    :cond_2
    const/4 v10, 0x0

    .line 49
    .end local v10    # "audioIds":[J
    if-eqz v11, :cond_3

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :cond_3
    :goto_1
    return-object v10

    .line 49
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 43
    .restart local v10    # "audioIds":[J
    :cond_5
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    const/4 v15, 0x0

    .local v15, "index":I
    move/from16 v16, v15

    .line 46
    .end local v15    # "index":I
    .local v16, "index":I
    :goto_2
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "audioId":Ljava/lang/String;
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    aput-wide v20, v10, v16

    .line 48
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_9

    .line 49
    if-eqz v11, :cond_3

    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 37
    .end local v9    # "audioId":Ljava/lang/String;
    .end local v15    # "index":I
    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    :catchall_0
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    :goto_3
    if-eqz v11, :cond_7

    if-eqz v3, :cond_8

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    throw v2

    :catch_3
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_3

    .restart local v9    # "audioId":Ljava/lang/String;
    .restart local v15    # "index":I
    :cond_9
    move/from16 v16, v15

    .end local v15    # "index":I
    .restart local v16    # "index":I
    goto :goto_2
.end method
