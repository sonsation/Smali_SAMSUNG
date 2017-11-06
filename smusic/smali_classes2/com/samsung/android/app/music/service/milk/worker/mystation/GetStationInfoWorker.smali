.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetStationInfoWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "GetStationInfoWorker"


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
    .line 28
    const/16 v4, 0xc9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 29
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->mStationId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private addGenre(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/model/Genre;
    .locals 2
    .param p1, "genreID"    # Ljava/lang/String;
    .param p2, "genreName"    # Ljava/lang/String;
    .param p3, "isHidden"    # Z

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->doesGenreIdExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const-string v1, "1"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/music/common/model/Genre;->createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Genre;->setVisible(I)V

    .line 72
    if-eqz p3, :cond_0

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Genre;->setHiddenGenre(Z)V

    .line 75
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->insert(Ljava/lang/Object;)J

    .line 78
    :cond_1
    return-object v0
.end method

.method private addStation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 2
    .param p1, "genreID"    # Ljava/lang/String;
    .param p2, "genreName"    # Ljava/lang/String;
    .param p3, "newStation"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 82
    if-nez p3, :cond_0

    .line 83
    const-string v0, "GetStationInfoWorker"

    const-string v1, "addStation : Station is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "01"

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/common/model/Station;->setGenre(Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/common/model/Station;->setGenreId(Ljava/lang/String;)V

    .line 94
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/music/common/model/Station;->setGenreVisible(I)V

    .line 96
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insert(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method private saveStationInfoToDB(Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 7
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 100
    const-string v1, "99999999"

    .line 101
    .local v1, "genreId":Ljava/lang/String;
    const-string v2, "Hidden Genre"

    .line 104
    .local v2, "genreName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 105
    const-string v4, "GetStationInfoWorker"

    const-string/jumbo v5, "saveStationInfoToDB : Station is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 111
    .local v0, "dbStation":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_1

    .line 112
    const-string v4, "GetStationInfoWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveStationInfoToDB : Station is already existed ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v3

    .line 117
    .local v3, "isHidden":Z
    if-eqz v3, :cond_2

    .line 118
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->addGenre(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/model/Genre;

    .line 119
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->addStation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    goto :goto_0

    .line 121
    :cond_2
    const-string v4, "GetStationInfoWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveStationInfoToDB : Genre ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") GenreID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_3
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->addGenre(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/model/Genre;

    .line 145
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->addStation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    goto/16 :goto_0

    .line 126
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    const-string v1, "99999999"

    .line 131
    const-string v2, "Hidden Genre"

    .line 132
    const/4 v3, 0x1

    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getGenreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    const-string v1, "99999999"

    .line 139
    const-string v2, "Hidden Genre"

    .line 140
    const/4 v3, 0x1

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
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "GetStationInfoWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWorkInternal : Start Get a Station information ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->mStationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->mStationId:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->mReqId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->getStationInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "GetStationInfoWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

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
    const v7, -0x1869f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 47
    const-string v1, "GetStationInfoWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Response from server ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-nez p3, :cond_2

    .line 49
    if-nez p4, :cond_0

    .line 50
    const-string v1, "GetStationInfoWorker"

    const-string v2, "onApiHandled : Result is empty "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v6, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;->station:Lcom/samsung/android/app/music/common/model/Station;

    .line 54
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v0, :cond_1

    .line 55
    const-string v1, "GetStationInfoWorker"

    const-string v2, "onApiHandled : Result Station is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v6, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->saveStationInfoToDB(Lcom/samsung/android/app/music/common/model/Station;)V

    .line 59
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p3, v6, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method
