.class public Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AddPlaylistTracksWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "AddPlaylistTracksWorker"


# instance fields
.field private mPlaylistId:Ljava/lang/String;

.field private mTrackRequests:Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "playlistId"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p5, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/16 v4, 0x29cd

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 32
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mPlaylistId:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mTrackRequests:Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mTrackRequests:Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    invoke-virtual {v0, p5}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->setSimpleTracks(Ljava/util/ArrayList;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 6
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
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mPlaylistId:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mReqId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mTrackRequests:Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->addPlaylistTracks(Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "AddPlaylistTracksWorker"

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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 51
    if-nez p3, :cond_2

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, "seqIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->getPlaylistTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;

    .line 55
    .local v2, "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackSeqId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 63
    .end local v0    # "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->mTrackRequests:Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->getPlaylistTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;

    .line 64
    .restart local v2    # "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setTrackSeqId(I)V

    goto :goto_2

    .line 69
    .end local v1    # "seqIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    :cond_2
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v3}, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 70
    return-void
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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V

    return-void
.end method
