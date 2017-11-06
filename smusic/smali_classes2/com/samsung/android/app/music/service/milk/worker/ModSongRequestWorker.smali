.class public Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "ModSongRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;
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
.field private static final CURRENT:I = 0x2

.field private static final EMPTY:I = 0x0

.field private static final INVALID_TRACK:Ljava/lang/String; = "Invalid Track"

.field private static final LOG_TAG:Ljava/lang/String; = "ModSongRequestWorker"

.field private static final NEXT:I = 0x1

.field private static final PREVIOUS:I = 0x4


# instance fields
.field private audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

.field private currentTrackId:Ljava/lang/String;

.field protected modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

.field private nextTrackId:Ljava/lang/String;

.field private prevTrackId:Ljava/lang/String;

.field private requestTracks:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "prevTrackId"    # Ljava/lang/String;
    .param p5, "currentTrackId"    # Ljava/lang/String;
    .param p6, "nextTrackId"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;
    .param p8, "aq"    # I
    .param p9, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 54
    const/16 v4, 0x2711

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->requestTracks:I

    .line 56
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->prevTrackId:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->currentTrackId:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->nextTrackId:Ljava/lang/String;

    .line 59
    invoke-static {p8}, Lcom/samsung/android/app/music/common/model/AudioQuality;->createAudioQuality(I)Lcom/samsung/android/app/music/common/model/AudioQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    .line 60
    if-eqz p4, :cond_0

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    if-eqz p5, :cond_1

    const/4 v0, 0x2

    :goto_1
    or-int/2addr v1, v0

    if-eqz p6, :cond_2

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->requestTracks:I

    .line 62
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private addTrackToDB(Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 3
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v1, "Invalid Track"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/provider/dao/MilkTrackDAO;->deleteTrack(Ljava/lang/String;)I

    .line 236
    const-string v1, "ModSongRequestWorker"

    const-string v2, "addTrackToDB >> Invalid track. so delete track"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 241
    const-string v1, "ModSongRequestWorker"

    const-string v2, "addTrackToDB >> Expire Time is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/common/model/Track;->setSettlementExt(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 246
    .local v0, "value":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;->getContentUriForFullTrack()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private getTracks()Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->prevTrackId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->currentTrackId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->nextTrackId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "ModSongRequestWorker"

    const-string v3, "getTracks >> track id given"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 173
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;-><init>(Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$1;)V

    .line 165
    .local v0, "requestInfo":Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;
    const-string v1, "ModSongRequestWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTracks >> prevTrack id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->prevTrackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentTrack id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->currentTrackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nextTrack id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->nextTrackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: get modSong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AudioQuality;->getBitrate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->bitrate:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->audioQuality:Lcom/samsung/android/app/music/common/model/AudioQuality;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/AudioQuality;->getCodec()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->codec:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->prevTrackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->prevTrackId:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->currentTrackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->currentTrackId:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->nextTrackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->nextTrackId:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleTrackList(Lcom/samsung/android/app/music/common/model/TrackListInfo;)Z
    .locals 12
    .param p1, "info"    # Lcom/samsung/android/app/music/common/model/TrackListInfo;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_2

    .line 178
    :cond_0
    const-string v8, "ModSongRequestWorker"

    const-string v9, "handleTrackList >> successResult is NULL"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v8, :cond_1

    .line 180
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const-string v9, ""

    invoke-interface {v8, v11, v10, v9}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    :cond_1
    :goto_0
    return v7

    .line 185
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    .line 186
    .local v4, "trackData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 187
    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v9, :cond_3

    .line 188
    const-string v8, "ModSongRequestWorker"

    const-string v9, "handleTrackList >> trackData size is 0 or bigger than 3"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const-string v9, ""

    invoke-interface {v8, v11, v10, v9}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v6, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    const/4 v3, 0x0

    .local v3, "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v0, 0x0

    .local v0, "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v2, 0x0

    .line 196
    .local v2, "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v1, 0x0

    .line 197
    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v1, :cond_4

    iget v9, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->requestTracks:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 198
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v3, Lcom/samsung/android/app/music/common/model/Track;

    .line 199
    .restart local v3    # "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    const-string v9, "MOD"

    invoke-virtual {v3, v9}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 200
    const-string v9, "ModSongRequestWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleTrackList >> prev - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 203
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v1, :cond_5

    iget v9, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->requestTracks:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 204
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v0, Lcom/samsung/android/app/music/common/model/Track;

    .line 205
    .restart local v0    # "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    const-string v9, "MOD"

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 206
    const-string v9, "ModSongRequestWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleTrackList >> current - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 209
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v1, :cond_6

    iget v9, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->requestTracks:I

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_6

    .line 210
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    check-cast v2, Lcom/samsung/android/app/music/common/model/Track;

    .line 211
    .restart local v2    # "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    const-string v9, "MOD"

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/music/common/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 212
    const-string v9, "ModSongRequestWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleTrackList >> next - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->addTrackToDB(Lcom/samsung/android/app/music/common/model/Track;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->addTrackToDB(Lcom/samsung/android/app/music/common/model/Track;)V

    .line 217
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->addTrackToDB(Lcom/samsung/android/app/music/common/model/Track;)V

    .line 219
    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v9, :cond_7

    .line 220
    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    invoke-interface {v9, v3, v0, v2}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadCompleted(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 224
    :cond_7
    new-instance v5, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    invoke-direct {v5, v3, v0, v2}, Lcom/samsung/android/app/music/common/model/TrackListInfo;-><init>(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 225
    .local v5, "trackInfo":Lcom/samsung/android/app/music/common/model/TrackListInfo;
    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v5, v9}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    move v7, v8

    .line 226
    goto/16 :goto_0
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

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->getTracks()Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;

    move-result-object v8

    .line 68
    .local v8, "requestInfo":Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;
    if-eqz v8, :cond_0

    .line 69
    const-string v0, "ModSongRequestWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSongToServer >> Station id: MOD, request Id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->mReqId:I

    iget-object v3, v8, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->bitrate:Ljava/lang/String;

    iget-object v4, v8, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->codec:Ljava/lang/String;

    iget-object v5, v8, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->prevTrackId:Ljava/lang/String;

    iget-object v6, v8, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->currentTrackId:Ljava/lang/String;

    iget-object v7, v8, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->nextTrackId:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->modSong(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 73
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v2

    .line 75
    :cond_0
    return-object v2
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "ModSongRequestWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/TrackListInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/TrackListInfo;I)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/TrackListInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 86
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 87
    packed-switch p2, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 89
    :pswitch_0
    if-nez p3, :cond_1

    .line 90
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->handleTrackList(Lcom/samsung/android/app/music/common/model/TrackListInfo;)Z

    .line 152
    :cond_0
    :goto_1
    const-string v4, "ModSongRequestWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "songResponse >> Request is removed, request Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    if-ne p3, v6, :cond_2

    .line 92
    const-string v4, "ModSongRequestWorker"

    const-string/jumbo v5, "songResponse >> instance are FailureResponse"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "ModSongRequestWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "songResponse >> errorCode - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "errorMsg":Ljava/lang/String;
    packed-switch p5, :pswitch_data_1

    .line 116
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    invoke-interface {v4, v7, p5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_1
    const-string v4, "ModSongRequestWorker"

    const-string/jumbo v5, "songResponse >> instance are not track list"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    invoke-interface {v4, v7, p5, v1}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_2
    if-ne p3, v5, :cond_3

    .line 122
    const-string v4, "ModSongRequestWorker"

    const-string v5, "SongResponse >> CANCEL"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    if-eqz v4, :cond_0

    .line 125
    if-eqz p4, :cond_7

    .line 126
    move-object v2, p4

    .line 127
    .local v2, "info":Lcom/samsung/android/app/music/common/model/TrackListInfo;
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    .line 129
    .local v3, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, "bHandleTrackList":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v6, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 131
    :cond_4
    const-string v5, "Invalid Track"

    const/4 v4, 0x0

    .line 132
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 133
    const/4 v0, 0x1

    .line 142
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->handleTrackList(Lcom/samsung/android/app/music/common/model/TrackListInfo;)Z

    goto/16 :goto_1

    .line 136
    :cond_6
    const-string v5, "Invalid Track"

    .line 137
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    const/4 v0, 0x1

    goto :goto_2

    .line 147
    .end local v0    # "bHandleTrackList":Z
    .end local v2    # "info":Lcom/samsung/android/app/music/common/model/TrackListInfo;
    .end local v3    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->modTrackLoaderCallback:Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;

    const-string v5, ""

    invoke-interface {v4, v7, p5, v5}, Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;->onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x138a
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/TrackListInfo;I)V

    return-void
.end method
