.class public Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "SendErrorLogWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 22
    const/16 v4, 0x1f7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 23
    return-void
.end method

.method private create()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->scheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 2
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
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->create()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;-><init>(Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 19
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
