.class public Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetCreatedSmartStationWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "GetCreatedSmartStationWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 33
    const/16 v4, 0xe3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 34
    return-void
.end method

.method private getSpotlightGenre()Lcom/samsung/android/app/music/common/model/Genre;
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "ret":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    const-string v2, "genre_type=\'2\'"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Lcom/samsung/android/app/music/common/model/Genre;
    check-cast v0, Lcom/samsung/android/app/music/common/model/Genre;

    .line 79
    .restart local v0    # "ret":Lcom/samsung/android/app/music/common/model/Genre;
    return-object v0
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 3
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
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->getGenreSmartStation(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "GetCreatedSmartStationWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 29
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 51
    if-nez p3, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->getSpotlightGenre()Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    .line 53
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    iget-object v1, p4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;->station:Lcom/samsung/android/app/music/common/model/Station;

    .line 54
    .local v1, "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "station_type=\'03\' AND station_genre_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    .line 58
    const-string v2, "GetCreatedSmartStationWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled : Station Info => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Station;->setStationOrdinal(I)V

    .line 60
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Station;->setGenreType(Ljava/lang/String;)V

    .line 61
    const-string v2, "03"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Station;->setGenreId(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Station;->setGenre(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.date_of_latest_create_smart_station"

    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 67
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 74
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v1    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :goto_0
    return-void

    .line 69
    .restart local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .restart local v1    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, -0x3e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, p3, v4, v2}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v1    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, p3, v4, v2}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 29
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method
