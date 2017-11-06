.class public Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "CheckDRMLicenseWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrmLicenseChecker:Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;

.field private final mOrderId:Ljava/lang/String;

.field private final mTrackIds:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "trackIds"    # Ljava/lang/String;
    .param p5, "orderId"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "drmLicenseChecker"    # Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;
    .param p8, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 37
    const/16 v4, 0x27ec

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mContext:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mTrackIds:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mOrderId:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mType:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mDrmLicenseChecker:Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;

    .line 43
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mTrackIds:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mOrderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mType:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->checkDRMLicense(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 21
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mDrmLicenseChecker:Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;

    if-eqz v1, :cond_0

    .line 60
    if-nez p3, :cond_2

    .line 61
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->getVerifiedTracks()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    .local v0, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mDrmLicenseChecker:Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;->checkDrmLicenceDone(Z)V

    .line 75
    .end local v0    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;>;"
    :cond_0
    :goto_1
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 76
    return-void

    .restart local v0    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;>;"
    :cond_1
    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    .end local v0    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;>;"
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mDrmLicenseChecker:Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;->checkDrmLicenceDone(Z)V

    .line 65
    const/16 v1, 0x219d

    if-ne p5, v1, :cond_3

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->killServer()V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mContext:Landroid/content/Context;

    const-string v3, "drm_license_acquire_again"

    .line 68
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_3
    const/16 v1, 0x21c1

    if-ne p5, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->mContext:Landroid/content/Context;

    const-string v3, "downloading_device_overflow"

    .line 71
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 21
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;I)V

    return-void
.end method
