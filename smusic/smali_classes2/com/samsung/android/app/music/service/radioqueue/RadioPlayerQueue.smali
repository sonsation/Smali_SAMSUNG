.class public final Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
.super Ljava/lang/Object;
.source "RadioPlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "radio"

.field private static final CURRENT_POSITION:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-RadioQueue"

.field private static final MY_QUEUE_TYPE:I = 0x1

.field private static final QUEUE_ITEM_ID:I = 0x1

.field private static final SCHEME:Ljava/lang/String; = "queue"

.field private static final TAG:Ljava/lang/String; = "SV-RadioQueue"

.field private static final THREAD_NAME_RADIO_QUEUE:Ljava/lang/String; = "smusic_radio_queue"


# instance fields
.field private final mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

.field private final mMediaChangeCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

.field private final mMessageCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

.field private final mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

.field private final mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private final mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playerSettingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    .line 74
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    .line 93
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;-><init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMediaChangeCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "smusic_radio_queue"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 109
    .local v0, "l":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    .line 110
    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 111
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMediaChangeCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->setMediaChangeCallback(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushQueueChangedReason(I)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    const-string v2, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushIntExtras(Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->internalReloadQueue()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->internalMoveTo(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->internalSetPosition(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->notifyMetaChanged(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->executeNextPlayingItem()V

    return-void
.end method

.method private composeQueue(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 19
    .param p2, "playingItem"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 272
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v18

    .line 273
    .local v18, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v2, "android.media.metadata.TITLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "title":Ljava/lang/String;
    const-string v2, "android.media.metadata.ARTIST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "artist":Ljava/lang/String;
    const-string v2, "android.media.metadata.ALBUM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, "album":Ljava/lang/String;
    const-string v2, "android.media.metadata.GENRE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "genre":Ljava/lang/String;
    const-string v2, "android.media.metadata.DURATION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 278
    .local v10, "duration":J
    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 279
    .local v12, "albumId":J
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v15, v2

    .line 280
    .local v15, "cpAttrs":I
    const-string v2, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 282
    .local v16, "soundQualityData":J
    const-wide/16 v2, 0x1

    .line 283
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    const/4 v14, 0x0

    invoke-static/range {v2 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->obtainItem(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZIJ)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v2

    .line 282
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method private executeNextPlayingItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 250
    .local v0, "nextItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v2, v4, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 257
    .end local v0    # "nextItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_1
    :goto_0
    return-void

    .line 253
    .restart local v0    # "nextItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getRadioTemporaryUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, "nextUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0
.end method

.method private getRadioTemporaryUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "mediaId"    # J

    .prologue
    .line 260
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "PATH":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "queue"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "radio"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private internalMoveTo(IZ)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->processMoveTo(I)Z

    move-result v0

    .line 215
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->notifyMetaChanged(IZ)V

    .line 219
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method private internalReloadQueue()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->processReloadRadioQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getActiveQueueType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->notifyMetaChanged(IZ)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->reloadMeta()V

    goto :goto_0
.end method

.method private internalRemoveAll()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "SV-RadioQueue"

    const-string v1, "internalRemoveAll"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->processRemoveAll()V

    .line 237
    return-void
.end method

.method private internalSetPosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 222
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 223
    const-string v0, "SMUSIC-SV-RadioQueue"

    const-string v1, "internalSetPosition ignore this request. It is exceed play list length."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->reloadQueue(Z)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->internalMoveTo(IZ)V

    goto :goto_0
.end method

.method private notifyMetaChanged(IZ)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 242
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 243
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->notifyQueueComposed(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 245
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_0
    return-void
.end method

.method private notifyQueueComposed(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 3
    .param p1, "playingItem"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->composeQueue(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    .line 267
    return-void
.end method


# virtual methods
.method public disableMode()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Meta title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public enableMode()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public enqueue(Ljava/util/List;IZI)V
    .locals 0
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "increasingPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "qItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public enqueue([JIZI)V
    .locals 0
    .param p1, "list"    # [J
    .param p2, "action"    # I
    .param p3, "doChange"    # Z
    .param p4, "increasingPosition"    # I

    .prologue
    .line 167
    return-void
.end method

.method public getCurAudioId()J
    .locals 2

    .prologue
    .line 365
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 352
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getRadioTemporaryUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtraInformation(I)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_0

    .line 449
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 447
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mExtras:Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 402
    const/4 v0, -0x1

    return v0
.end method

.method public getNowPlayingListPosition()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getPlayingItem(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    return-object v0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->getQueueItem(I)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->composeQueue(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getSortMode()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public getUnionMode()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getUriType()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x2

    return v0
.end method

.method public loadSavedValues(Z)V
    .locals 0
    .param p1, "syncRequest"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public movePosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x4

    .line 289
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    .line 291
    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    return-void
.end method

.method public moveQueueItem(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 309
    return-void
.end method

.method public moveToNext(ZZ)V
    .locals 5
    .param p1, "ignoreRepeatOne"    # Z
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    const/4 v4, 0x2

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->isSkippable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const-string v1, "SMUSIC-SV-RadioQueue"

    const-string v2, "moveToNext() but RadioOnPlayerQueue doesn\'t have next item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v1, "SMUSIC-SV-RadioQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToNext ignoreRepeatOne: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isGaplessPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 184
    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 183
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public moveToPrev()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->isSkippable(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, "SMUSIC-SV-RadioQueue"

    const-string v2, "moveToPrev() but RadioOnPlayerQueue doesn\'t have prev item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "SMUSIC-SV-RadioQueue"

    const-string v2, "moveToPrev"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    const/16 v2, 0xc

    const/4 v3, 0x3

    .line 197
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public moveToQueueItem(JI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "direction"    # I

    .prologue
    .line 298
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->notifyMetaChanged(IZ)V

    .line 301
    :cond_0
    return-void
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 429
    packed-switch p1, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 431
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 432
    .local v0, "isOn":Z
    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->internalRemoveAll()V

    goto :goto_0

    .line 435
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->reloadQueue(Z)V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mRadioStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->release()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 123
    :cond_0
    return-void
.end method

.method public reloadAudioIds()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public reloadMeta()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 153
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->notifyQueueComposed(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    .line 156
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    :cond_0
    return-void
.end method

.method public reloadQueue(Z)V
    .locals 3
    .param p1, "syncRequest"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x9

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->internalReloadQueue()V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mMessageHandler:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public removeTracks([J)V
    .locals 0
    .param p1, "ids"    # [J

    .prologue
    .line 305
    return-void
.end method

.method public removeTracksPositions([I)V
    .locals 0
    .param p1, "position"    # [I

    .prologue
    .line 313
    return-void
.end method

.method public setList(ILjava/lang/String;[JLjava/util/List;I)V
    .locals 0
    .param p1, "uriType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "list"    # [J
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public setMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 398
    return-void
.end method

.method public setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
    .locals 0
    .param p1, "queueChangedListener"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .line 128
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 389
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 0
    .param p1, "shuffleMode"    # I

    .prologue
    .line 380
    return-void
.end method

.method public setSortMode(I)V
    .locals 0
    .param p1, "sortMode"    # I

    .prologue
    .line 425
    return-void
.end method

.method public toggleMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 407
    const/4 v0, -0x1

    return v0
.end method
