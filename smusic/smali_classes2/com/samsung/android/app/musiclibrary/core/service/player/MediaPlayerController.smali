.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
.super Ljava/lang/Object;
.source "MediaPlayerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PLAY_SPEED:F = 1.0f

.field private static final FEATURE_SET_NEXT_PLAYER:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"

.field private static final TIMING_OF_SET_NEXT_MEDIA:J = 0x3a98L

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mAudioSession:I

.field private mBeforeInitSpeedVolume:Z

.field private mBufferPercent:I

.field private mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDuringComplete:Z

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mIsBuffering:Z

.field private mIsOpenSession:Z

.field private mIsSupposedToBePlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

.field private mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

.field private mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

.field private final mNextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

.field private mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private mPlaybackState:I

.field private mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private mPlayerState:I

.field private mPreviousGenre:Ljava/lang/String;

.field private mRestorePlaySpeed:Z

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSeekPosition:J

.field private final mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

.field private mSpeed:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportNext()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->FEATURE_SET_NEXT_PLAYER:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$1;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    .line 102
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 132
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    .line 134
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 136
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBufferPercent:I

    .line 138
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    .line 140
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSpeed:F

    .line 142
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBeforeInitSpeedVolume:Z

    .line 144
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsOpenSession:Z

    .line 146
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    .line 148
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsBuffering:Z

    .line 155
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mRestorePlaySpeed:Z

    .line 565
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    .line 931
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    .line 1071
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mDuringComplete:Z

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    .line 163
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 164
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportSkipSilence(Landroid/content/Context;)Z

    move-result v0

    .line 168
    .local v0, "isSupportSkipSilence":Z
    if-eqz v0, :cond_1

    .line 169
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_FW_SKIP_SILENCE:Z

    if-eqz v2, :cond_0

    .line 170
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    invoke-direct {v2, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    goto :goto_0

    .line 176
    :cond_1
    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setInternalNextPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBufferPercent:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBufferPercent:I

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsBuffering:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyBufferingStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->releaseMediaPlayer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->createMediaPlayer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->handleExtraErrors(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-object v0
.end method

.method private addToCloseWorker(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->ensureCloseWorker()V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->addWork(Landroid/media/MediaPlayer;)V

    .line 339
    return-void
.end method

.method private adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->cancelScheduleOfSetNextMedia()V

    .line 517
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-eqz v1, :cond_0

    .line 524
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->computeTimingOfSetNextMedia(Landroid/media/MediaPlayer;)J

    move-result-wide v2

    .line 525
    .local v2, "nextScheduleTime":J
    const-string v1, "SMUSIC-SV-PlayerMedia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustTimingOfSetNextMedia "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 527
    .end local v2    # "nextScheduleTime":J
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v4, "adjustTimingOfSetNextMedia but mp is in illegal state"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v4, "adjustTimingOfSetNextMedia but task is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelNextMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->cancel()V

    .line 556
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    .line 562
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 563
    return-void
.end method

.method private cancelScheduleOfSetNextMedia()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 538
    :cond_0
    return-void
.end method

.method private computeTimingOfSetNextMedia(Landroid/media/MediaPlayer;)J
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 547
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 549
    .local v0, "duration":J
    const-wide/16 v4, 0x3a98

    sub-long v2, v0, v4

    .line 550
    .local v2, "targetTime":J
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v2, v4

    long-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v5

    div-float/2addr v4, v5

    float-to-long v4, v4

    return-wide v4
.end method

.method private createMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 187
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    .line 193
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    goto :goto_0
.end method

.method private static debugIOException(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    const/4 v10, 0x0

    .line 427
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 428
    .local v9, "path":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 446
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "id":Ljava/lang/String;
    const/4 v8, 0x0

    .line 433
    .local v8, "mediaProviderPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 434
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 433
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 438
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    if-nez v1, :cond_4

    .line 442
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v10, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    :cond_2
    :goto_1
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugIOException sourceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " music provider\'s path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " media provider\'s path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 443
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    const-string v1, "SMUSIC-SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugIOException sourceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " music provider\'s path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " media provider\'s path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 442
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 441
    :cond_4
    :try_start_5
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    .line 442
    if-eqz v6, :cond_5

    if-eqz v10, :cond_6

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 443
    :cond_5
    :goto_2
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugIOException sourceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " music provider\'s path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " media provider\'s path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :catch_1
    move-exception v1

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 433
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 442
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v1, :cond_8

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :goto_4
    :try_start_a
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v10

    goto :goto_3
.end method

.method private ensureCloseWorker()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 210
    :cond_1
    return-void
.end method

.method private getCurrentSongGenre()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 909
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 910
    .local v0, "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-nez v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-object v2

    .line 913
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 914
    .local v1, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    if-eqz v1, :cond_0

    .line 917
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    const-string v3, "android.media.metadata.GENRE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    monitor-exit p0

    return-object v0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPlaySpeed(F)F
    .locals 1
    .param p1, "playSpeed"    # F

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportPlaySpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    .end local p1    # "playSpeed":F
    :goto_0
    return p1

    .restart local p1    # "playSpeed":F
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private handleExtraErrors(II)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "result":Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 954
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(Z)V

    .line 955
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onError(II)Z

    move-result v0

    .line 958
    :cond_0
    return v0
.end method

.method private static isSupportNext()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 95
    .local v2, "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 82
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->PRODUCT_NAME:Ljava/lang/String;

    .line 83
    .restart local v2    # "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    const-string v5, "noble"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "zen"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v0, v3

    .line 87
    .local v0, "disableProduct":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 88
    const-string v5, "ktt"

    .line 89
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "skt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "lgt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "kx"

    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    move v1, v3

    .line 91
    .local v1, "isKorea":Z
    :goto_2
    if-eqz v1, :cond_0

    move v3, v4

    .line 92
    goto :goto_0

    .end local v0    # "disableProduct":Z
    .end local v1    # "isKorea":Z
    :cond_4
    move v0, v4

    .line 86
    goto :goto_1

    .restart local v0    # "disableProduct":Z
    :cond_5
    move v1, v4

    .line 90
    goto :goto_2
.end method

.method private static isSupportSkipSilence(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$bool;->music_core_support_skip_silence:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private notifyAudioEffect(ZZ)V
    .locals 4
    .param p1, "openSession"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSongGenre()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "genre":Ljava/lang/String;
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsOpenSession:Z

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPreviousGenre:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPreviousGenre:Ljava/lang/String;

    .line 897
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    :goto_0
    return-void

    .line 900
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPreviousGenre:Ljava/lang/String;

    .line 901
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsOpenSession:Z

    .line 903
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsOpenSession:Z

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    .line 904
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->notifyAudioEffectWithSession(Landroid/content/Context;ZILjava/lang/String;)V

    .line 905
    const-string v1, "SMUSIC-SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAudioEffect() openSession ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyBufferingStateChanged(Z)V
    .locals 1
    .param p1, "isBuffering"    # Z

    .prologue
    .line 926
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onBuffering(Z)V

    .line 929
    :cond_0
    return-void
.end method

.method private notifyPlayerStateChanged(Z)V
    .locals 1
    .param p1, "play"    # Z

    .prologue
    .line 947
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 948
    return-void
.end method

.method private notifyPlayerStateChanged(ZI)V
    .locals 1
    .param p1, "play"    # Z
    .param p2, "state"    # I

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    if-ne v0, p2, :cond_0

    .line 944
    :goto_0
    return-void

    .line 938
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    .line 939
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    .line 940
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method private registerListeners(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 885
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 891
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 892
    return-void
.end method

.method private declared-synchronized releaseMediaPlayer()V
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "releaseMediaPlayer() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseNextMediaPlayer()V
    .locals 2

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v0, :cond_0

    .line 878
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "releaseNextMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->release()V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    :cond_0
    monitor-exit p0

    return-void

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reopenAudioEffect()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 921
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 922
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 923
    return-void
.end method

.method private resetCurrentSource()V
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 379
    :cond_0
    monitor-exit p0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCurrentSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->resetCurrentSource()V

    .line 385
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCurrentSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 386
    monitor-exit p0

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 7
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    const/4 v5, 0x3

    :try_start_0
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 453
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->reset(Z)V

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->createMediaPlayer()V

    .line 456
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setCurrentSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 457
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBufferPercent:I

    .line 458
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 459
    .local v2, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 460
    .local v3, "playingUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v5, :cond_0

    .line 461
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v1, "data":Landroid/os/Bundle;
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "currentFilePath":Ljava/lang/String;
    const-string v5, "current_file_path"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    const/4 v6, 0x3

    .line 465
    invoke-interface {v5, v6, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 469
    .end local v0    # "currentFilePath":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 470
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 479
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->registerListeners(Landroid/media/MediaPlayer;)V

    .line 480
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    .end local v2    # "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .end local v3    # "playingUri":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private setInternalNextPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 587
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 588
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "Current media player is absent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_0
    return-void

    .line 591
    :cond_0
    monitor-enter p0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 593
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "Current media player is absent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    monitor-exit p0

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 597
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->setNextMediaplayer(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 600
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "SMUSIC-SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set next player failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized setMediaVolumeInternal(F)V
    .locals 2
    .param p1, "vol"    # F

    .prologue
    .line 812
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    :cond_0
    monitor-exit p0

    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupSkipSilence()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "current_position"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 246
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v1, "play_speed"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    const/4 v2, 0x4

    .line 249
    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 251
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupposedToBePlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPlaybackState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  buffering percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getBufferingPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  current position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 695
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    if-lt v0, v1, :cond_1

    .line 696
    monitor-enter p0

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    if-lt v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    .line 702
    :goto_0
    return v0

    .line 700
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBufferPercent:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 668
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 669
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    .line 684
    :goto_0
    return-wide v0

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 672
    const-string v2, "SMUSIC-SV-PlayerMedia"

    const-string v3, "getCurrentPosition but Player does not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_1
    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_2

    .line 677
    const-string v2, "SMUSIC-SV-PlayerMedia"

    const-string v3, "getCurrentPosition but Player does not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    monitor-exit p0

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 680
    :cond_2
    const-wide/16 v0, 0x0

    .line 681
    .local v0, "position":J
    :try_start_1
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    .line 682
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    .line 684
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    return-object v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 649
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 650
    const-string v2, "SMUSIC-SV-PlayerMedia"

    const-string v3, "getDuration but Player does not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return-wide v0

    .line 653
    :cond_0
    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 655
    const-string v2, "SMUSIC-SV-PlayerMedia"

    const-string v3, "getDuration but Player does not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    monitor-exit p0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 658
    :cond_1
    const-wide/16 v0, -0x1

    .line 659
    .local v0, "duration":J
    :try_start_1
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 660
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .line 662
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportPlaySpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBeforeInitSpeedVolume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mBeforeInitSpeedVolume:Z

    .line 710
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getPlaySpeed()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSpeed:F

    .line 715
    :goto_0
    return v0

    .line 712
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSpeed:F

    goto :goto_0

    .line 715
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsBuffering:Z

    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPreparing()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .prologue
    .line 853
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 2

    .prologue
    .line 848
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 863
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPlaySpeed()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 783
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v3

    .line 784
    .local v3, "currentSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-nez v3, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v6

    .line 787
    :cond_1
    iget-object v2, v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 789
    .local v2, "currentItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v7

    const-string v8, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 790
    .local v0, "cpAttrs":J
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v7

    const-string v8, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    .line 791
    invoke-virtual {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 792
    .local v4, "soundQualityData":J
    long-to-int v7, v0

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 793
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isSupportPlaySpeed(J)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 255
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause()  mCurrentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 256
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->getFieldsStringValueNameForDebugging(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 260
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "pause but Player does not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 263
    :cond_0
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 265
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "pause but Player does not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit p0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 268
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 279
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    goto :goto_0
.end method

.method public playingCompleted()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1078
    const-string v4, "SV-PlayerMedia"

    const-string v5, "playingCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mDuringComplete:Z

    if-eqz v4, :cond_0

    .line 1080
    const-string v3, "SMUSIC-SV-PlayerMedia"

    const-string v4, "but ignore this, already it is during handling complete."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_0
    return-void

    .line 1083
    :cond_0
    monitor-enter p0

    .line 1084
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mDuringComplete:Z

    .line 1085
    const-string v4, "SV-PlayerMedia"

    const-string v5, "playingCompleted synchronized"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    .line 1093
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1096
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mRestorePlaySpeed:Z

    .line 1097
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v4, :cond_7

    .line 1098
    .local v1, "hasNext":Z
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->resetCurrentSource()V

    .line 1100
    const/4 v2, 0x0

    .line 1101
    .local v2, "prev":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_2

    .line 1102
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1103
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1104
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setCurrentSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 1105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 1106
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .line 1108
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v3, :cond_3

    .line 1109
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onCompletion(Z)V

    .line 1111
    :cond_3
    if-eqz v1, :cond_8

    .line 1112
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v3, :cond_4

    .line 1113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1114
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "play_speed"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1115
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 1117
    if-eqz v2, :cond_4

    .line 1118
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 1122
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setPlaySpeed(F)V

    .line 1124
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->registerListeners(Landroid/media/MediaPlayer;)V

    .line 1125
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 1126
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    if-nez v3, :cond_5

    .line 1132
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 1134
    :cond_5
    const-string v3, "SMUSIC-SV-PlayerMedia"

    const-string v4, "onCompletion and playing gap less"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    if-eqz v2, :cond_6

    .line 1136
    const-string v3, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v4, "releasePreviousMediaPlayer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 1138
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 1139
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1149
    :cond_6
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mDuringComplete:Z

    .line 1150
    monitor-exit p0

    goto/16 :goto_0

    .end local v1    # "hasNext":Z
    .end local v2    # "prev":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_7
    move v1, v3

    .line 1097
    goto/16 :goto_1

    .line 1142
    .restart local v1    # "hasNext":Z
    .restart local v2    # "prev":Landroid/media/MediaPlayer;
    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    instance-of v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    if-eqz v3, :cond_9

    .line 1143
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_9

    .line 1144
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 1147
    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mCloseWorker:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    const/16 v1, 0x8

    .line 348
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->releaseMediaPlayer()V

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->releaseNextMediaPlayer()V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 355
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 357
    :cond_2
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 358
    return-void
.end method

.method public reset(Z)V
    .locals 5
    .param p1, "changeState"    # Z

    .prologue
    const/4 v4, 0x0

    .line 303
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 304
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->getFieldsStringValueNameForDebugging(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eqz p1, :cond_0

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->resetCurrentSource()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    const/4 v1, 0x7

    .line 312
    invoke-interface {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 334
    :goto_0
    return-void

    .line 319
    :cond_2
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 323
    monitor-exit p0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 325
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->addToCloseWorker(Landroid/media/MediaPlayer;)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 329
    if-eqz p1, :cond_4

    .line 330
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    .line 332
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "reset() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "whereto"    # J

    .prologue
    .line 625
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 627
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    .line 644
    :cond_0
    :goto_0
    return-wide p1

    .line 630
    :cond_1
    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onSeekTo(J)V

    .line 637
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 639
    :cond_3
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSeekComplete()V

    goto :goto_0
.end method

.method public setCustomAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 839
    return-void
.end method

.method public setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 7
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    const/4 v6, -0x1

    .line 391
    const-string v1, "SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- setDataSource() -- path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " makeToPlay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAudioSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mIsSupposedToBePlaying:Z

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 396
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->reopenAudioEffect()V

    .line 424
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "MP-setDataSourceAsync:IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, v6, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->handleExtraErrors(II)Z

    .line 401
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->debugIOException(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 402
    :catch_1
    move-exception v1

    goto :goto_0

    .line 406
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 407
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "MP-setDataSourceAsync:IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, v6, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->handleExtraErrors(II)Z

    goto :goto_0

    .line 410
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "MP-setDataSourceAsync:IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, v6, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->handleExtraErrors(II)Z

    goto :goto_0

    .line 414
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "MP-setDataSourceAsync:SecurityException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0, v6, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->handleExtraErrors(II)Z

    goto :goto_0
.end method

.method public setDmrId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dmrId"    # Ljava/lang/String;

    .prologue
    .line 826
    return-void
.end method

.method public setExistNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V
    .locals 2
    .param p1, "nextMediaPlayer"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .prologue
    .line 1154
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1155
    if-nez p1, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public setMediaVolume(F)V
    .locals 2
    .param p1, "vol"    # F

    .prologue
    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 799
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "setMediaVolume but Player does not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    return-void

    .line 802
    :cond_0
    monitor-enter p0

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 804
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "setMediaVolume but Player does not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    monitor-exit p0

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 807
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setMediaVolumeInternal(F)V

    .line 808
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 6
    .param p1, "next"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 488
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->FEATURE_SET_NEXT_PLAYER:Z

    if-nez v1, :cond_0

    .line 489
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "Next player feature is off. Ignore this request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->cancelNextMediaPlayer()V

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 496
    .local v0, "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-eqz v0, :cond_1

    .line 497
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 512
    .end local v0    # "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 500
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    const-wide/16 v4, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 506
    if-eqz p1, :cond_1

    .line 507
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mAudioSession:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextPlayerListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;ILcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mNextMediaTask:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .line 509
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 611
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 6
    .param p1, "speed"    # F

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isSupportPlaySpeed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSpeed:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_0

    .line 721
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSpeed:F

    .line 722
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v3, :cond_0

    .line 723
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSpeedChanged(F)V

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 758
    :goto_0
    return-void

    .line 729
    :cond_1
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    .line 731
    monitor-exit p0

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 733
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    .line 734
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->adjustTimingOfSetNextMedia(Landroid/media/MediaPlayer;)V

    .line 735
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed(F)F

    move-result p1

    .line 736
    const-string v3, "SV-PlayerMedia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPlaySpeed speed value is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 740
    .local v2, "request":Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 743
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_2
    sget v3, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 745
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v3, v2, v1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 749
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mRestorePlaySpeed:Z

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 754
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setupSkipSilence()V

    .line 757
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local v2    # "request":Landroid/os/Parcel;
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 746
    .restart local v1    # "reply":Landroid/os/Parcel;
    .restart local v2    # "request":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v3, "SV-PlayerMedia"

    const-string/jumbo v4, "setPlaySpeed, we might invoke with error state"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 749
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 749
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 2
    .param p1, "playerSettingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 831
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSkipSilence()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onSetSkipSilence(Z)V

    .line 834
    :cond_0
    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 762
    const-string v0, "SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSkipSilences isOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSkipSilenceController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSkipSilenceController:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onSetSkipSilence(Z)V

    .line 767
    :cond_0
    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 620
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mSeekPosition:J

    .line 621
    return-void
.end method

.method public setSupposedToBePlaying(Z)V
    .locals 0
    .param p1, "play"    # Z

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(Z)V

    .line 616
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 214
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "start() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "start but Player does not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 219
    :cond_0
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 221
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "start but Player does not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit p0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlayerState:I

    if-le v0, v2, :cond_4

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "media player is already playing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit p0

    goto :goto_0

    .line 229
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mRestorePlaySpeed:Z

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setPlaySpeed(F)V

    .line 233
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setupSkipSilence()V

    .line 239
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 237
    :cond_4
    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->mPlaybackState:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string/jumbo v1, "stop() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->reset(Z)V

    .line 290
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyAudioEffect(ZZ)V

    .line 292
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->notifyPlayerStateChanged(ZI)V

    .line 293
    return-void
.end method
