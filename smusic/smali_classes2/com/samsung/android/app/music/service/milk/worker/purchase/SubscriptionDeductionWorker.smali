.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "SubscriptionDeductionWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAudioIds:Ljava/lang/String;

.field private mOrderIds:Ljava/lang/String;

.field private mTrackIds:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "trackIds"    # Ljava/lang/String;
    .param p5, "orderIds"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 34
    const/16 v4, 0x27dd

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 35
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mTrackIds:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mOrderIds:Ljava/lang/String;

    .line 37
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
            "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mOrderIds:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mTrackIds:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->subscriptionDeduction(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled() requestType : "

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
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;I)V
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v9, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled() requestId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " requestType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " responseType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-nez p3, :cond_1

    .line 64
    if-eqz p4, :cond_1

    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getCurrentTimeGMT()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Landroid/content/ContentValues;

    .line 67
    .local v5, "valuesArray":[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 68
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeduction;

    .line 70
    .local v1, "deduction":Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeduction;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeduction;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeduction;->getOrderId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0, v9}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;->createContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 72
    .local v4, "value":Landroid/content/ContentValues;
    aput-object v4, v5, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "deduction":Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeduction;
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 80
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getPurchasedSubscriptions(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "date":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "valuesArray":[Landroid/content/ContentValues;
    :cond_1
    :goto_1
    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v6}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 87
    return-void

    .line 81
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "valuesArray":[Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;I)V

    return-void
.end method
