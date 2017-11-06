.class public Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "ReorderPlaylistTracksWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "ReorderPlaylistTracksWorker"


# instance fields
.field private final mSourcePlaylistId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "sourcePlaylistId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 24
    const/16 v4, 0x29d1    # 1.5001E-41f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 25
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 7
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
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->mReqId:I

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->mSourcePlaylistId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->reorderPlaylistTracks(Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "ReorderPlaylistTracksWorker"

    return-object v0
.end method
