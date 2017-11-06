.class public Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPlaylistsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetPlaylistsWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 24
    const/16 v4, 0x296a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPlaylists(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "GetPlaylistsWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 40
    if-nez p3, :cond_1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->hasLocalPlaylistOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlistSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->mContext:Landroid/content/Context;

    const-string v1, "online-playlist-sync"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlistSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 52
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;I)V

    return-void
.end method
