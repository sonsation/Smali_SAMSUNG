.class public Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AddSmartStationWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AddSmartStationWorker"


# instance fields
.field private mAdultYn:Ljava/lang/String;

.field private mExplicit:Ljava/lang/String;

.field private mPlayStation:Z

.field private mStationId:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "stationId"    # Ljava/lang/String;
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "playStation"    # Z
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 32
    const/16 v4, 0xe2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mStationId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mTrackId:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mPlayStation:Z

    .line 36
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->getAdultSetting()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mAdultYn:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mExplicit:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mStationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mAdultYn:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mExplicit:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->addSmartStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "AddSmartStationWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 22
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 53
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 55
    if-nez p3, :cond_2

    .line 56
    iget-object v0, p4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;->station:Lcom/samsung/android/app/music/common/model/Station;

    .line 58
    .local v0, "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    const-string v2, "AddSmartStationWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled : Station Info => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "03"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 60
    const-string v2, "PERSONAL"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setGenre(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mStationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 63
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Station;->setStationName(Ljava/lang/String;)V

    .line 68
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 69
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mTrackId:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->mPlayStation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v0, v2}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 77
    .end local v0    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :goto_0
    return-void

    .line 72
    .restart local v0    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    const v3, -0x1869f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v6, v0, v2}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v0    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, p3, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 22
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method
