.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;
.super Landroid/os/Handler;
.source "MultiPlayerCommandCallbackHandler.java"


# static fields
.field private static final DEFAULT_GAP_REQUEST:I = 0x64

.field private static final HALF_SECOND:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final MAX_GAP_REQUEST:I = 0x3e8

.field private static final MSG_CHANGE_DEFAULT_PLAYER:I = 0xe

.field private static final MSG_CHANGE_DMR_PLAYER:I = 0xf

.field private static final MSG_DRM_REQUEST:I = 0xc

.field private static final MSG_EXTRA_DATA_CHANGED:I = 0xb

.field private static final MSG_INTERNAL_PLAYER_CHANGED:I = 0x4

.field private static final MSG_INTERNAL_PLAYER_STATE_CHANGED:I = 0x5

.field private static final MSG_MEDIA_ERROR:I = 0xa

.field private static final MSG_PLAYER_BUFFERING:I = 0x3

.field private static final MSG_PLAY_SPEED_CHANGED:I = 0x11

.field private static final MSG_PREPARED:I = 0x8

.field private static final MSG_RESET_SET_DATA_COUNT:I = 0x12

.field private static final MSG_SEEK_COMPLETE:I = 0x6

.field private static final MSG_SERVER_DIED:I = 0x9

.field private static final MSG_SET_DATA:I = 0x1

.field private static final MSG_SET_DATA_PENDING:I = 0x2

.field private static final MSG_SET_NEXT_DATA:I = 0xd

.field private static final MSG_SOUND_PATH_CHANGED:I = 0x10

.field private static final MSG_TRACK_ENDED:I = 0x7

.field private static final SET_DATA_COUNT_RESET_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final TIME_OUT_COUNT:I = 0x3

.field private static final WAITING_TIME:I = 0x1f4


# instance fields
.field private mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHasNewRequest:Z

.field private mIsQuit:Z

.field private final mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

.field private mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final mOnPlayerStateChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCount:I

.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mSetMetaRequestCount:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 2
    .param p1, "l"    # Landroid/os/Looper;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mIsQuit:Z

    .line 113
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    .line 181
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 185
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 346
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 117
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 118
    return-void
.end method

.method private checkNeedToNotifyPlayStateListener()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasDmrPendingMessages()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreparing()Z
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPreparing()Z

    move-result v0

    .line 485
    .local v0, "isPending":Z
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isBuffering()Z

    move-result v1

    or-int/2addr v0, v1

    .line 488
    :cond_0
    return v0
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "SMUSIC-SV-Player"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private reserveResetMetaCount()V
    .locals 4

    .prologue
    .line 149
    const/16 v0, 0x12

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 150
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    .line 151
    return-void
.end method

.method private setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 3
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 374
    const-string v0, "SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SET_DATA next content is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 380
    return-void
.end method

.method private updateMusicPlaybackState()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackState(I)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 353
    return-void
.end method

.method private updateMusicPlaybackState(I)V
    .locals 4
    .param p1, "playbackState"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlayerState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPosition(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getSoundPathType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSoundPath(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlayerType(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setDuration(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 367
    return-void
.end method

.method private updateMusicPlaybackStateAsPause()V
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackState(I)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 358
    return-void
.end method


# virtual methods
.method addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method changeToDefaultPlayer(Z)V
    .locals 2
    .param p1, "autoPlay"    # Z

    .prologue
    .line 162
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method changeToDmrPlayer(Ljava/lang/String;)V
    .locals 1
    .param p1, "dmrId"    # Ljava/lang/String;

    .prologue
    .line 166
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 191
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    goto :goto_0

    .line 196
    :pswitch_1
    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 197
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    .line 198
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->cancel()V

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    .line 202
    :cond_1
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;)V

    invoke-direct {v4, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;)V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    .line 210
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isPreparing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 217
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPendingCount:I

    .line 218
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 221
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 223
    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0

    .line 230
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->internalChangeToDefaultPlayer(Z)V

    goto :goto_0

    .line 233
    :pswitch_5
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->internalChangeToDmrPlayer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 238
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onTrackEnded(Z)V

    goto :goto_1

    .line 243
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 245
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onServerDied()V

    goto :goto_2

    .line 250
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 252
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onError(IILandroid/os/Bundle;)V

    goto :goto_3

    .line 257
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 259
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onExtraDataChanged(Landroid/os/Bundle;)V

    goto :goto_4

    .line 264
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 266
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_5

    .line 271
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :pswitch_b
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto/16 :goto_0

    .line 276
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto/16 :goto_0

    .line 281
    :pswitch_d
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto/16 :goto_0

    .line 286
    :pswitch_e
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSoundPath(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 289
    .local v2, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 290
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_6

    .line 295
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    .end local v2    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :pswitch_f
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    goto/16 :goto_0

    .line 300
    :pswitch_10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mMusicPlaybackStateBuilder:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    .line 303
    .restart local v2    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 304
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_7

    .line 309
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    .end local v2    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :pswitch_11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->checkNeedToNotifyPlayStateListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 311
    .restart local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    goto :goto_8

    .line 313
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :cond_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 314
    .local v1, "requestPlay":Z
    if-eqz v1, :cond_0

    .line 315
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_11
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_10
        :pswitch_0
    .end packed-switch
.end method

.method hasPendingData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 430
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mCurrentMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;

    .line 431
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isGoingToServerDied()Z
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method isGoingToTrackEnd()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method isQuit()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mIsQuit:Z

    return v0
.end method

.method notifyPlaybackState()V
    .locals 4

    .prologue
    .line 329
    const-string v2, "notifyPlaybackState"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackState()V

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 332
    .local v1, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 333
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 335
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :cond_0
    return-void
.end method

.method notifyPlaybackStateAsPause()V
    .locals 4

    .prologue
    .line 338
    const-string v2, "notifyPlaybackStateAsPause"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->printInfoLog(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->updateMusicPlaybackStateAsPause()V

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 341
    .local v1, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 342
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 344
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    :cond_0
    return-void
.end method

.method public onBuffering(Z)V
    .locals 3
    .param p1, "isBuffering"    # Z

    .prologue
    .line 443
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasDmrPendingMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "SV-Player"

    const-string v2, "onBuffering(), do not send MSG_PLAYER_BUFFERING before handle pending data."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 450
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 451
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDrmRequest(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 439
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    return-void
.end method

.method public onError(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "There are a new request thus ignore current error."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendErrorMsg(IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onExtraDataChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 416
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    return-void
.end method

.method public onPlaySpeedChanged(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 435
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessage(I)Z

    .line 436
    return-void
.end method

.method public onPlayerChanged()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessage(I)Z

    .line 457
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 3
    .param p1, "playerState"    # I

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasDmrPendingMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "SV-Player"

    const-string v2, "onPlayerStateChanged(), do not send MSG_INTERNAL_PLAYER_STATE_CHANGED before handle pending data."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    const/4 p1, 0x6

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 472
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 473
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Z)V
    .locals 3
    .param p1, "needToPlay"    # Z

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasDmrPendingMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "SV-Player"

    const-string v2, "onPrepared(), do not send MSG_PREPARED before handle pending data."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onServerDied()V
    .locals 4

    .prologue
    .line 402
    const/16 v0, 0x9

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    return-void
.end method

.method public onSoundPathChanged(I)V
    .locals 2
    .param p1, "soundPath"    # I

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 478
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 479
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 480
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method

.method public onTrackEnded(Z)V
    .locals 2
    .param p1, "isGaplessPlaying"    # Z

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 397
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    return-void
.end method

.method quit()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mIsQuit:Z

    .line 146
    return-void
.end method

.method removeAllCommand()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mOnPlayerStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method sendErrorMsg(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 422
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 423
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 424
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 425
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method

.method setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 3
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    const/4 v1, 0x1

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mHasNewRequest:Z

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeAllCommand()V

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->reserveResetMetaCount()V

    .line 157
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mSetMetaRequestCount:I

    mul-int/lit8 v0, v0, 0x64

    const/16 v1, 0x3e8

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 157
    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    return-void

    .line 158
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V
    .locals 4
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .param p2, "delay"    # I

    .prologue
    const/16 v1, 0xd

    .line 172
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeMessages(I)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 177
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
