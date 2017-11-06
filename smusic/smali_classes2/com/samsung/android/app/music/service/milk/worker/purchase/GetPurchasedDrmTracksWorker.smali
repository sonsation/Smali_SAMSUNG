.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPurchasedDrmTracksWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "GetPurchasedDrmTracksWorker"


# instance fields
.field private final DEFAULT_PAGE:I

.field private bMore:Z

.field private request_page:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "bMore"    # Z

    .prologue
    .line 34
    const/16 v4, 0x27ef

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->DEFAULT_PAGE:I

    .line 36
    iput-boolean p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->bMore:Z

    .line 37
    return-void
.end method

.method private declared-synchronized deletePurchasedDrmTrack()V
    .locals 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    const-string v0, "( track_type = 1) "

    .line 111
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    const-string v2, "drm_track_view_req_page"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    const-string v2, "drm_track_view_more_yn"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 109
    .end local v0    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updatePurchasedDrmTrack(Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 121
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->toContentValuesArray(I)[Landroid/content/ContentValues;

    move-result-object v2

    .line 120
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
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
    const/4 v2, 0x1

    .line 41
    const-string v0, "GetPurchasedDrmTracksWorker"

    const-string v1, "doWorkInternal is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->bMore:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    const-string v1, "drm_track_view_req_page"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->request_page:I

    .line 50
    :goto_0
    const-string v0, "GetPurchasedDrmTracksWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->request_page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->request_page:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPurchasedDrmTracks(ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->deletePurchasedDrmTrack()V

    .line 47
    iput v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->request_page:I

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "GetPurchasedDrmTracksWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 63
    const-string v0, "GetPurchasedDrmTracksWorker"

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

    .line 64
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;
    .param p5, "errorCode"    # I

    .prologue
    .line 69
    const-string v0, "GetPurchasedDrmTracksWorker"

    const-string v1, "onApiHandled onApiHandled is called "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "GetPurchasedDrmTracksWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Succeed more Yn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->getMoreYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    const-string v2, "drm_track_view_more_yn"

    const-string v0, "Y"

    .line 76
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->getMoreYn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->mContext:Landroid/content/Context;

    const-string v1, "drm_track_view_req_page"

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->request_page:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 82
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->updatePurchasedDrmTrack(Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :pswitch_3
    const-string v0, "GetPurchasedDrmTracksWorker"

    const-string v1, "Request Canceled "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_4
    const-string v0, "GetPurchasedDrmTracksWorker"

    const-string v1, " Response time out"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x27ef
        :pswitch_1
    .end packed-switch

    .line 72
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
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;I)V

    return-void
.end method
