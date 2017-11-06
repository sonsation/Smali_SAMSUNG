.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "RemoveFavoriteStationsWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "RemoveFavoriteStationsWorker"


# instance fields
.field private mStationId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0xcd

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 32
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mStationId:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->removeStaitonByStationListID()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method private removeHiddensStation(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "RemoveFavoriteStationsWorker"

    const-string/jumbo v1, "removeHiddensStation : Station ID is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private removeStaitonByStationListID()Z
    .locals 8

    .prologue
    .line 85
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mStationId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 86
    .local v3, "stationIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 88
    .local v1, "index":I
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "deepLinkStationID":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mStationId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "stationid":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.radio.fragment.deep_link_station_id"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput-object v4, v3, v1

    .line 94
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->removeHiddensStation(Ljava/lang/String;)V

    move v1, v2

    .line 95
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 96
    .end local v4    # "stationid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->delete([Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 4
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
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->isDeviceUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->mStationId:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->serializeIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->removeFavStation(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "RemoveFavoriteStationsWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 72
    if-nez p3, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->removeStaitonByStationListID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const v1, -0x1869f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p3, v4, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 26
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
