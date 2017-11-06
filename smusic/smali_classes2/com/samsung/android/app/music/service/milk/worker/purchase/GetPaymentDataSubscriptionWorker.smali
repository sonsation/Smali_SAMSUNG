.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPaymentDataSubscriptionWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetPaymentDataSubscriptionWorker"


# instance fields
.field private mItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "item"    # Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .prologue
    .line 31
    const/16 v4, 0x27de

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 33
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->mItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 34
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
            "Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "GetPaymentDataSubscriptionWorker"

    const-string v1, "doWorkInternal GetPaymentDataSubscriptionWorker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->mItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getProductId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->mReqId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->mItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getPricingCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->mItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 41
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getOptional1()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPaymentDataSubscription(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "GetPaymentDataSubscriptionWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 53
    if-nez p3, :cond_1

    .line 54
    packed-switch p2, :pswitch_data_0

    .line 66
    const-string v1, "GetPaymentDataSubscriptionWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled unexpect req type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const/4 v0, 0x0

    .line 57
    .local v0, "data":Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    if-eqz p4, :cond_0

    .line 58
    move-object v0, p4

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->setStoreUrl(Ljava/lang/String;)V

    .line 63
    :goto_1
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "GetPaymentDataSubscriptionWorker"

    const-string v2, "onApiHandled successResult is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    .end local v0    # "data":Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x27de
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;I)V

    return-void
.end method
