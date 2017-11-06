.class public Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;
.source "AdvertisementRequestWorker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdvertisementRequestWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "stationId"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0x6f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->stationId:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    .line 29
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
            "Lcom/samsung/android/app/music/common/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->stationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 35
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 36
    const-string v2, "AdvertisementRequestWorker"

    const-string v3, "doWorkInternal >> request advertisement"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->mReqId:I

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->stationId:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->advertisement(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 39
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 41
    :cond_0
    const-string v2, "AdvertisementRequestWorker"

    const-string v3, "doWorkInternal >> station is null."

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "AdvertisementRequestWorker"

    return-object v0
.end method
