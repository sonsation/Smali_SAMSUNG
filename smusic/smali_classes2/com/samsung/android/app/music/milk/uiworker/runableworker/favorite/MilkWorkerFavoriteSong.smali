.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;
.super Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;
.source "MilkWorkerFavoriteSong.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerFavoriteSong"


# instance fields
.field private mFunction:Ljava/lang/String;

.field private mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

.field private mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p5, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .param p6, "isAdd"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 32
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 33
    if-eqz p6, :cond_0

    const-string v0, "favorite_add"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mFunction:Ljava/lang/String;

    .line 34
    return-void

    .line 33
    :cond_0
    const-string v0, "favorite_delete"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p5, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 39
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 40
    const-string v0, "favorite_delete"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mFunction:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "MilkWorkerFavoriteSong"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 121
    const-string v6, "1"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v20

    if-nez v20, :cond_1

    .line 51
    const-string v20, "MilkWorkerFavoriteSong"

    const-string v21, "[run] MilkService is empty"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/16 v20, 0x0

    const-string v21, "MilkWorkerFavoriteSong"

    const-string v22, "NOT_DEFINE"

    const-string v23, "not Initialized"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mFunction:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "favorite_delete"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 59
    new-instance v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    .line 60
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    .line 61
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAlbumTitle()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    .line 62
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getAudioUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mTrackDetail:Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistNames()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v6, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v19, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v15

    .line 69
    .local v15, "audioId":[J
    new-instance v16, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;

    const/16 v20, 0x0

    aget-wide v20, v15, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v16, "list":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v18, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteFavoriteTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/ArrayList;)I

    goto/16 :goto_0

    .line 74
    .end local v6    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v15    # "audioId":[J
    .end local v16    # "list":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    .end local v18    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    .end local v19    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 75
    new-instance v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    .line 76
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    .line 77
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    .line 78
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .restart local v6    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .restart local v19    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v15

    .line 85
    .restart local v15    # "audioId":[J
    new-instance v16, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;

    const/16 v20, 0x0

    aget-wide v20, v15, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .restart local v16    # "list":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .restart local v18    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteFavoriteTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/ArrayList;)I

    goto/16 :goto_0

    .line 91
    .end local v6    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v15    # "audioId":[J
    .end local v16    # "list":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    .end local v18    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    .end local v19    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_3
    const/16 v20, 0x0

    const-string v21, "MilkWorkerFavoriteSong"

    const-string v22, "NOT_DEFINE"

    const-string v23, "Parameter Error"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mFunction:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "favorite_add"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "trackId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "artists":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "albumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "albumTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->mSimpleTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v14

    .line 104
    .local v14, "artisList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v7, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    .local v7, "favoriteTrackRequest":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v20, "MilkWorkerFavoriteSong"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[run] list : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addFavoriteTrack(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto/16 :goto_0

    .line 113
    .end local v7    # "favoriteTrackRequest":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    .end local v8    # "trackId":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "artists":Ljava/lang/String;
    .end local v11    # "imageUrl":Ljava/lang/String;
    .end local v12    # "albumId":Ljava/lang/String;
    .end local v13    # "albumTitle":Ljava/lang/String;
    .end local v14    # "artisList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    :cond_5
    const/16 v20, 0x0

    const-string v21, "MilkWorkerFavoriteSong"

    const-string v22, "NOT_DEFINE"

    const-string v23, "Parameter Error"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
