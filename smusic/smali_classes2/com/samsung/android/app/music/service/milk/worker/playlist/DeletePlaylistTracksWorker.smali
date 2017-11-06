.class public Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "DeletePlaylistTracksWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "DeletePlaylistTracksWorker"


# instance fields
.field private mPlaylistId:Ljava/lang/String;

.field private mTrackSeqIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p5, "trackSeqIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x29d0    # 1.5E-41f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mPlaylistId:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mTrackSeqIds:Ljava/util/ArrayList;

    .line 33
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
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mPlaylistId:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mReqId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mTrackSeqIds:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->serializeIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->deletePlaylistTracks(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "DeletePlaylistTracksWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 50
    if-nez p3, :cond_2

    .line 51
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mPlaylistId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 52
    .local v2, "playlistId":J
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .line 54
    .local v0, "isFirst":Z
    const-string/jumbo v5, "server_track_seq_id"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mTrackSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    .local v4, "seqId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 61
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 59
    :cond_0
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 63
    .end local v4    # "seqId":Ljava/lang/String;
    :cond_1
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    .end local v0    # "isFirst":Z
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "playlistId":J
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
