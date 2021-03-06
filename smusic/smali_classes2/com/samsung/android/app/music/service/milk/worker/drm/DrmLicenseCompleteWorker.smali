.class public Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "DrmLicenseCompleteWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mOrderId:Ljava/lang/String;

.field private final mTrackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "orderId"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 21
    const/16 v4, 0x27ed

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->mTrackId:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->mOrderId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
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
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->mTrackId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->mOrderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->drmLicenseComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->LOG_TAG:Ljava/lang/String;

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
    .line 39
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
