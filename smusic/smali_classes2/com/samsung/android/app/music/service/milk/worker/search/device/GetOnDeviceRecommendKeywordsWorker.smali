.class public Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetOnDeviceRecommendKeywordsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetOnDeviceRecommendKeywordsWorker"


# instance fields
.field private mOriginalKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "origianlKeyword"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 29
    const/16 v4, 0x4e88

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->mOriginalKeyword:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->mOriginalKeyword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;)V

    .line 49
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker$1;->start()V

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->mOriginalKeyword:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "@"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "targetKeyword":Ljava/lang/String;
    const-string v2, "GetOnDeviceRecommendKeywordsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWork >>> Taget Keyword => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->mReqId:I

    const/4 v4, 0x0

    .line 54
    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getOnDeviceRecommendSearchKeyword(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "GetOnDeviceRecommendKeywordsWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;I)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 67
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 69
    if-nez p3, :cond_2

    .line 70
    if-nez p4, :cond_0

    .line 71
    const-string v2, "GetOnDeviceRecommendKeywordsWorker"

    const-string v3, "onApiHandled >>> Result is empty "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-array v2, v4, [Ljava/lang/Object;

    const v3, -0x1869f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v4, v5, v2}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v2, "GetOnDeviceRecommendKeywordsWorker"

    const-string v3, "onApiHandled >>> Send Result "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->getKeywordList()Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "stringTermlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "term":Ljava/lang/String;
    const-string v3, "GetOnDeviceRecommendKeywordsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled >>> Recommend Keyword ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v1    # "term":Ljava/lang/String;
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6, p4, v2}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v0    # "stringTermlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p3, v5, v2}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;I)V

    return-void
.end method
