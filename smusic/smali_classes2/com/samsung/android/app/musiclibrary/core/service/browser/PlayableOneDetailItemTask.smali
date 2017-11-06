.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "PlayableOneDetailItemTask.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final SUB_TAG:Ljava/lang/String; = "ResultOneItemAsyncTask: "


# instance fields
.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 0
    .param p1, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrieveDefaultArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method private addCpAttrsColumn([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 108
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 109
    .local v0, "newProjection":[Ljava/lang/String;
    array-length v1, p1

    const-string v2, "cp_attrs"

    aput-object v2, v0, v1

    .line 110
    return-object v0
.end method

.method private hasLocationColumn([Ljava/lang/String;)Z
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 70
    .local v0, "column":Ljava/lang/String;
    const-string v4, "cp_attrs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    const/4 v1, 0x1

    .line 74
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    return v1

    .line 69
    .restart local v0    # "column":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "artwork"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 186
    :goto_0
    return-object v1

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 183
    .local v0, "bitmapSize":I
    if-le v0, p2, :cond_1

    .line 184
    const/4 v1, 0x1

    invoke-static {p1, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    move-object v1, p1

    .line 186
    goto :goto_0
.end method

.method private retrieveDefaultArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "artwork"    # Landroid/graphics/Bitmap;
    .param p3, "size"    # I

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 175
    :cond_0
    return-object p2
.end method

.method private retrievePlayableMediaItem(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Landroid/database/Cursor;IIII)V
    .locals 15
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "cpAttrsIndex"    # I
    .param p4, "titleIndex"    # I
    .param p5, "subTitleIndex"    # I
    .param p6, "albumIdIndex"    # I

    .prologue
    .line 117
    :try_start_0
    const-string v2, "audio_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 121
    .local v13, "index":I
    :goto_0
    if-ltz v13, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "mediaId":Ljava/lang/String;
    :goto_1
    if-ltz p4, :cond_1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "title":Ljava/lang/String;
    :goto_2
    if-ltz p5, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "subTitle":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 125
    .local v11, "cpAttrs":I
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 127
    .local v8, "albumId":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v2, v11}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 128
    .local v10, "artworkUri":Landroid/net/Uri;
    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_big:I

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v14

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;

    move-object v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v14, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 168
    return-void

    .line 118
    .end local v5    # "mediaId":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "subTitle":Ljava/lang/String;
    .end local v8    # "albumId":J
    .end local v10    # "artworkUri":Landroid/net/Uri;
    .end local v11    # "cpAttrs":I
    .end local v13    # "index":I
    :catch_0
    move-exception v12

    .line 119
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .restart local v13    # "index":I
    goto :goto_0

    .line 121
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 122
    .restart local v5    # "mediaId":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 123
    .restart local v6    # "title":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private retrievePlayableResult(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)V
    .locals 16
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    .prologue
    .line 78
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    .line 79
    .local v1, "context":Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 80
    .local v11, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->titleColumnName:Ljava/lang/String;

    .line 81
    .local v13, "titleColumnName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->subTitleColumnName:Ljava/lang/String;

    .line 84
    .local v12, "subTitleColumnName":Ljava/lang/String;
    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->hasLocationColumn([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v3, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 90
    .local v3, "projection":[Ljava/lang/String;
    :goto_0
    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 93
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 95
    .local v8, "titleIndex":I
    if-nez v12, :cond_2

    const/4 v9, -0x1

    .line 97
    .local v9, "subTitleIndex":I
    :goto_1
    const-string v2, "cp_attrs"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 98
    .local v7, "cpAttrsIndex":I
    const-string v2, "album_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, "albumIdIndex":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 99
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrievePlayableMediaItem(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Landroid/database/Cursor;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    .end local v7    # "cpAttrsIndex":I
    .end local v8    # "titleIndex":I
    .end local v9    # "subTitleIndex":I
    .end local v10    # "albumIdIndex":I
    :goto_2
    if-eqz v6, :cond_0

    if-eqz v14, :cond_5

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :cond_0
    :goto_3
    return-void

    .line 87
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->addCpAttrsColumn([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 96
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "titleIndex":I
    :cond_2
    :try_start_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 102
    .end local v8    # "titleIndex":I
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 90
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :catchall_0
    move-exception v4

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    :goto_4
    if-eqz v6, :cond_4

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_5
    throw v2

    :catch_1
    move-exception v2

    invoke-virtual {v14, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v4, v14

    goto :goto_4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->doInBackground([Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    .prologue
    .line 47
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 52
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrievePlayableResult(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SMUSIC-SV-MediaBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResultOneItemAsyncTask: Error during load data in background. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0
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
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
