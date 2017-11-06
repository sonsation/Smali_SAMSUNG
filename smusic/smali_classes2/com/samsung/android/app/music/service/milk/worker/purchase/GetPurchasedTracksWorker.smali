.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPurchasedTracksWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GetPurchasedTracksWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 36
    const/16 v4, 0x27da

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 37
    return-void
.end method

.method private declared-synchronized updatePurchasedTrack(Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    const-string v0, "( track_type = 0) "

    .line 95
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->toContentValuesArray(I)[Landroid/content/ContentValues;

    move-result-object v3

    .line 96
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 93
    .end local v0    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "GetPurchasedTracksWorker"

    const-string v1, "doWorkInternal is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPurchasedTracks(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "GetPurchasedTracksWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 53
    const-string v0, "GetPurchasedTracksWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 31
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;
    .param p5, "errorCode"    # I

    .prologue
    .line 59
    const-string v0, "GetPurchasedTracksWorker"

    const-string v1, "onApiHandled onApiHandled is called "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    packed-switch p2, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "GetPurchasedTracksWorker"

    const-string v1, "GET_PURCHASED_TRACKS Request Succeed "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->updatePurchasedTrack(Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;)V

    goto :goto_0

    .line 75
    :pswitch_3
    const-string v0, "GetPurchasedTracksWorker"

    const-string v1, "GET_PURCHASED_TRACKS Request Canceled "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_4
    const-string v0, "GetPurchasedTracksWorker"

    const-string v1, "GET_PURCHASED_TRACKS  Response time out"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x27da
        :pswitch_1
    .end packed-switch

    .line 62
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 31
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;I)V

    return-void
.end method
