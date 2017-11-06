.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "BrowsableLoadItemsTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    return-void
.end method

.method private getBrowsableList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p3, "parentMediaId"    # Ljava/lang/String;
    .param p4, "keyColumnName"    # Ljava/lang/String;
    .param p5, "titleColumnName"    # Ljava/lang/String;
    .param p6, "subTitleColumnName"    # Ljava/lang/String;
    .param p7, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p1

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 31
    .local v2, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 34
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    if-nez p4, :cond_3

    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 37
    .local v4, "keyIndex":I
    :goto_0
    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 38
    .local v5, "titleIndex":I
    if-nez p6, :cond_4

    const/4 v6, -0x1

    .local v6, "subTitleIndex":I
    :cond_0
    :goto_1
    move-object v1, p0

    move-object v3, p3

    move/from16 v7, p7

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->getBrowsableMediaItem(Landroid/database/Cursor;Ljava/lang/String;IIII)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 45
    .end local v4    # "keyIndex":I
    .end local v5    # "titleIndex":I
    .end local v6    # "subTitleIndex":I
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v9, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :cond_2
    :goto_2
    return-object v8

    .line 36
    :cond_3
    :try_start_2
    invoke-interface {v2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 39
    .restart local v4    # "keyIndex":I
    .restart local v5    # "titleIndex":I
    :cond_4
    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    goto :goto_1

    .line 45
    .end local v4    # "keyIndex":I
    .end local v5    # "titleIndex":I
    :catch_0
    move-exception v1

    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 31
    :catch_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :catchall_0
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_4
    throw v1

    :catch_2
    move-exception v7

    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v3, v9

    goto :goto_3
.end method

.method private getBrowsableMediaItem(Landroid/database/Cursor;Ljava/lang/String;IIII)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "parentMediaId"    # Ljava/lang/String;
    .param p3, "keyIndex"    # I
    .param p4, "titleIndex"    # I
    .param p5, "subTitleIndex"    # I
    .param p6, "folderType"    # I

    .prologue
    .line 51
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "mediaId":Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "title":Ljava/lang/String;
    if-lez p5, :cond_0

    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "subTitle":Ljava/lang/String;
    :goto_0
    invoke-static {v2, v4, v3, p6}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;

    move-result-object v0

    .line 57
    .local v0, "des":Landroid/media/MediaDescription;
    new-instance v5, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object v5

    .line 54
    .end local v0    # "des":Landroid/media/MediaDescription;
    .end local v3    # "subTitle":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final getBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 8
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->parentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->keyColumnName:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->titleColumnName:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->subTitleColumnName:Ljava/lang/String;

    iget v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->folderType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->getBrowsableList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->getBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
