.class public Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdatePlaylistsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UpdatePlaylistsWorker"


# instance fields
.field private mRequest:Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "request"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 32
    const/16 v4, 0x296b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mRequest:Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    .line 34
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;-><init>()V

    .line 39
    .local v0, "req":Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mRequest:Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;->addUpdPlaylist(Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 41
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getPlaylistQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->updatePlaylists(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "UpdatePlaylistsWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 52
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "updated":Z
    if-nez p3, :cond_0

    .line 55
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mRequest:Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->getRenamePlaylist()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mRequest:Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->getRenamePlaylist()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 56
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mRequest:Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->getRenamePlaylist()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;

    .line 57
    .local v0, "playlist":Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->getSourcePlaylistId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 59
    .local v2, "playlistId":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 60
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->getContentUriForId(J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8, v4, v9, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    move v1, v5

    .line 66
    .end local v0    # "playlist":Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;
    .end local v2    # "playlistId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, p3, p4, v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 67
    return-void

    .restart local v0    # "playlist":Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;
    .restart local v2    # "playlistId":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    move v1, v6

    .line 62
    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
