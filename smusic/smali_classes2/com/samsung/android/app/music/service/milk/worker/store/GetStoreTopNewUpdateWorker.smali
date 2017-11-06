.class public Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetStoreTopNewUpdateWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "displayGroup"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 19
    const/16 v4, 0x2777

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->mDisplayGroup:Ljava/lang/String;

    .line 23
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
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->mDisplayGroup:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getStoreTopNewUpdate(ILjava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 14
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;I)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    .param p5, "errorResult"    # I

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 14
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;I)V

    return-void
.end method
