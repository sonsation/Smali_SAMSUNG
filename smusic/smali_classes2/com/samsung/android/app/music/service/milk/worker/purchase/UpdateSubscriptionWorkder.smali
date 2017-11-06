.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdateSubscriptionWorkder.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "UpdateSubscriptionWorkder"


# instance fields
.field private detail:Ljava/lang/String;

.field private oderId:Ljava/lang/String;

.field private productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "orderId"    # Ljava/lang/String;
    .param p6, "productId"    # Ljava/lang/String;
    .param p7, "detail"    # Ljava/lang/String;

    .prologue
    .line 33
    const/16 v4, 0x27e2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 34
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->oderId:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->productId:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->detail:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 8
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
    .line 41
    const-string v0, "UpdateSubscriptionWorkder"

    const-string v1, "doWorkInternal is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->oderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->productId:Ljava/lang/String;

    const-string v6, "02"

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->detail:Ljava/lang/String;

    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "00"

    .line 43
    :goto_0
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->updateSubscription(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    const-string v6, "01"

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "UpdateSubscriptionWorkder"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 58
    const-string v0, "UpdateSubscriptionWorkder"

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

    .line 59
    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 64
    const-string v2, "UpdateSubscriptionWorkder"

    const-string v3, "onApiHandled onApiHandled is called "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    packed-switch p2, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 67
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v2, "UpdateSubscriptionWorkder"

    const-string v3, "UPDATE_SUBSCRIPTION Request Succeed "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "orderStatusDetail"

    const-string v2, "02"

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->detail:Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "04"

    .line 72
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orderId = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->oderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0, v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v2}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    const-string v2, "02"

    goto :goto_1

    .line 90
    .end local v0    # "values":Landroid/content/ContentValues;
    :pswitch_2
    const-string v2, "UpdateSubscriptionWorkder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE_SUBSCRIPTION Failure: Response failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, p3, v6, v2}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x27e2
        :pswitch_0
    .end packed-switch

    .line 67
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 21
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
