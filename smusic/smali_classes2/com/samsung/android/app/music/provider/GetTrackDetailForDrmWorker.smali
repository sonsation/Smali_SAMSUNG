.class public Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetTrackDetailForDrmWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetTrackDetailForDrmWorker"


# instance fields
.field private mSourceId:I

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "sourceId"    # I
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 35
    const/16 v4, 0x2b5d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->mContext:Landroid/content/Context;

    .line 37
    iput-object p5, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->mTrackId:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->mSourceId:I

    .line 39
    return-void
.end method

.method public static getAlbumId(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceAlbumId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 112
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->BASE_ALBUM_CONTENT_URI:Landroid/net/Uri;

    .line 113
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album_id"

    aput-object v0, v2, v5

    .line 114
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "source_album_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    move-object v0, p0

    move-object v5, v4

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :cond_0
    const/4 v0, 0x1

    const-string v5, "MelonContent.Album"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAlbumId : can\'t get album_id with source_album_id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    const-wide/16 v8, -0x1

    .line 123
    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-wide v4, v8

    :goto_1
    return-wide v4

    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .line 123
    if-eqz v6, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    move-wide v4, v8

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 115
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :catchall_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_3
    if-eqz v6, :cond_6

    if-eqz v4, :cond_7

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_4
    throw v0

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 130
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 131
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 133
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 137
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateTrackDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 13
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    const/4 v12, 0x1

    .line 78
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "trackId":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "drm_type"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v9, "album_art_location"

    sget-object v10, Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;->MILK_ALBUM_ART:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v9, "title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v9, "album"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v9, "artist"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistNames()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v9, "album_artist"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistNames()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "imageUrl":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 94
    .local v7, "uri":Landroid/net/Uri;
    const-string v4, "composer=?"

    .line 95
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    .line 96
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->mContext:Landroid/content/Context;

    invoke-static {v9, v7, v8, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_1

    .line 97
    const-string v9, "GetTrackDetailForDrmWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTrackDetail failed : trackId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 102
    .local v2, "context":Landroid/content/Context;
    iget v9, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->mSourceId:I

    int-to-long v10, v9

    invoke-static {v2, v10, v11}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->generatorFileName(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v0

    .line 103
    .local v0, "albumartValues":Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 105
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->writeAlbumArt(Landroid/content/Context;Landroid/content/ContentValues;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    .line 107
    :cond_2
    const-string v9, "GetTrackDetailForDrmWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleHttpResponse >> bitmap is null. - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->mTrackId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getTrackDetail(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "GetTrackDetailForDrmWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiCalled(II)V

    .line 54
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 26
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled> responseType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    packed-switch p3, :pswitch_data_0

    .line 74
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 75
    :goto_1
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 66
    .local v0, "track":Lcom/samsung/android/app/music/common/model/TrackDetail;
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled> track is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->updateTrackDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 26
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/GetTrackDetailForDrmWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;I)V

    return-void
.end method
