.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AddFavoriteStationWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "AddFavoriteStationWorker"


# instance fields
.field private mAdultYn:Ljava/lang/String;

.field private mExplicit:Ljava/lang/String;

.field private mPlayStation:Z

.field private mStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "playStation"    # Z
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 29
    const/16 v4, 0xca

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 30
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 31
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mTrackId:Ljava/lang/String;

    .line 32
    iput-boolean p6, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mPlayStation:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->isDeepLinkStation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mPlayStation:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method private isDeepLinkStation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currStationID"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 6
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
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->isDeviceUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    :goto_0
    return-object v2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "stationId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$2;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->getAdultSetting()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mAdultYn:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mExplicit:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mReqId:I

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mAdultYn:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mExplicit:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->addFavStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "AddFavoriteStationWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 98
    if-nez p3, :cond_2

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->isDeepLinkStation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-array v0, v6, [Ljava/lang/String;

    .line 101
    .local v0, "stationIDs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->delete([Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.fragment.deep_link_station_id"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .end local v0    # "stationIDs":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mTrackId:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mPlayStation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    new-array v2, v6, [Ljava/lang/Object;

    const v3, -0x1869f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v6, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 21
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
