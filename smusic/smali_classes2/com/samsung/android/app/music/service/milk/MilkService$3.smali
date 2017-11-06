.class Lcom/samsung/android/app/music/service/milk/MilkService$3;
.super Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;
.source "MilkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/MilkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFavorite(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 11
    .param p1, "appId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1362
    .local p3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    .local p4, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    .local p5, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    .local p6, "milkPicks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1363
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1364
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    const/4 v10, 0x1

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V

    .line 1366
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->doWork()V

    .line 1367
    return v3
.end method

.method public addFavoriteStation(ILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "playStation"    # Z

    .prologue
    .line 858
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 859
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 860
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 862
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->doWork()V

    .line 863
    return v3
.end method

.method public addMilkTrackList(Ljava/util/List;)[J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkTrackListDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1123
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/provider/dao/MilkTrackListDAO;->getAudioIdList(Landroid/content/Context;Ljava/util/List;)[J

    move-result-object v0

    return-object v0
.end method

.method public addPlaylistTracks(ILjava/lang/String;Ljava/util/List;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    .local p3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 481
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 482
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 484
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/AddPlaylistTracksWorker;->doWork()V

    .line 485
    return v3
.end method

.method public addSmartStationToMyStation(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "playStation"    # Z

    .prologue
    .line 998
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 999
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1000
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1002
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/AddSmartStationWorker;->doWork()V

    .line 1003
    return v3
.end method

.method public addToDBAfterGetCreatedSmartStation(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1008
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1009
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1010
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1012
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/GetCreatedSmartStationWorker;->doWork()V

    .line 1013
    return v0
.end method

.method public adjustmentMusicVideo(IJJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)I
    .locals 10
    .param p1, "appId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "musicVideoPlay"    # Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1336
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1337
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;-><init>(Landroid/content/Context;IIJJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1339
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->doWork()V

    .line 1340
    return v3
.end method

.method public advertisementRequest(ILjava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 786
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 787
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 788
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 790
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/AdvertisementRequestWorker;->doWork()V

    .line 791
    return v3
.end method

.method public audioInterruptRequest(ILjava/lang/String;I)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "aq"    # I

    .prologue
    .line 797
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 798
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 799
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 801
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/AudioInterruptRequestWorker;->doWork()V

    .line 802
    return v3
.end method

.method public checkDRMLicense(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "appId"    # I
    .param p2, "trackIds"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1204
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1205
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1207
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/drm/CheckDRMLicenseWorker;->doWork()V

    .line 1208
    return v3
.end method

.method public checkFavorite(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "contentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1407
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1408
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1410
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->doWork()V

    .line 1412
    return v3
.end method

.method public checkPayPromotion(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1192
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1193
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckPayPromotionWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1194
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckPayPromotionWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1196
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckPayPromotionWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckPayPromotionWorker;->doWork()V

    .line 1197
    return v0
.end method

.method public checkSubscriptionUser(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1519
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1520
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1521
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1523
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CheckSubscriptionUserWorker;->doWork()V

    .line 1524
    return v0
.end method

.method public completeOrder(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1044
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/CompleteOrderWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1045
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CompleteOrderWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/CompleteOrderWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/CompleteOrderWorker;->doWork()V

    .line 1048
    return v3
.end method

.method public createPersonalStation(ILcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p4, "isTempCreateStation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/music/common/model/Track;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 910
    .local p3, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 911
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 912
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Lcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)V

    .line 914
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->doWork()V

    .line 915
    return v3
.end method

.method public createPlaylist(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "playlistTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 440
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/CreatePlaylistWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 441
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/CreatePlaylistWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 443
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/CreatePlaylistWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/CreatePlaylistWorker;->doWork()V

    .line 444
    return v3
.end method

.method public createSmartStation(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 987
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 988
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 989
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 991
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->doWork()V

    .line 992
    return v0
.end method

.method public deleteDownloadableDeivces(ILcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "deviceList"    # Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1428
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1429
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/setting/DeleteDownloadableDevicesWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1430
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/setting/DeleteDownloadableDevicesWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;)V

    .line 1432
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/setting/DeleteDownloadableDevicesWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/setting/DeleteDownloadableDevicesWorker;->doWork()V

    .line 1433
    return v3
.end method

.method public deleteExpiredPopups(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventPopupIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->deleteExpiredPopups(Ljava/lang/String;)Z

    .line 1249
    return-void
.end method

.method public deleteFavorite(ILjava/lang/String;Ljava/util/List;)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1373
    .local p3, "favoriteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1374
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1375
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    const/4 v7, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/util/List;)V

    .line 1377
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->doWork()V

    .line 1378
    return v3
.end method

.method public deleteFavoriteTrackList(ILjava/lang/String;Ljava/util/List;)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    .local p3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1385
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1386
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/util/List;)V

    .line 1388
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->doWork()V

    .line 1390
    return v3
.end method

.method public deletePlaylist(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    .local p2, "playlistIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 470
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 471
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistsWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 473
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistsWorker;->doWork()V

    .line 474
    return v3
.end method

.method public deletePlaylistTracks(ILjava/lang/String;Ljava/util/List;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    .local p3, "trackSeqIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 502
    .local v3, "reqId":I
    if-eqz p3, :cond_0

    .line 503
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 504
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 506
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;->doWork()V

    .line 510
    .end local v0    # "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/DeletePlaylistTracksWorker;
    :goto_0
    return v3

    .line 508
    :cond_0
    const-string v1, "MilkService"

    const-string v2, "deletePlaylistTracks trackSeqIds is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteRadioHistory(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1470
    .local p2, "historyArray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1471
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1472
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;-><init>(Landroid/content/Context;IILjava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1474
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->doWork()V

    .line 1475
    return v3
.end method

.method public drmLicenseComplete(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1215
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1216
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1218
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/drm/DrmLicenseCompleteWorker;->doWork()V

    .line 1219
    return v3
.end method

.method public drmLicenseExpiredTest(I)Z
    .locals 8
    .param p1, "appId"    # I

    .prologue
    .line 1541
    const/4 v2, 0x1

    .line 1543
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1544
    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.radio.mixed.udid"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    .local v0, "deviceKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v4

    invoke-virtual {v4, v0}, LMarkany/MILK/DRM/DRMManager;->setDeviceKey(Ljava/lang/String;)V

    .line 1546
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1547
    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1546
    invoke-virtual {v4, v5}, LMarkany/MILK/DRM/DRMManager;->setUserId(Ljava/lang/String;)V

    .line 1550
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1551
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "validity"

    const v5, 0x59a8a2ff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1555
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1553
    invoke-static {v4, v5, v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1557
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v4

    const-string v5, "20170831235959"

    .line 1558
    invoke-virtual {v4, v5}, LMarkany/MILK/DRM/DRMManager;->updateAllExpiryDate(Ljava/lang/String;)J

    .line 1559
    const-string v4, "drmLicenseExpiredTest"

    const-string/jumbo v5, "updateAllExpiryDate : 20170831235959"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v3    # "updateValues":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 1560
    :catch_0
    move-exception v1

    .line 1561
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1562
    const-string v4, "drmLicenseExpiredTest"

    const-string/jumbo v5, "startServer : deviceKey or UserId setting is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAccessToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getAccessTokenExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumImageUrls(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "albumIds"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1531
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1532
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->doWork()V

    .line 1535
    return v3
.end method

.method public getAlbumInfo(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 598
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 599
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 601
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->doWork()V

    .line 602
    return v3
.end method

.method public getAlbumTracks(ILjava/lang/String;I)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 608
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 609
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 611
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->doWork()V

    .line 612
    return v3
.end method

.method public getAllFavoriteStations(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 899
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 900
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 901
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 903
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->doWork()V

    .line 904
    return v0
.end method

.method public getAllPersonalStations(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 961
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 962
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllPersonalStationWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 963
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllPersonalStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 965
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllPersonalStationWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllPersonalStationWorker;->doWork()V

    .line 966
    return v0
.end method

.method public getArtistAlbums(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "artistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 639
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailAlbumsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 640
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailAlbumsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 642
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailAlbumsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailAlbumsWorker;->doWork()V

    .line 643
    return v3
.end method

.method public getArtistInfo(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "artistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 618
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 619
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 621
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetArtistInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistInfoWorker;->doWork()V

    .line 622
    return v3
.end method

.method public getArtistMusicVideos(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "artistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 659
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailMusicVideosWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 660
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailMusicVideosWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 662
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailMusicVideosWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailMusicVideosWorker;->doWork()V

    .line 663
    const-string v1, "MilkService"

    const-string v2, "getArtistMusicVideos in service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return v3
.end method

.method public getArtistRelatedArtists(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "artistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 649
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 650
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 652
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->doWork()V

    .line 653
    return v3
.end method

.method public getArtistTracks(ILjava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "artistId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "sort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 629
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 630
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 632
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->doWork()V

    .line 633
    return v3
.end method

.method public getBixbyRuleStations(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "tpoBixbyRuleID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1510
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetBixbyRuleStationsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1511
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetBixbyRuleStationsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1513
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetBixbyRuleStationsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetBixbyRuleStationsWorker;->doWork()V

    .line 1514
    return v3
.end method

.method public getCategoryDetailGenreAlbumsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 711
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreAlbumsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 712
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreAlbumsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 714
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreAlbumsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreAlbumsWorker;->doWork()V

    .line 715
    return v3
.end method

.method public getCategoryDetailGenreArtistsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 721
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 722
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreArtistsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 723
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreArtistsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 725
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreArtistsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreArtistsWorker;->doWork()V

    .line 726
    return v3
.end method

.method public getCategoryDetailGenreChartsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 700
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 701
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 703
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->doWork()V

    .line 704
    return v3
.end method

.method public getCategoryDetailPeriodAlbumsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "appId"    # I
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cntryGroup"    # Ljava/lang/String;
    .param p5, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 744
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodAlbumsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 745
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodAlbumsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 747
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodAlbumsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodAlbumsWorker;->doWork()V

    .line 748
    return v3
.end method

.method public getCategoryDetailPeriodArtistsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "appId"    # I
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cntryGroup"    # Ljava/lang/String;
    .param p5, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 755
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodArtistsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 756
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodArtistsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 758
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodArtistsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodArtistsWorker;->doWork()V

    .line 759
    return v3
.end method

.method public getCategoryDetailPeriodChartsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "year"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 733
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodChartsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 734
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodChartsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 736
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodChartsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailPeriodChartsWorker;->doWork()V

    .line 737
    return v3
.end method

.method public getDownloadableDeivces(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1418
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/setting/GetDownloadableDevicesWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1419
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/setting/GetDownloadableDevicesWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1421
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/setting/GetDownloadableDevicesWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/setting/GetDownloadableDevicesWorker;->doWork()V

    .line 1422
    return v0
.end method

.method public getEventPopup(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1233
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1234
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/GetEventPopupWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1235
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/GetEventPopupWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1237
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetEventPopupWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/GetEventPopupWorker;->doWork()V

    .line 1238
    return v0
.end method

.method public getEventWeb(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1225
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/GetEventWebWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1226
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/GetEventWebWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1227
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetEventWebWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/GetEventWebWorker;->doWork()V

    .line 1228
    return v0
.end method

.method public getFavorite(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1396
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1397
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1399
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->doWork()V

    .line 1400
    return v3
.end method

.method public getLyrics(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    .local p2, "trackIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1315
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetLyricsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1316
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetLyricsWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1318
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetLyricsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetLyricsWorker;->doWork()V

    .line 1319
    return v3
.end method

.method public getMusicCateogoryList(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 546
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 547
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 549
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;->doWork()V

    .line 550
    return v0
.end method

.method public getMusicVideoPlay(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    .local p2, "mvIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1325
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/musicvideo/MusicVideoPlayWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1326
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/musicvideo/MusicVideoPlayWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1328
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/musicvideo/MusicVideoPlayWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/musicvideo/MusicVideoPlayWorker;->doWork()V

    .line 1329
    return v3
.end method

.method public getNoticeList(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1480
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1481
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1482
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1484
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->doWork()V

    .line 1485
    return v0
.end method

.method public getOnDeviceRecommendSearchKeywords(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1306
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1307
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1309
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->doWork()V

    .line 1310
    return v3
.end method

.method public getPaymentDataSubscription(ILcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "item"    # Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1023
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1024
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)V

    .line 1026
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataSubscriptionWorker;->doWork()V

    .line 1027
    return v3
.end method

.method public getPaymentDataTrack(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "trackList"    # Ljava/lang/String;
    .param p3, "promotionId"    # Ljava/lang/String;
    .param p4, "payYn"    # Z

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1034
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1035
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1037
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPaymentDataTrackWorker;->doWork()V

    .line 1038
    return v3
.end method

.method public getPersonalStation(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 951
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 952
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 953
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 955
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->doWork()V

    .line 956
    return v3
.end method

.method public getPickDetail(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "pickId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 689
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickDetailWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 690
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetPickDetailWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 692
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetPickDetailWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetPickDetailWorker;->doWork()V

    .line 693
    return v3
.end method

.method public getPickList(II)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 670
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 671
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 673
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->doWork()V

    .line 674
    return v3
.end method

.method public getPlaylist(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 450
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 451
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 452
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistsWorker;->doWork()V

    .line 453
    return v0
.end method

.method public getPlaylistTracks(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 491
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 492
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 494
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/GetPlaylistTracksWorker;->doWork()V

    .line 495
    return v3
.end method

.method public getProperStationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "stationName"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->doesStationNameExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getNewNameForStation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    .end local v0    # "ret":Ljava/lang/String;
    .end local p1    # "stationName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "ret":Ljava/lang/String;
    .restart local p1    # "stationName":Ljava/lang/String;
    :cond_1
    move-object p1, v0

    .line 977
    goto :goto_0
.end method

.method public getPurchasedDrmTracks(IZ)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "bMore"    # Z

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1084
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1085
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V

    .line 1087
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedDrmTracksWorker;->doWork()V

    .line 1088
    return v3
.end method

.method public getPurchasedSubscriptions(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1063
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1064
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1065
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1067
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedSubscriptionsWorker;->doWork()V

    .line 1068
    return v0
.end method

.method public getPurchasedTracks(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1073
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1074
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1075
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1077
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetPurchasedTracksWorker;->doWork()V

    .line 1078
    return v0
.end method

.method public getRadioHistory(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1450
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1451
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1453
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->doWork()V

    .line 1454
    return v0
.end method

.method public getRadioPlayLimitInfo(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1459
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1460
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioPlayLimitInfoWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1461
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioPlayLimitInfoWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1463
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioPlayLimitInfoWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioPlayLimitInfoWorker;->doWork()V

    .line 1464
    return v0
.end method

.method public getRecommendRadios(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "radioBoxId"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 679
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 680
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 682
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendRadiosWorker;->doWork()V

    .line 683
    return v3
.end method

.method public getRecommendStationinfo(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "tpoCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1500
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1501
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1503
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->doWork()V

    .line 1504
    return v3
.end method

.method public getSearchAutoCompletes(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1263
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1264
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1265
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1267
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->doWork()V

    .line 1268
    return v3
.end method

.method public getSearchPresets(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1253
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1254
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1255
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1257
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->doWork()V

    .line 1258
    return v0
.end method

.method public getSearchResults(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 11
    .param p1, "appId"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;
    .param p4, "order"    # Ljava/lang/String;
    .param p5, "page"    # Ljava/lang/String;
    .param p6, "isBixbyCall"    # Z
    .param p7, "isRecommendKeyword"    # Z

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1275
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1276
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1279
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->doWork()V

    .line 1280
    return v3
.end method

.method public getServerTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStationInfo(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 941
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 942
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 943
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 945
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetStationInfoWorker;->doWork()V

    .line 946
    return v3
.end method

.method public getStoreData(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 431
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 432
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 433
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/StoreDataWorker;->doWork()V

    .line 434
    return v0
.end method

.method public getStoreDisplayDetailPage(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "appId"    # I
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "displayGroup"    # Ljava/lang/String;
    .param p5, "displayType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 577
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 578
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;-><init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkService;)V

    .line 580
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreDisplayDetailPageWorker;->doWork()V

    .line 581
    return v3
.end method

.method public getStoreMainPage(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 556
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreMainPageWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 557
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreMainPageWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 559
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreMainPageWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreMainPageWorker;->doWork()V

    .line 560
    return v0
.end method

.method public getStoreTopNewUpdate(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "displayGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 566
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 567
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 569
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetStoreTopNewUpdateWorker;->doWork()V

    .line 570
    return v3
.end method

.method public getTopChartTracks(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "displayType"    # Ljava/lang/String;
    .param p4, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 588
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 589
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 591
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->doWork()V

    .line 592
    return v3
.end method

.method public getTrackDetail(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 536
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 537
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 539
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackDetailWorker;->doWork()V

    .line 540
    return v3
.end method

.method public getTrackPlayDevicePermission(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1345
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1346
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/GetTrackPlayDevicePermissionWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1347
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackPlayDevicePermissionWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1349
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/GetTrackPlayDevicePermissionWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/GetTrackPlayDevicePermissionWorker;->doWork()V

    .line 1350
    return v0
.end method

.method public getUser(I)Lcom/samsung/android/app/music/common/model/UserInfo;
    .locals 1
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$500(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->getVideoCp()I

    move-result v0

    return v0
.end method

.method public getVoucher(I)I
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 1093
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1094
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1095
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1096
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->doWork()V

    .line 1097
    return v0
.end method

.method public isClickedToggleButton()Z
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->isClickedToggleButton()Z

    move-result v0

    return v0
.end method

.method public isDormancyMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->isDormancyMode()Z

    move-result v0

    return v0
.end method

.method public isNetworkTransportInitialized()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInitDone()Z

    move-result v0

    return v0
.end method

.method public isVideoAdOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->isVideoAdOn()Z

    move-result v0

    return v0
.end method

.method public loadSettings(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 835
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 836
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 837
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->doWork()V

    .line 838
    return v0
.end method

.method public modSongRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p1, "appId"    # I
    .param p2, "prevTrackId"    # Ljava/lang/String;
    .param p3, "currentTrackId"    # Ljava/lang/String;
    .param p4, "nextTrackId"    # Ljava/lang/String;
    .param p5, "aq"    # I

    .prologue
    .line 765
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 766
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 767
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 769
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->doWork()V

    .line 770
    return v3
.end method

.method public radioSongRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p1, "appId"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "aiType"    # Ljava/lang/String;
    .param p5, "aq"    # I

    .prologue
    .line 776
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 777
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 778
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 780
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->doWork()V

    .line 781
    return v3
.end method

.method public redeemVoucher(IJ)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "id"    # J

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v4

    .line 1113
    .local v4, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1114
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v3, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;J)V

    .line 1116
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->doWork()V

    .line 1117
    return v4
.end method

.method public registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I
    .locals 6
    .param p1, "cb"    # Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$200(Lcom/samsung/android/app/music/service/milk/MilkService;)I

    move-result v0

    .line 369
    .local v0, "appId":I
    if-eqz p1, :cond_1

    .line 371
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$300()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$400(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 373
    const-string v2, "MilkService"

    const-string/jumbo v4, "registerCallback() Callback is empty"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$402(Lcom/samsung/android/app/music/service/milk/MilkService;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$400(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    .line 379
    .local v1, "re":Z
    const-string v2, "MilkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCallback() registerCallback callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "re "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    monitor-exit v3

    .line 383
    .end local v1    # "re":Z
    :cond_1
    return v0

    .line 381
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerVoucher(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1103
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RegisterVoucherWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1104
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RegisterVoucherWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;)V

    .line 1106
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/RegisterVoucherWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RegisterVoucherWorker;->doWork()V

    .line 1107
    return v3
.end method

.method public removeFavoriteStations(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 879
    .local p2, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 880
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 881
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 883
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->doWork()V

    .line 884
    return v3
.end method

.method public removePersonalStation(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 920
    .local p2, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 921
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 922
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 924
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->doWork()V

    .line 925
    return v3
.end method

.method public reorderPlaylistTracks(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 516
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 517
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 519
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/ReorderPlaylistTracksWorker;->doWork()V

    .line 520
    return v3
.end method

.method public replaceDeepLinkStation(ILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "playStation"    # Z

    .prologue
    .line 869
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 870
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 871
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 873
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->doWork()V

    .line 874
    return v3
.end method

.method public requestLogin(IZ)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 419
    .local v3, "reqId":I
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$500(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZ)V

    .line 420
    return v3
.end method

.method public requestLyric(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "lyricUrl"    # Ljava/lang/String;
    .param p4, "lyricType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1440
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1441
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1443
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->doWork()V

    .line 1444
    return v3
.end method

.method public saveSettings(ILjava/util/Map;Ljava/util/List;Z)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "settingsMap"    # Ljava/util/Map;
    .param p4, "isGenreSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    .local p3, "genreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 825
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v4, p2

    check-cast v4, Ljava/util/HashMap;

    move-object v5, p3

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;-><init>(Landroid/content/Context;IILjava/util/HashMap;Ljava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V

    .line 828
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->doWork()V

    .line 829
    return v3
.end method

.method public seedSearch(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1296
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1297
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1299
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchWorker;->doWork()V

    .line 1300
    return v3
.end method

.method public seedSearchAutoCompletes(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;

    .prologue
    .line 1285
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1286
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1287
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1289
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->doWork()V

    .line 1290
    return v3
.end method

.method public sendErrorLog(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 1491
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1492
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1493
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->doWork()V

    .line 1494
    return v0
.end method

.method public setClickedToggleButton(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->setClickedToggleButton(Z)V

    .line 1167
    return-void
.end method

.method public setDormancyMode(Z)Z
    .locals 1
    .param p1, "bMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->setDormancyMode(Z)Z

    move-result v0

    return v0
.end method

.method public setVideoAdOn(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->setVideoAdOn(Z)V

    .line 1159
    return-void
.end method

.method public setVideoAdPlayTime(J)V
    .locals 1
    .param p1, "playTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->setVideoAdPlayTime(J)V

    .line 1129
    return-void
.end method

.method public shouldPlayVideoAd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->shouldPlayVideoAd()Z

    move-result v0

    return v0
.end method

.method public startClient(I)I
    .locals 4
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v0

    .line 410
    .local v0, "reqId":I
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 411
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 412
    .local v1, "worker":Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->doWork()V

    .line 413
    return v0
.end method

.method public startPrefetch(IZ)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "shouldClearCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 526
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 527
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V

    .line 529
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->doWork()V

    .line 530
    return v3
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    const-string v0, "MilkService"

    const-string/jumbo v1, "stop service"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->stopSelf()V

    .line 405
    return-void
.end method

.method public subscriptionDeduction(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "trackIds"    # Ljava/lang/String;
    .param p3, "orderIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1183
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1184
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1186
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/SubscriptionDeductionWorker;->doWork()V

    .line 1187
    return v3
.end method

.method public unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    const-string v0, "MilkService"

    const-string/jumbo v1, "unregisterCallback() unregisterCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz p1, :cond_0

    .line 391
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$400(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 393
    const-string v0, "MilkService"

    const-string/jumbo v2, "unregisterCallback() Callback is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    monitor-exit v1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$400(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 397
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBlockedTrack(ILcom/samsung/android/app/music/common/model/Station;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 845
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 846
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 848
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationWorker;->doWork()V

    .line 849
    return v3
.end method

.method public updateDoNotShowTime(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V
    .locals 1
    .param p1, "eventPopup"    # Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1243
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/dao/EventPopupDAO;->updateDoNotShowTime(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V

    .line 1244
    return-void
.end method

.method public updateFavoriteStationOrdinals(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 889
    .local p2, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 890
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 891
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 893
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;->doWork()V

    .line 894
    return v3
.end method

.method public updatePersonalStations(ILjava/util/List;)I
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 931
    .local p2, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 932
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 933
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 935
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdatePersonalStationsWorker;->doWork()V

    .line 936
    return v3
.end method

.method public updatePlaylist(ILcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "playlistRequest"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 460
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 461
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 463
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/playlist/UpdatePlaylistsWorker;->doWork()V

    .line 464
    return v3
.end method

.method public updateSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "appId"    # I
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1054
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1055
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdateSubscriptionWorkder;->doWork()V

    .line 1058
    return v3
.end method

.method public updateUserInfo(ILjava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;)I
    .locals 7
    .param p1, "appId"    # I
    .param p2, "adultCertifyYn"    # Ljava/lang/String;
    .param p3, "pushInfo"    # Lcom/samsung/android/app/music/common/model/PushInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 814
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 815
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 817
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->doWork()V

    .line 818
    return v3
.end method

.method public verifyTracks(ILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v3

    .line 1172
    .local v3, "reqId":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/VerifyTracksWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    .line 1173
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/VerifyTracksWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 1175
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/VerifyTracksWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/VerifyTracksWorker;->doWork()V

    .line 1176
    return v3
.end method
