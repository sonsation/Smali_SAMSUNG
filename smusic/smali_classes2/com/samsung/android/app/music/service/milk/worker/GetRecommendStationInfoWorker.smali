.class public Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetRecommendStationInfoWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetRecommendStationInfoWorker"


# instance fields
.field private mTPOCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "tpoCode"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0xe4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->mTPOCode:Ljava/lang/String;

    .line 28
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
            "Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->mTPOCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->mTPOCode:Ljava/lang/String;

    const-string v2, "00000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;)V

    .line 51
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;->start()V

    .line 54
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->mTPOCode:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->mReqId:I

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->getRecommendStationInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "GetRecommendStationInfoWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 18
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;I)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 67
    const-string v2, "GetRecommendStationInfoWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onApiHandled] Response from server ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p3, :cond_2

    .line 69
    if-nez p4, :cond_0

    .line 70
    const-string v2, "GetRecommendStationInfoWorker"

    const-string v3, "[onApiHandled] Result is empty "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-array v2, v5, [Ljava/lang/Object;

    const v3, -0x1869f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v5, v7, v2}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v2, "GetRecommendStationInfoWorker"

    const-string v3, "[onApiHandled] Send Result "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;->getStationList()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;

    .line 76
    .local v1, "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;
    const-string v3, "GetRecommendStationInfoWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onApiHandled] Recommend Station ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;->getStationTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6, p4, v2}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p3, v7, v2}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 18
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;I)V

    return-void
.end method
