.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$PlayerState;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;
    }
.end annotation


# static fields
.field private static final FADE_UP:I = 0x0

.field private static final FOCUS_CHANGE:I = 0x1

.field private static final MAX_VOLUME:F = 1.0f

.field private static final MEDIA_ERROR_CONNECTION_LOST:I = -0x3ed

.field private static final RESET_REPEAT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBufferPercent:I

.field private final mContext:Landroid/content/Context;

.field private mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private mDrmData:Landroid/os/Bundle;

.field private final mDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

.field private mMaxVolume:F

.field private final mMediaSession:Landroid/media/session/MediaSession;

.field private mMediaSessionCallback:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

.field private mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

.field private mNeedToPlay:Z

.field private final mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

.field private mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

.field private mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private final mPlayerHandler:Landroid/os/Handler;

.field private mPlayerState:I

.field private mRepeatCount:I

.field private mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMaxVolume:F

    .line 89
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mBufferPercent:I

    .line 93
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mRepeatCount:I

    .line 95
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mNeedToPlay:Z

    .line 97
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPausedByTransientLossOfFocus:Z

    .line 99
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    .line 585
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    .line 645
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 122
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->createMediaSession(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    .line 125
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 127
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_BLOCK_PLAYREADY_DRM:Z

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setPlayReadyListener()V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/session/MediaSession;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->play(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->play()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isIdleForwardRewindControlTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->startControlTask(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stopControlTask()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mDrmData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMaxVolume:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mRepeatCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    return v0
.end method

.method private canPlayState()Z
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMediaSession(Landroid/content/Context;)Landroid/media/session/MediaSession;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 184
    new-instance v1, Landroid/media/session/MediaSession;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    .local v1, "mediaSession":Landroid/media/session/MediaSession;
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Landroid/media/session/MediaSession;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSessionCallback:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    .line 186
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSessionCallback:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "exceptMusicController"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 191
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    .line 192
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v4, 0x37f

    invoke-virtual {v2, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 198
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 201
    return-object v1
.end method

.method private getSkippingTime()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 480
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mRepeatCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mRepeatCount:I

    div-int/lit8 v0, v1, 0x2

    .line 481
    .local v0, "index":I
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 482
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 486
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    aget v1, v1, v0

    return v1
.end method

.method private isIdleForwardRewindControlTask()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayableDrm(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 250
    if-nez p1, :cond_1

    .line 254
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v4, "isPlayableDrm() - file path is null, return true"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-virtual {v4, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmInfo(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 258
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, "type":I
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPlayableDrm() - drm type :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz v1, :cond_0

    .line 263
    const/16 v2, 0x18

    if-ne v1, v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 265
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mDrmData:Landroid/os/Bundle;

    .line 268
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v4, "isPlayableDrm() - playReadyDrm, try again"

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 269
    goto :goto_0

    .line 271
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->onShowDrmPopup(Landroid/os/Bundle;)V

    move v2, v3

    .line 272
    goto :goto_0
.end method

.method private play()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->play(Z)V

    .line 319
    return-void
.end method

.method private play(Z)V
    .locals 5
    .param p1, "applyFadeUp"    # Z

    .prologue
    const/4 v4, 0x1

    .line 325
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() - mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", applyFadeUp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_PLAYBACK_DURING_CALL:Z

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "play() - Can\'t play during call."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->onError(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_2

    .line 335
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "play() - Can\'t play because audio focus request is failed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->canPlayState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    if-eqz p1, :cond_3

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 350
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 351
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setPlaybackState(J)V

    .line 355
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setBatteryTemperatureCheck(Z)V

    .line 356
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;->REGIONAL_USA_GATE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "AUDI_PLAYING"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mUri:Landroid/net/Uri;

    .line 359
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/GateMessageUtils;->printMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMaxVolume:F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMaxVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_1

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setDataSource(Landroid/net/Uri;Z)V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 398
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 401
    return-void
.end method

.method private setBatteryTemperatureCheck(Z)V
    .locals 1
    .param p1, "isCheck"    # Z

    .prologue
    .line 490
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_BATTERY_ADC_THRESHOLD:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/BatteryState;->setTemperatureCheck(Z)V

    .line 493
    :cond_0
    return-void
.end method

.method private setPlayReadyListener()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V

    .line 247
    return-void
.end method

.method private setPlaybackState(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 205
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaybackState() - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 207
    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 212
    :cond_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private startControlTask(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isIdleForwardRewindControlTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setDirection(I)V

    goto :goto_0
.end method

.method private stopControlTask()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 473
    :cond_0
    return-void
.end method

.method private updateMediaSessionMeta()V
    .locals 4

    .prologue
    .line 215
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateMediaSessionMeta()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 217
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.TITLE"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 218
    const-string v1, "android.media.metadata.ARTIST"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 219
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 221
    return-void
.end method


# virtual methods
.method public forward()V
    .locals 8

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getDuration()I

    move-result v0

    .line 440
    .local v0, "duration":I
    if-gtz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getSkippingTime()I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 445
    .local v2, "time":J
    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 446
    int-to-long v2, v0

    .line 448
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    goto :goto_0
.end method

.method public getBuffering()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mBufferPercent:I

    return v0
.end method

.method public getCurrentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "duration":I
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 539
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 541
    :cond_0
    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x6

    .line 575
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 545
    const-wide/16 v0, 0x0

    .line 546
    .local v0, "position":J
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 547
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    .line 549
    :cond_0
    return-wide v0
.end method

.method public isLocalTrack()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isLocalContents(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateMode()Z
    .locals 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-wide v2, v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->id:J

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;->isPrivateModeItem(Landroid/content/Context;J)Z

    move-result v0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 431
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    .line 432
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate() - precent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mBufferPercent:I

    .line 160
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 148
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onCompletion()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stopControlTask()V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    .line 152
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onCompletion()V

    .line 154
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    .line 164
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "type":I
    if-ne p2, v4, :cond_0

    const/16 v1, -0x3ed

    if-ne p3, v1, :cond_0

    .line 167
    const/4 v0, 0x2

    .line 169
    :cond_0
    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    if-nez p3, :cond_1

    .line 170
    const/4 v0, 0x3

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->onError(I)V

    .line 173
    return v4
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 134
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->updateMediaSessionMeta()V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setPlaybackState(J)V

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mNeedToPlay:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->play()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mNeedToPlay:Z

    .line 144
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 178
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onSeekComplete()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onSeekComplete(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setPlaybackState(J)V

    .line 181
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() - mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 375
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setPlaybackState(J)V

    .line 379
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setBatteryTemperatureCheck(Z)V

    goto :goto_0
.end method

.method public pauseWithDisablePlayByAudioFocus()V
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    .line 506
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPausedByTransientLossOfFocus:Z

    .line 507
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 435
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    .line 436
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_BLOCK_PLAYREADY_DRM:Z

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mDrmManager:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stopControlTask()V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v5}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSessionCallback:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSessionCallback:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->release()V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 428
    :cond_3
    return-void
.end method

.method public rewind()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getSkippingTime()I

    move-result v4

    int-to-long v4, v4

    sub-long v0, v2, v4

    .line 453
    .local v0, "time":J
    cmp-long v2, v0, v6

    if-gtz v2, :cond_0

    .line 454
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 510
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 511
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->setPlaybackState(J)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 514
    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 312
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needToPlay"    # Z

    .prologue
    const/4 v7, 0x0

    .line 277
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSource() - uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", needToPlay : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPlayerState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mUri:Landroid/net/Uri;

    .line 280
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mNeedToPlay:Z

    .line 281
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mBufferPercent:I

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "uriStr":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 284
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 286
    .local v1, "isExternalContents":Z
    if-eqz v1, :cond_0

    .line 287
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-object v2, v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->path:Ljava/lang/String;

    .line 292
    .local v2, "path":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlayableDrm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :goto_1
    return-void

    .line 289
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "path":Ljava/lang/String;
    goto :goto_0

    .line 297
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->reset()V

    .line 298
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 299
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 300
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSource() - IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->onError(I)V

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSource() - IllegalStateException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    invoke-interface {v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->onError(I)V

    goto :goto_1
.end method

.method public setMediaSessionActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 583
    :cond_0
    return-void
.end method

.method public setOnSoundPlayerStateListener(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 831
    return-void
.end method

.method public setOnSoundPlayerViewChangedListener(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerChangedListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    .line 819
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 383
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop() - mPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 387
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 389
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 391
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mPlayerState:I

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mOnSoundPlayerStateListener:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->onSeekComplete(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->reset()V

    .line 395
    return-void
.end method

.method public togglePlay()V
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->play()V

    goto :goto_0
.end method

.method public updateCurrentSongInfo(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->mSongInfo:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    .line 554
    return-void
.end method
