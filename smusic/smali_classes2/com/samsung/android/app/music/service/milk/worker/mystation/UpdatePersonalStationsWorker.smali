.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdatePersonalStationsWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "UpdatePersonalStationsWorker"


# instance fields
.field private mStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;",
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
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p4, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    const/16 v4, 0xd2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 38
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mStationList:Ljava/util/List;

    .line 39
    return-void
.end method

.method private getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 9
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 111
    const/4 v7, 0x0

    .line 113
    .local v7, "ret":Lcom/samsung/android/app/music/common/model/Station;
    if-nez p1, :cond_0

    .line 114
    const-string v1, "UpdatePersonalStationsWorker"

    const-string v2, "getStation : station id is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const/4 v8, 0x0

    .line 120
    .local v8, "stationCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "station_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 123
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {v8}, Lcom/samsung/android/app/music/common/model/Station;->createStationFromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/Station;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 129
    :cond_1
    if-eqz v8, :cond_2

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v8, 0x0

    :cond_2
    :goto_1
    move-object v0, v7

    .line 134
    goto :goto_0

    .line 126
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v8, :cond_2

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v8, 0x0

    goto :goto_1

    .line 129
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v8, 0x0

    :cond_3
    throw v0
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 7
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
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v6

    .line 44
    .local v6, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "mAdultYn":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mStationList:Ljava/util/List;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;-><init>(Ljava/util/List;)V

    .line 47
    .local v5, "reqUpdateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mReqId:I

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->updatePersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 44
    .end local v3    # "mAdultYn":Ljava/lang/String;
    .end local v5    # "reqUpdateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "UpdatePersonalStationsWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 14
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 62
    if-nez p3, :cond_7

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mStationList:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .line 65
    .local v11, "station":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v7

    .line 66
    .local v7, "ori_station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v7, :cond_2

    .line 68
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string v1, "UpdatePersonalStationsWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Station Name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") => ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v1

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationId()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationName()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->renameStation(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    :goto_0
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getSeedList()Ljava/util/List;

    move-result-object v10

    .line 85
    .local v10, "seedList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/common/model/Seed;

    .line 86
    .local v9, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 87
    const-string v1, "UpdatePersonalStationsWorker"

    const-string v2, "onApiHandled : Add Seed to DB"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v1

    .line 89
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ""

    .line 92
    :goto_2
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->addSeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_1

    .line 75
    .end local v9    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    .end local v10    # "seedList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_1
    const-string v1, "UpdatePersonalStationsWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Station Name("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not changed !!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    const-string v1, "UpdatePersonalStationsWorker"

    const-string v2, "onApiHandled : Error Station is not existed in DB .... skip!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .restart local v9    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    .restart local v10    # "seedList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_3
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 94
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v1

    .line 95
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->removeSeed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 96
    .local v8, "ret":Z
    const-string v1, "UpdatePersonalStationsWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : remove Seed to DB ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    .end local v7    # "ori_station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v8    # "ret":Z
    .end local v9    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    .end local v10    # "seedList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v11    # "station":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_5
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->mStationList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 108
    :goto_3
    return-void

    .line 102
    :cond_6
    const-string v1, "UpdatePersonalStationsWorker"

    const-string v2, "onApiHandled : Error Station is emtpy"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 106
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move/from16 v0, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 30
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
