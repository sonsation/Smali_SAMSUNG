.class public Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;
.source "AudioInterruptRequestWorker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioInterruptRequestWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "stationId"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;
    .param p6, "aq"    # I
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0x6f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->stationId:Ljava/lang/String;

    .line 28
    invoke-static {p6}, Lcom/samsung/android/app/music/common/model/AudioQuality;->createAudioQuality(I)Lcom/samsung/android/app/music/common/model/AudioQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    .line 29
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    .line 30
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 9
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
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->stationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v8

    .line 36
    .local v8, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v8, :cond_0

    .line 38
    const-string v7, "3"

    .line 39
    .local v7, "aiType":Ljava/lang/String;
    const-string v0, "AudioInterruptRequestWorker"

    const-string v1, "doWorkInternal >> request interruption"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->mReqId:I

    .line 41
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->stationId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    .line 42
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AudioQuality;->getBitrate()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/AudioQuality;->getCodec()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->interruption(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x3

    .line 42
    invoke-virtual {v0, v2, v3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v2

    .line 46
    .end local v7    # "aiType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 44
    :cond_0
    const-string v0, "AudioInterruptRequestWorker"

    const-string v1, "doWorkInternal >> station is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "AudioInterruptRequestWorker"

    return-object v0
.end method
