.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "CheckSubscriptionUserWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CheckSubscriptionUserWorker"


# instance fields
.field private userInfo:Lcom/samsung/android/app/music/common/model/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 23
    const/16 v4, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->userInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 26
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
            "Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->checkSubscriptionUser(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "CheckSubscriptionUserWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiCalled(II)V

    .line 42
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 17
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;
    .param p5, "errorCode"    # I

    .prologue
    .line 47
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 49
    if-nez p3, :cond_1

    .line 50
    if-eqz p4, :cond_1

    .line 51
    move-object v0, p4

    .line 53
    .local v0, "data":Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;
    const/4 v2, 0x0

    .line 55
    .local v2, "signin":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->userInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->userInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    const/4 v2, 0x1

    .line 57
    const-string v3, "CheckSubscriptionUserWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled current order id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->userInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "CheckSubscriptionUserWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled server order id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    if-eqz v2, :cond_1

    .line 62
    const-string v3, "CheckSubscriptionUserWorker"

    const-string v4, "onApiHandled do signin"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->requestLogin(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "data":Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;
    .end local v2    # "signin":Z
    :cond_1
    :goto_0
    return-void

    .line 66
    .restart local v0    # "data":Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;
    .restart local v2    # "signin":Z
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 17
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;I)V

    return-void
.end method
