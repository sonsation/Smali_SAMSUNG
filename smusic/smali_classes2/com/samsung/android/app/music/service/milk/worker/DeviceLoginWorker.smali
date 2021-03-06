.class public Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "DeviceLoginWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 21
    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
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
            "Lcom/samsung/android/app/music/common/model/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "doWorkInternal() Requested to server for device signing"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUniqueIdForSignIn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->deviceRegister(ILjava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 17
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/UserInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/UserInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/UserInfo;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/UserInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 40
    if-nez p3, :cond_0

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled() Success to device signing"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->setSignIn()V

    .line 44
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 17
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/UserInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/UserInfo;I)V

    return-void
.end method
