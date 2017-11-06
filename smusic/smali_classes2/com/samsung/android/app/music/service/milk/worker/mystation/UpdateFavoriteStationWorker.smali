.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdateFavoriteStationWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "UpdateFavoriteStationWorker"


# instance fields
.field private mStation:Lcom/samsung/android/app/music/common/model/Station;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 27
    const/16 v4, 0xdb

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 29
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 11
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
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v5, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v6, "updateFavStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/FavStation;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Station;

    .line 38
    .local v4, "station":Lcom/samsung/android/app/music/common/model/Station;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, "bansongList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/BanSong;>;"
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "bansongID":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/common/model/BanSong;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/model/BanSong;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "bansong":Lcom/samsung/android/app/music/common/model/BanSong;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    .end local v0    # "bansong":Lcom/samsung/android/app/music/common/model/BanSong;
    .end local v1    # "bansongID":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/samsung/android/app/music/common/model/mystation/FavStation;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "soribada"

    invoke-direct {v3, v8, v9, v2}, Lcom/samsung/android/app/music/common/model/mystation/FavStation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 44
    .local v3, "favStation":Lcom/samsung/android/app/music/common/model/mystation/FavStation;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .end local v2    # "bansongList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/BanSong;>;"
    .end local v3    # "favStation":Lcom/samsung/android/app/music/common/model/mystation/FavStation;
    .end local v4    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    const-string v7, "UpdateFavoriteStationWorker"

    const-string v8, "doWork : Send BanSong API"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->mReqId:I

    const/4 v9, 0x0

    new-instance v10, Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;

    invoke-direct {v10, v6}, Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v7, v8, v9, v10}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->updateFavStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;)Lrx/Observable;

    move-result-object v7

    return-object v7
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "UpdateFavoriteStationWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 60
    if-nez p3, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 22
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
