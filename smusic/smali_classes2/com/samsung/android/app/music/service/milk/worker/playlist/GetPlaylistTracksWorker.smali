.class public Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPlaylistTracksWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetPlaylistTracksWorker"


# instance fields
.field private mSourcePlaylistId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "sourcePlaylistId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 28
    const/16 v4, 0x29ce

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 30
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getPlaylistIdFromServerId(Ljava/lang/String;)J
    .locals 11
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 63
    const-wide/16 v8, -0x1

    .line 64
    .local v8, "id":J
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string/jumbo v3, "source_playlist_id =?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 69
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 73
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    const-string v0, "GetPlaylistTracksWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistIdFromServerId serverId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playlistId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-wide v8
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mReqId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPlaylistTracks(Ljava/lang/String;ILjava/util/Map;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "GetPlaylistTracksWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 21
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 47
    if-nez p3, :cond_0

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->getPlaylistIdFromServerId(Ljava/lang/String;)J

    move-result-wide v0

    .line 49
    .local v0, "playlistId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getSyncContentUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 52
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object v4

    .line 51
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 59
    .end local v0    # "playlistId":J
    :cond_0
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v2}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 60
    return-void

    .line 54
    .restart local v0    # "playlistId":J
    :cond_1
    const-string v2, "GetPlaylistTracksWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled local playlistId is not existed. server_playlist_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 21
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V

    return-void
.end method
