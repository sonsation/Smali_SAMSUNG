.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPurchasedSubscriptionsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GetPurchasedSubscriptionsWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 32
    const/16 v4, 0x27db

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 33
    return-void
.end method

.method private declared-synchronized updateSubscription(Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object v2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "GetPurchasedSubscriptionsWorker"

    const-string v1, "doWork is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPurchasedSubscriptions(ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "GetPurchasedSubscriptionsWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 49
    const-string v0, "GetPurchasedSubscriptionsWorker"

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

    .line 50
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 26
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/SubscriptionList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/SubscriptionList;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;
    .param p5, "errorCode"    # I

    .prologue
    .line 55
    const-string v0, "GetPurchasedSubscriptionsWorker"

    const-string v1, "onApiHandled onApiHandled is called "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    packed-switch p2, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 58
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "GetPurchasedSubscriptionsWorker"

    const-string v1, "GET_PURCHASED_SUBSCRIPTIONS Request Succeed "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->updateSubscription(Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;)V

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v0, "GetPurchasedSubscriptionsWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_PURCHASED_SUBSCRIPTIONS Failure: Response failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :pswitch_3
    const-string v0, "GetPurchasedSubscriptionsWorker"

    const-string v1, "GET_PURCHASED_SUBSCRIPTIONS Request Canceled "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_4
    const-string v0, "GetPurchasedSubscriptionsWorker"

    const-string v1, "GET_PURCHASED_SUBSCRIPTIONS  Response time out"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x27db
        :pswitch_0
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 26
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/SubscriptionList;I)V

    return-void
.end method
