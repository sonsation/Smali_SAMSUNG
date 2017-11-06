.class public Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetStoreDisplayDetailPageWorker.java"


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
.field private final mDisplayGroup:Ljava/lang/String;

.field private final mDisplayId:Ljava/lang/String;

.field private final mDisplayType:Ljava/lang/String;

.field private final mPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "displayId"    # Ljava/lang/String;
    .param p5, "page"    # I
    .param p6, "displayGroup"    # Ljava/lang/String;
    .param p7, "displayType"    # Ljava/lang/String;
    .param p8, "service"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 25
    const/16 v4, 0x2778

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mDisplayId:Ljava/lang/String;

    .line 29
    iput p5, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mPage:I

    .line 30
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mDisplayGroup:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mDisplayType:Ljava/lang/String;

    .line 32
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
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mDisplayId:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->getRequestId()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mPage:I

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mDisplayGroup:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->mDisplayType:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getStoreDisplayDetailPage(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;

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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;I)V

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
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 56
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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;I)V

    return-void
.end method
