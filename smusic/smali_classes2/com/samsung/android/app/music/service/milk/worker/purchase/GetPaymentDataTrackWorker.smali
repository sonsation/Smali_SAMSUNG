.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPaymentDataTrackWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPayEvent:Z

.field private mPayYn:Ljava/lang/String;

.field private mPromotionId:Ljava/lang/String;

.field private mTrackList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "trackList"    # Ljava/lang/String;
    .param p6, "promotionId"    # Ljava/lang/String;
    .param p7, "payYn"    # Z

    .prologue
    .line 28
    const/16 v4, 0x27e1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayEvent:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayYn:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mTrackList:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPromotionId:Ljava/lang/String;

    .line 32
    iput-boolean p7, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayEvent:Z

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayEvent:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPromotionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "Y"

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayYn:Ljava/lang/String;

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPaymentDataTrackWorker() payEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPayYn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayYn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 39
    :cond_1
    const-string v0, "N"

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayYn:Ljava/lang/String;

    goto :goto_0
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
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mTrackList:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPromotionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->mPayYn:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getOrderPaymentDataTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->LOG_TAG:Ljava/lang/String;

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

    .line 60
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 15
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled() requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p3, :cond_1

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 81
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled() unexpect req type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 71
    :pswitch_0
    if-eqz p4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getHttpUrl()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p4, v0}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->setStoreUrl(Ljava/lang/String;)V

    .line 78
    :goto_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled() successResult is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x27e1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 15
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;I)V

    return-void
.end method
