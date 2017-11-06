.class final Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;
.super Ljava/lang/Object;
.source "RadioStationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;,
        Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mQueueRequested:Z

.field private final mRadioEventHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

.field private final mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

.field private final mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mQueueRequested:Z

    .line 315
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$1;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    .line 57
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

    invoke-direct {v1, p2, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioEventHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.common.service.prefetch.notify_prefetch_status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioEventHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->onCheckValidAndReload()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->onLoadRadioQueue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->onRemoveAll()V

    return-void
.end method

.method static synthetic access$500()Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    return-object v0
.end method

.method private checkValidAndReloadQueue()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 226
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->hasPlayingItem(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 228
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getStationId(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "stationId":Ljava/lang/String;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "trackId":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStationTrackId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "stationTrackId":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 232
    sget-object v4, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkCurrentItemExist >> Station is removed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->moveFirstGenreStation()V

    .line 243
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .end local v1    # "stationId":Ljava/lang/String;
    .end local v2    # "stationTrackId":Ljava/lang/String;
    .end local v3    # "trackId":Ljava/lang/String;
    :goto_0
    return-void

    .line 234
    .restart local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .restart local v1    # "stationId":Ljava/lang/String;
    .restart local v2    # "stationTrackId":Ljava/lang/String;
    .restart local v3    # "trackId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    sget-object v4, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkCurrentItemExist >> reload new track"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->requestQueueToServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    sget-object v4, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkCurrentItemExist >> no change in current queue."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .end local v1    # "stationId":Ljava/lang/String;
    .end local v2    # "stationTrackId":Ljava/lang/String;
    .end local v3    # "trackId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->moveFirstGenreStation()V

    goto :goto_0
.end method

.method private getAudioType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;
    .locals 3
    .param p1, "playingItem"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 251
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "player_extra_content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 252
    .local v0, "content":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "audio_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getStationId(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;
    .locals 3
    .param p1, "playingItem"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 246
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "player_extra_content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "content":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasPlayingItem(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;

    return v0
.end method

.method private isSame(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 2
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private loadLastSavedStationInfo()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v5, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.common.service.last_station_id"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "stationId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 206
    sget-object v5, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "loadLastSavedStationInfo >> Last station is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return v4

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 210
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v0, :cond_2

    .line 211
    sget-object v4, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "loadLastSavedStationInfo >> station was removed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->moveFirstGenreStation()V

    .line 222
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "stationTrackId":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v3

    .line 216
    .local v3, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->setCurrentPlayingItem(Lcom/samsung/android/app/music/common/model/Track;)V

    .line 217
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->requestRadioQueue(Ljava/lang/String;)V

    .line 218
    if-nez v3, :cond_1

    goto :goto_0
.end method

.method private moveFirstGenreStation()V
    .locals 5

    .prologue
    .line 280
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getFirstGenreStation(Landroid/content/Context;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 281
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v0, :cond_0

    .line 282
    sget-object v2, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "moveFirstGenreStation >> Station db is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    .line 287
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    .line 288
    .local v1, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-nez v1, :cond_1

    .line 289
    sget-object v2, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "moveFirstGenreStation >> Track db is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->setCurrentPlayingItem(Lcom/samsung/android/app/music/common/model/Track;)V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->saveLastStationInfo()V

    .line 294
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->requestRadioQueue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCheckValidAndReload()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->checkValidAndReloadQueue()V

    .line 332
    return-void
.end method

.method private onLoadRadioQueue(Ljava/lang/String;)V
    .locals 0
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->requestQueueToServer(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method private onRemoveAll()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;>;"
    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 342
    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 343
    const/4 v1, 0x2

    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->setPlayingItemList(Ljava/util/List;)V

    .line 345
    return-void
.end method

.method private requestQueueToServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 87
    .local v0, "current":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->requestQueueToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private requestQueueToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 91
    sget-object v7, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestQueueToServer >>  Load Radio queue : stationId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", trackId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    iget-object v10, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {v10}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v10

    const v11, 0x80002

    invoke-interface {v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getListenQuality(I)I

    move-result v10

    .line 93
    invoke-virtual {v7, p1, p2, v10}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->getMilkRadioTracks(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 96
    sget-object v7, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "requestQueueToServer >>  failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-boolean v9, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mQueueRequested:Z

    .line 136
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v7, "extra_prev_track"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/Track;

    .line 102
    .local v6, "prevTrack":Lcom/samsung/android/app/music/common/model/Track;
    const-string v7, "extra_current_track"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Track;

    .line 103
    .local v1, "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    const-string v7, "extra_next_track"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/Track;

    .line 105
    .local v4, "nextTrack":Lcom/samsung/android/app/music/common/model/Track;
    if-nez v1, :cond_1

    .line 106
    sget-object v7, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "requestQueueToServer >> current track is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-boolean v9, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mQueueRequested:Z

    goto :goto_0

    .line 111
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "playingItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;>;"
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v7, v6, v9}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->getInstance(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Track;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    .line 112
    :goto_1
    invoke-interface {v5, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 116
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->isSame(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v8

    .line 117
    .local v3, "isTrackChanged":Z
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v7, v1, v8}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->getInstance(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Track;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    .line 117
    invoke-interface {v5, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v12}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->isSame(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v7

    if-nez v7, :cond_6

    move v2, v8

    .line 121
    .local v2, "isNextTrackChanged":Z
    :goto_3
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {v7, v4, v12}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->getInstance(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Track;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    .line 121
    :goto_4
    invoke-interface {v5, v12, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->setPlayingItemList(Ljava/util/List;)V

    .line 126
    if-eqz v3, :cond_2

    .line 128
    iget-object v7, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.common.service.last_radio_track_id"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v7, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    invoke-interface {v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;->onMetadataChanged()V

    .line 131
    :cond_2
    if-eqz v2, :cond_3

    .line 132
    sget-object v7, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    invoke-interface {v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;->onNextMetadataChanged()V

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->saveLastTracksInfo()V

    .line 135
    iput-boolean v9, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mQueueRequested:Z

    goto/16 :goto_0

    .line 114
    .end local v2    # "isNextTrackChanged":Z
    .end local v3    # "isTrackChanged":Z
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    goto :goto_1

    :cond_5
    move v3, v9

    .line 116
    goto :goto_2

    .restart local v3    # "isTrackChanged":Z
    :cond_6
    move v2, v9

    .line 120
    goto :goto_3

    .line 123
    .restart local v2    # "isNextTrackChanged":Z
    :cond_7
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v7

    goto :goto_4
.end method

.method private requestRadioQueue(Ljava/lang/String;)V
    .locals 1
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mQueueRequested:Z

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioEventHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->requestLoadRadioQueue(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method private saveLastStationInfo()V
    .locals 6

    .prologue
    .line 256
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 257
    .local v1, "current":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getAudioType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "audioType":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getStationId(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "stationId":Ljava/lang/String;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "trackId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.common.service.last_station_id"

    invoke-static {v4, v5, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    if-eqz v3, :cond_1

    .line 265
    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.common.service.last_radio_track_id"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    return-void
.end method

.method private saveLastTracksInfo()V
    .locals 6

    .prologue
    .line 270
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 271
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "trackId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getStationId(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 275
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-static {v2, v3, v1, v4, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->saveStationTracks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method

.method private setCurrentPlayingItem(Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 4
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;>;"
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/samsung/android/app/music/service/metadata/RadioPlayingItem;->getInstance(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Track;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.common.service.last_radio_track_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->setPlayingItemList(Ljava/util/List;)V

    .line 313
    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method getQueueItem(I)Landroid/media/session/MediaSession$QueueItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->getQueueItem(I)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method isSkippable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->hasPlayingItem(I)Z

    move-result v0

    return v0
.end method

.method processMoveTo(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 147
    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mQueueRequested:Z

    if-eqz v3, :cond_1

    .line 148
    sget-object v3, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "already requesting to server"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    const/4 v1, 0x0

    .line 153
    .local v1, "success":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;>;"
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioQueueModel:Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;->setPlayingItemList(Ljava/util/List;)V

    .line 184
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getStationId(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->requestRadioQueue(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->saveLastStationInfo()V

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->isSkippable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v1, 0x1

    goto :goto_2

    .line 164
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->isSkippable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v1, 0x1

    goto :goto_2

    .line 172
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processReloadRadioQueue()Z
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "processReloadRadioQueue >> start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->loadLastSavedStationInfo()Z

    move-result v0

    return v0
.end method

.method processRemoveAll()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mRadioEventHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->requestRemoveAll()V

    .line 193
    return-void
.end method

.method release()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method public setMediaChangeCallback(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    .prologue
    .line 82
    sput-object p1, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    .line 83
    return-void
.end method
