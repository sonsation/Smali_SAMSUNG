.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "PlayableLoadItemsTask.java"


# static fields
.field private static final LARGE_DATA_TEST:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    return-void
.end method

.method private getPlayableMediaItem(Landroid/database/Cursor;Ljava/lang/String;II)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "parentMediaId"    # Ljava/lang/String;
    .param p3, "titleIndex"    # I
    .param p4, "subTitleIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    :try_start_0
    const-string v6, "audio_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 65
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "mediaId":Ljava/lang/String;
    :goto_1
    if-ltz p3, :cond_2

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "title":Ljava/lang/String;
    :goto_2
    if-ltz p4, :cond_0

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "subTitle":Ljava/lang/String;
    :cond_0
    invoke-static {v3, v5, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaDescription;

    move-result-object v0

    .line 69
    .local v0, "des":Landroid/media/MediaDescription;
    new-instance v6, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v7, 0x2

    invoke-direct {v6, v0, v7}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object v6

    .line 60
    .end local v0    # "des":Landroid/media/MediaDescription;
    .end local v2    # "index":I
    .end local v3    # "mediaId":Ljava/lang/String;
    .end local v4    # "subTitle":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "index":I
    goto :goto_0

    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object v3, v4

    .line 65
    goto :goto_1

    .restart local v3    # "mediaId":Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .line 66
    goto :goto_2
.end method

.method private getPlayableResult(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p3, "parentMediaId"    # Ljava/lang/String;
    .param p4, "titleColumnName"    # Ljava/lang/String;
    .param p5, "subTitleColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 33
    .local v7, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 36
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    move-object/from16 v0, p4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 38
    .local v10, "titleIndex":I
    if-nez p5, :cond_3

    const/4 v9, -0x1

    .line 41
    .local v9, "subTitleIndex":I
    :cond_0
    :goto_0
    invoke-direct {p0, v7, p3, v10, v9}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;->getPlayableMediaItem(Landroid/database/Cursor;Ljava/lang/String;II)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 44
    .end local v9    # "subTitleIndex":I
    .end local v10    # "titleIndex":I
    :cond_1
    if-eqz v7, :cond_2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :cond_2
    :goto_1
    return-object v8

    .line 39
    .restart local v10    # "titleIndex":I
    :cond_3
    :try_start_2
    move-object/from16 v0, p5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    goto :goto_0

    .line 44
    .end local v10    # "titleIndex":I
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 33
    :catch_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_2
    if-eqz v7, :cond_5

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 6
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
    .line 22
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->parentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->titleColumnName:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->subTitleColumnName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;->getPlayableResult(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
