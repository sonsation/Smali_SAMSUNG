.class public Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "RadioSongRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/TrackListInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_TRACK:Ljava/lang/String; = "Invalid Track"

.field private static final LOG_TAG:Ljava/lang/String; = "RadioSongRequestWorker"


# instance fields
.field private aiType:Ljava/lang/String;

.field protected audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

.field protected radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

.field protected stationId:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "reqType"    # I
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "stationId"    # Ljava/lang/String;
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "aiType"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;
    .param p8, "aq"    # I
    .param p9, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 57
    const/16 v4, 0x65

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 59
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->aiType:Ljava/lang/String;

    .line 62
    invoke-static {p8}, Lcom/samsung/android/app/music/common/model/AudioQuality;->createAudioQuality(I)Lcom/samsung/android/app/music/common/model/AudioQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    .line 63
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    .line 64
    return-void
.end method

.method private addTrackToDB(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 8
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 344
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 348
    :cond_0
    const-string v6, "Invalid Track"

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;

    move-result-object v6

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;->deleteTrack(Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "addTrackToDB >> Invalid track. so delete track"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 354
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    const-string v6, "2019-06-09 12:00:00"

    invoke-virtual {p2, v6}, Lcom/samsung/android/app/music/common/model/Track;->setUrlExp(Ljava/lang/String;)Z

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 358
    const-string v0, "Samsung Music"

    .line 359
    .local v0, "adDummyName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v1, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v6, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-direct {v6, v0, v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    .line 362
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/common/model/Track;->setAlbumTitle(Ljava/lang/String;)V

    .line 365
    .end local v0    # "adDummyName":Ljava/lang/String;
    .end local v1    # "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "addTrackToDB >> Expire Time is null"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/samsung/android/app/music/common/model/Track;->setSettlementExt(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->updateTrackInfo(Lcom/samsung/android/app/music/common/model/Track;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 371
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->insert(Ljava/lang/Object;)J

    .line 374
    :cond_4
    move-object v3, p2

    .line 375
    .local v3, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 377
    .local v5, "value":Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 378
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_5

    .line 380
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/samsung/android/app/music/common/model/Track;->setThumbnailId(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_5
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "addTrackToDB >> NumberFormatException"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentTrackTitle(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    const/4 v0, 0x0

    .line 160
    .local v0, "currentTitle":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 161
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTrack()Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 171
    const-string v3, "RadioSongRequestWorker"

    const-string v5, "getTracks >> station id given"

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 216
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 181
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;-><init>(Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$1;)V

    .line 183
    .local v0, "requestInfo":Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;
    if-eqz v1, :cond_3

    .line 184
    const-string v3, "RadioSongRequestWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTracks >> station id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", track id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->stationType:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->stationId:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->trackId:Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/AudioQuality;->getBitrate()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->bitrate:Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/AudioQuality;->getCodec()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->codec:Ljava/lang/String;

    .line 190
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getIsTurned()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    const-string v3, "0"

    :goto_1
    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->isFirstPlay:Ljava/lang/String;

    .line 191
    const-string v3, "0"

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->audioType:Ljava/lang/String;

    .line 192
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->aiType:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->aiType:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 194
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/app/music/provider/dao/StationTrackDAO;->getTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    .line 195
    .local v2, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackSequence()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->sequence:Ljava/lang/String;

    .line 203
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_1
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/model/Station;->setPrevTrackId(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/model/Station;->setTrackId(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/model/Station;->setNextTrackId(Ljava/lang/String;)V

    .line 208
    const-string v3, "RadioSongRequestWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTracks >> onTrackUpdateSequence. requestInfo.sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->sequence:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isFirstPlay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->isFirstPlay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_2
    const-string v3, "1"

    goto :goto_1

    .line 211
    :cond_3
    const-string v3, "RadioSongRequestWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTracks >> can not request to Server: station id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", track id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->trackId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 213
    goto/16 :goto_0
.end method

.method private handleTrackList(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackListInfo;)Z
    .locals 11
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/app/music/common/model/TrackListInfo;

    .prologue
    .line 220
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_2

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "songResponse >> successResult is NULL"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v7, :cond_1

    .line 223
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const/4 v8, -0x1

    const-string v9, ""

    invoke-interface {v7, p1, v8, v9}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    :cond_1
    const/4 v7, 0x0

    .line 340
    :goto_0
    return v7

    .line 228
    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->setStationId(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v6

    .line 230
    .local v6, "trackData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    const/4 v2, 0x0

    .local v2, "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v5, 0x0

    .local v5, "track":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v1, 0x0

    .line 232
    .local v1, "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 233
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "track":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v5, Lcom/samsung/android/app/music/common/model/Track;

    .line 234
    .restart local v5    # "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v7

    if-nez v7, :cond_5

    .line 235
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setPrevTrack(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setNextTrack(Ljava/lang/String;Ljava/lang/String;)Z

    .line 272
    :cond_3
    :goto_1
    if-nez v5, :cond_b

    .line 273
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v7, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SongResponse >> Track is NULL"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const/4 v8, -0x1

    const-string v9, "Track is NULL"

    invoke-interface {v7, p1, v8, v9}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 238
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 239
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 240
    .local v4, "tempId":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleTrackList >> Temp trackId for AD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 244
    .end local v4    # "tempId":I
    :cond_6
    const-string/jumbo v7, "\uc774 \uad11\uace0\uc758 \ud6c4\uc6d0\uc73c\ub85c Samsung Music\uc774 \uc6b4\uc601\ub429\ub2c8\ub2e4"

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 246
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v7, Lcom/samsung/android/app/music/common/model/artist/Artist;

    const-string v8, ""

    const-string/jumbo v9, "\uc7a0\uc2dc \ud6c4 \uc2a4\ud14c\uc774\uc158\uc774 \ub2e4\uc2dc \uc7ac\uc0dd\ub429\ub2c8\ub2e4"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v5, v0}, Lcom/samsung/android/app/music/common/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 252
    .end local v0    # "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 253
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "track":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v5, Lcom/samsung/android/app/music/common/model/Track;

    .line 254
    .restart local v5    # "track":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v1, Lcom/samsung/android/app/music/common/model/Track;

    .line 255
    .restart local v1    # "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setPrevTrack(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 257
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    .line 258
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v2, Lcom/samsung/android/app/music/common/model/Track;

    .line 259
    .restart local v2    # "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "track":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v5, Lcom/samsung/android/app/music/common/model/Track;

    .line 260
    .restart local v5    # "track":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v1, Lcom/samsung/android/app/music/common/model/Track;

    .line 263
    .restart local v1    # "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setPrevTrack(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 265
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v7, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SongResponse >> trackData size is 0 or bigger than 3"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const/4 v8, -0x1

    const-string v9, ""

    invoke-interface {v7, p1, v8, v9}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 280
    :cond_b
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    .line 282
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v3, :cond_d

    .line 283
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v7, :cond_c

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SongResponse >> station is NULL maybe removed from database. station id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const/16 v8, 0xfa0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "station id is not existed :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 289
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 287
    invoke-interface {v7, p1, v8, v9}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 295
    :cond_d
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 296
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/common/model/Station;->setPrevTrackId(Ljava/lang/String;)V

    .line 301
    :goto_2
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/common/model/Station;->setTrackId(Ljava/lang/String;)V

    .line 303
    if-eqz v1, :cond_12

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 304
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/common/model/Station;->setNextTrackId(Ljava/lang/String;)V

    .line 309
    :goto_3
    if-eqz v2, :cond_e

    .line 310
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 311
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->addTrackToDB(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 322
    :cond_e
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->addTrackToDB(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 324
    if-eqz v1, :cond_f

    .line 325
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 326
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->addTrackToDB(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 337
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v7, :cond_10

    .line 338
    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    invoke-interface {v7, v2, v5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadCompleted(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 340
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 298
    :cond_11
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setPrevTrack(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 306
    :cond_12
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setNextTrack(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 15
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

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getTrack()Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;

    move-result-object v14

    .line 69
    .local v14, "requestInfo":Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;
    if-eqz v14, :cond_1

    .line 70
    iget-object v3, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->stationType:Ljava/lang/String;

    .line 71
    .local v3, "stationType":Ljava/lang/String;
    const-string v0, "03"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v3, "03"

    .line 74
    :cond_0
    const-string v0, "RadioSongRequestWorker"

    const-string v1, "doWorkInternal >> request song request"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->mReqId:I

    iget-object v4, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->stationId:Ljava/lang/String;

    iget-object v5, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->trackId:Ljava/lang/String;

    iget-object v6, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->bitrate:Ljava/lang/String;

    iget-object v7, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->codec:Ljava/lang/String;

    iget-object v8, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->sequence:Ljava/lang/String;

    iget-object v9, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->isFirstPlay:Ljava/lang/String;

    const-string v10, ""

    iget-object v11, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->aiType:Ljava/lang/String;

    iget-object v12, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->finetune:Ljava/lang/String;

    iget-object v13, v14, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->fineTuneBoost:Ljava/lang/String;

    .line 76
    invoke-interface/range {v0 .. v13}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->songV3(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v4, 0x3

    .line 79
    invoke-virtual {v0, v4, v5}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v2

    .line 83
    .end local v3    # "stationType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 81
    :cond_1
    const-string v0, "RadioSongRequestWorker"

    const-string v1, "doWorkInternal >> requestInfo is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "RadioSongRequestWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 34
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/TrackListInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/TrackListInfo;I)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/TrackListInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 95
    sparse-switch p2, :sswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 99
    :sswitch_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->songResponse(ILjava/lang/Object;I)V

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 34
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/TrackListInfo;I)V

    return-void
.end method

.method protected songResponse(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "responseType"    # I
    .param p2, "successResult"    # Ljava/lang/Object;
    .param p3, "errorCode"    # I

    .prologue
    .line 105
    if-nez p1, :cond_1

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    .end local p2    # "successResult":Ljava/lang/Object;
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->handleTrackList(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackListInfo;)Z

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local p2    # "successResult":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "songResponse >> errorCode - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "errorMsg":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 143
    .end local p2    # "successResult":Ljava/lang/Object;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    invoke-interface {v3, v4, p3, v0}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 112
    .restart local p2    # "successResult":Ljava/lang/Object;
    :pswitch_0
    instance-of v3, p2, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    .end local p2    # "successResult":Ljava/lang/Object;
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->handleTrackList(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackListInfo;)Z

    move-result v1

    .line 114
    .local v1, "handled":Z
    if-eqz v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    .line 117
    invoke-interface {v3, v4, p3, v0}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v1    # "handled":Z
    .restart local p2    # "successResult":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "songResponse >> instance are not track list"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    .line 124
    invoke-interface {v3, v4, p3, v0}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_1
    instance-of v3, p2, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    if-eqz v3, :cond_2

    .line 131
    check-cast p2, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    .end local p2    # "successResult":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    .local v2, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 133
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getCurrentTrackTitle(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 148
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v2    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    .restart local p2    # "successResult":Ljava/lang/Object;
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SongResponse >> CANCEL"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->radioTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->stationId:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, p3, v5}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
