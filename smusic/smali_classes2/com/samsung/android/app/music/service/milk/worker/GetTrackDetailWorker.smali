.class public Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetTrackDetailWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 27
    const/16 v4, 0x2b5d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->mTrackId:Ljava/lang/String;

    .line 29
    return-void
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
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->mTrackId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getTrackDetail(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "GetTrackDetailWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiCalled(II)V

    .line 44
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 22
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;I)V

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
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->getLogTag()Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    packed-switch p3, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 67
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 59
    .local v0, "track":Lcom/samsung/android/app/music/common/model/TrackDetail;
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled> track is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 22
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;I)V

    return-void
.end method
