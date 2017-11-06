.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "CreateStationWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "CreateStationWorker"


# instance fields
.field private mArtistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCreateStation:Z

.field private mTrack:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Lcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p7, "isTempCreateStation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            "Lcom/samsung/android/app/music/common/model/Track;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p6, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/16 v4, 0xcf

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 48
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 49
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mArtistList:Ljava/util/List;

    .line 50
    iput-boolean p7, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTempCreateStation:Z

    .line 51
    return-void
.end method

.method private addTrackToDB(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 6
    .param p1, "stationID"    # Ljava/lang/String;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 185
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 186
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 189
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/app/music/common/model/Track;->setSettlementExt(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->updateTrackInfo(Lcom/samsung/android/app/music/common/model/Track;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->insert(Ljava/lang/Object;)J

    .line 195
    :cond_1
    move-object v1, p2

    .line 196
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 198
    .local v3, "value":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 199
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 201
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/app/music/common/model/Track;->setThumbnailId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_2
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "addTrackToDB >> NumberFormatException"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMarkedArtist()Lcom/samsung/android/app/music/common/model/artist/Artist;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mArtistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mArtistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mArtistList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    goto :goto_0
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 27
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
    .line 55
    const/4 v11, 0x0

    .local v11, "trackTitle":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "trackId":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "artistName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 57
    .local v8, "artistId":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getMarkedArtist()Lcom/samsung/android/app/music/common/model/artist/Artist;

    move-result-object v25

    .line 58
    .local v25, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getHttpUrl()Ljava/lang/String;

    move-result-object v26

    .line 60
    .local v26, "extraUrl":Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 61
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v8

    .line 65
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getAdultSetting()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "mAdultYn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    const-string v7, "02"

    .line 70
    .local v7, "seedType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v11

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v10

    .line 76
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTempCreateStation:Z

    if-eqz v1, :cond_3

    .line 77
    const-string v12, "1"

    .line 82
    .local v12, "isDeeplinkYn":Ljava/lang/String;
    :goto_1
    const-string v1, "02"

    if-ne v7, v1, :cond_6

    .line 83
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    :cond_1
    const-string v1, "CreateStationWorker"

    const-string v2, "doWorkInternal : track info is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    .line 113
    :goto_2
    return-object v1

    .line 73
    .end local v7    # "seedType":Ljava/lang/String;
    .end local v12    # "isDeeplinkYn":Ljava/lang/String;
    :cond_2
    const-string v7, "01"

    .restart local v7    # "seedType":Ljava/lang/String;
    goto :goto_0

    .line 79
    :cond_3
    const-string v12, "0"

    .restart local v12    # "isDeeplinkYn":Ljava/lang/String;
    goto :goto_1

    .line 87
    :cond_4
    const-string v1, "CreateStationWorker"

    const-string v2, "doWorkInternal : Start Create Personal Station By Track"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    const-string v1, "CreateStationWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWorkInternal : Connect to Extra Server ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mReqId:I

    const/4 v3, 0x0

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "soribada"

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    goto :goto_2

    .line 96
    :cond_5
    const-string v1, "CreateStationWorker"

    const-string v2, "doWorkInternal : Connect to Radio Server"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mReqId:I

    const/4 v3, 0x0

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "soribada"

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    goto :goto_2

    .line 103
    :cond_6
    const-string v1, "CreateStationWorker"

    const-string v2, "doWorkInternal : Start Create Personal Station By Artist"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    const-string v1, "CreateStationWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWorkInternal : Connect to Extra Server ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mReqId:I

    const/4 v15, 0x0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "soribada"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v24, v12

    invoke-interface/range {v13 .. v24}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    goto/16 :goto_2

    .line 111
    :cond_7
    const-string v1, "CreateStationWorker"

    const-string v2, "doWorkInternal : Connect to Radio Server"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mReqId:I

    const/4 v15, 0x0

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "soribada"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v24, v12

    invoke-interface/range {v13 .. v24}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "CreateStationWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 35
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V
    .locals 16
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 128
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 130
    if-nez p3, :cond_5

    .line 131
    move-object/from16 v6, p4

    .line 132
    .local v6, "station":Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    iget-object v2, v6, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;->station:Lcom/samsung/android/app/music/common/model/Station;

    .line 133
    .local v2, "createdStation":Lcom/samsung/android/app/music/common/model/Station;
    const/4 v9, 0x0

    .line 134
    .local v9, "trackId":Ljava/lang/String;
    const-string v11, "CreateStationWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onApiHandled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v11, "02"

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getTracks()Ljava/util/ArrayList;

    move-result-object v10

    .line 137
    .local v10, "trackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 138
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/common/model/Track;

    .line 139
    .local v8, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->addTrackToDB(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 140
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v9

    .line 141
    goto :goto_0

    .line 144
    .end local v8    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v5

    .line 145
    .local v5, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Seed;

    .line 146
    .local v4, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/samsung/android/app/music/common/model/Seed;->setStationId(Ljava/lang/String;)V

    .line 147
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/samsung/android/app/music/common/model/Seed;->setSeedState(I)V

    goto :goto_1

    .line 149
    .end local v4    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/model/Station;->setSeedList(Ljava/util/ArrayList;)V

    .line 150
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/music/common/model/Station;->setIsMyStation(I)V

    .line 151
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/music/common/model/Station;->setPrevTrackId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v9}, Lcom/samsung/android/app/music/common/model/Station;->setTrackId(Ljava/lang/String;)V

    .line 153
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/music/common/model/Station;->setNextTrackId(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gtz v11, :cond_2

    .line 155
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const v15, -0x1869f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 174
    .end local v2    # "createdStation":Lcom/samsung/android/app/music/common/model/Station;
    .end local v5    # "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v6    # "station":Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .end local v9    # "trackId":Ljava/lang/String;
    .end local v10    # "trackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    :goto_2
    return-void

    .line 159
    .restart local v2    # "createdStation":Lcom/samsung/android/app/music/common/model/Station;
    .restart local v5    # "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .restart local v6    # "station":Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .restart local v9    # "trackId":Ljava/lang/String;
    .restart local v10    # "trackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mTempCreateStation:Z

    if-eqz v11, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "preStationId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 162
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    .line 163
    .local v7, "stationIDs":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->delete([Ljava/lang/String;)I

    .line 166
    .end local v7    # "stationIDs":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.radio.fragment.deep_link_station_id"

    .line 167
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v13

    .line 166
    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v3    # "preStationId":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v12}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 172
    .end local v2    # "createdStation":Lcom/samsung/android/app/music/common/model/Station;
    .end local v5    # "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v6    # "station":Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .end local v9    # "trackId":Ljava/lang/String;
    .end local v10    # "trackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v11, v12}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 35
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/CreateStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method
