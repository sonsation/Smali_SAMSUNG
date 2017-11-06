.class public Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetRecommendRadiosWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetRecommendRadiosWorker"


# instance fields
.field private mRadioBoxId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "radioBoxId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0x2a95

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->mRadioBoxId:Ljava/lang/String;

    .line 28
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
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->mRadioBoxId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "radioBoxId"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->mRadioBoxId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->getRequestId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getMilkRadios(ILjava/util/Map;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "GetRecommendRadiosWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 17
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;
    .param p5, "errorCode"    # I

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 45
    packed-switch p3, :pswitch_data_0

    .line 50
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 51
    return-void

    .line 47
    :pswitch_0
    const-string v0, "GetRecommendRadiosWorker"

    const-string v1, "onApiHandled - success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 17
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;I)V

    return-void
.end method
