.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "RemovePersonalStationsWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "RemovePersonalStationsWorker"


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
    .line 28
    .local p4, "stationId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0xd5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 29
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mStationId:Ljava/util/List;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->deleteStation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mStationId:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method

.method private deleteStation()Z
    .locals 8

    .prologue
    .line 82
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mStationId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 83
    .local v1, "delStationIds":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "index":I
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "deepLinkStationID":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mStationId:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, "stationId":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.radio.fragment.deep_link_station_id"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput-object v4, v1, v2

    move v2, v3

    .line 91
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 93
    .end local v4    # "stationId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->delete([Ljava/lang/String;)I

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
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->isDeviceUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mStationId:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->serializeIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->removePersonalStation(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "RemovePersonalStationsWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 68
    const-string v0, "RemovePersonalStationsWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled : Result of request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to remove personal station: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez p3, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->deleteStation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->mStationId:Ljava/util/List;

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v5, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v5, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p3, v5, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
