.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPersonalStationInfoWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "GetPersonalStationInfoWorker"


# instance fields
.field private mStationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "stationId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 31
    const/16 v4, 0xd1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 32
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mStationId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method private isDeepLinkStation()Z
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "deepLinkStationID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 101
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mStationId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 4
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
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->isDeviceUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->isDeepLinkStation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "GetPersonalStationInfoWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWorkInternal : Start Get a Personal Station ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mStationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->mStationId:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->getPersonalStationInfo(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "GetPersonalStationInfoWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

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

    .line 74
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 76
    if-nez p3, :cond_1

    .line 77
    const-string v4, "GetPersonalStationInfoWorker"

    const-string v5, "onApiHandled : GET_PERSONAL_STATION success"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object v0, p4

    .line 79
    .local v0, "resObject":Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    iget-object v3, v0, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;->station:Lcom/samsung/android/app/music/common/model/Station;

    .line 80
    .local v3, "stationInfo":Lcom/samsung/android/app/music/common/model/Station;
    const-string v4, "GetPersonalStationInfoWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "02"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    .local v2, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Seed;

    .line 84
    .local v1, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/Seed;->setStationId(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v1    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/common/model/Station;->setSeedList(Ljava/util/ArrayList;)V

    .line 88
    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v3, v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 93
    .end local v0    # "resObject":Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .end local v2    # "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v3    # "stationInfo":Lcom/samsung/android/app/music/common/model/Station;
    :goto_1
    return-void

    .line 90
    :cond_1
    const-string v4, "GetPersonalStationInfoWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled : GET_PERSONAL_STATION stationData is null personal stations from request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, p3, v4, v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method
