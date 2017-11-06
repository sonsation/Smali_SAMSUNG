.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.super Ljava/lang/Object;
.source "MultiPlayer.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DRM_ACQUIRE_TYPE:Ljava/lang/String; = "play_ready_drm_acquire_type"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final THREAD_NAME_PLAYER:Ljava/lang/String; = "smusic_player"


# instance fields
.field private final mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

.field private final mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

.field private final mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

.field private final mContext:Landroid/content/Context;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

.field private mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field private mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

.field private mDuration:J

.field private final mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

.field private mHasError:Z

.field private mIgnoreNoisy:Z

.field private mIsConnectingWfd:Z

.field private mIsDrm:Z

.field private mIsHdmiConnected:Z

.field private final mMediaControlThread:Landroid/os/HandlerThread;

.field private mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private mPathType:I

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

.field private final mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

.field private mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private mPlayerState:I

.field private final mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private mPlayerType:I

.field private mPosition:J

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private mSkipDrmPath:Ljava/lang/String;

.field private final mSmartViewChromeCastSupported:Z

.field private mWasHandledStreamingError:Z

.field private mWasPlaying:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;)V
    .locals 5
    .param p1, "corePlayerServiceFacade"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "customErrorContainer"    # Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    .line 126
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    .line 128
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    .line 130
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    .line 132
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    .line 134
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 136
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    .line 819
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 946
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 948
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    .line 1038
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPathType:I

    .line 1318
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 145
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "smusic_player"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 148
    .local v0, "l":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    .line 150
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    .line 151
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 154
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

    .line 155
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-direct {v1, p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    .line 156
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->bindAdapter()V

    .line 159
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    .line 162
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->setCustomErrorListener(Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;)V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->enable()V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewChromeCastSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSmartViewChromeCastSupported:Z

    .line 192
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSmartViewChromeCastSupported:Z

    if-eqz v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->registerRouteCallback()V

    .line 195
    :cond_1
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ensureCustomErrorContainer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setCurrentVolume(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->playWithoutAudioFocus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fadeUp(F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setVolume(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackSoundPathChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    return p1
.end method

.method private cancelPreviousDataSource()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->cancel()V

    .line 292
    :cond_0
    return-void
.end method

.method private dumpPlayingItem(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "playingItem"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .param p3, "priority"    # I

    .prologue
    .line 1358
    if-nez p2, :cond_0

    .line 1359
    const-string v0, "  playing item is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    :goto_0
    return-void

    .line 1361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Meta title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1362
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  file path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureCustomErrorContainer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v0, :cond_0

    .line 260
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->enable()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->disable()V

    goto :goto_0
.end method

.method private fadeUp(F)V
    .locals 1
    .param p1, "target"    # F

    .prologue
    .line 926
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->fadeUp(F)V

    .line 927
    return-void
.end method

.method private getErrorExtra(Landroid/net/Uri;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "errorId":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    .local v1, "err":I
    :goto_0
    return v1

    .line 392
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    .restart local v1    # "err":I
    goto :goto_0
.end method

.method private getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Landroid/os/Bundle;
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleExtraErrors(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private handleExtraErrors(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExtraErrors what "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 790
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    .line 791
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isQuit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v0

    .line 794
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 811
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onError(IILandroid/os/Bundle;)V

    move v0, v1

    .line 812
    goto :goto_0

    .line 796
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onServerDied()V

    move v0, v1

    .line 797
    goto :goto_0

    .line 801
    :sswitch_2
    const/16 v2, -0x7d1

    if-eq p2, v2, :cond_0

    .line 804
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onError(IILandroid/os/Bundle;)V

    move v0, v1

    .line 805
    goto :goto_0

    .line 794
    :sswitch_data_0
    .sparse-switch
        -0x320 -> :sswitch_0
        -0x2bc -> :sswitch_0
        -0x16 -> :sswitch_0
        -0x13 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method private ignoreNoisyIntent()V
    .locals 4

    .prologue
    .line 995
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    .line 997
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 998
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1005
    return-void
.end method

.method private isPlayableDrm(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dm"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 415
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    .line 416
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    .line 420
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V

    .line 421
    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getDrmInfo(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 422
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, "type":I
    const-string v4, "SV-Player"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSource() this is DRM case drm type :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-nez v1, :cond_0

    .line 438
    :goto_0
    return v2

    .line 427
    :cond_0
    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    move v2, v3

    .line 430
    goto :goto_0

    .line 432
    :cond_1
    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 434
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    .line 436
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    .line 437
    const-string v2, "SV-Player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSource() send drm type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 438
    goto :goto_0
.end method

.method private notifyPlaybackSoundPathChanged()V
    .locals 2

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getSoundPathType()I

    move-result v0

    .line 1056
    .local v0, "path":I
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPathType:I

    if-eq v1, v0, :cond_0

    .line 1057
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPathType:I

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onSoundPathChanged(I)V

    .line 1061
    :cond_0
    return-void
.end method

.method private pause(Z)V
    .locals 2
    .param p1, "clearAudioFocus"    # Z

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pause() mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 586
    if-eqz p1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->clearPausedByAudioFocus()V

    .line 589
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->pause()V

    .line 591
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->saveStack()V

    .line 592
    return-void
.end method

.method private play(Z)V
    .locals 3
    .param p1, "requestAudioFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play requestAudioFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 890
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->isEnableToPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause(Z)V

    .line 912
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_1

    .line 897
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    goto :goto_0

    .line 902
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 904
    if-eqz p1, :cond_3

    .line 905
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->requestAudioFocus()I

    .line 907
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fadeUp(F)V

    .line 908
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->start()V

    goto :goto_0

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0
.end method

.method private playWithoutAudioFocus()V
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play(Z)V

    .line 886
    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1299
    const-string v0, "SMUSIC-SV-Player"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1295
    const-string v0, "SMUSIC-SV-Player"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void
.end method

.method private static printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;

    .prologue
    .line 1303
    const-string v0, "SMUSIC-SV-Player"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "TSP %-15s | %10s ms | %-20s ~ %-20s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 1304
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void
.end method

.method private registerRouteCallback()V
    .locals 3

    .prologue
    .line 1309
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    const-string v2, "media_router"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 1310
    .local v0, "router":Landroid/media/MediaRouter;
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 1311
    return-void
.end method

.method private requestChangeToDefaultPlayer(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->changeToDefaultPlayer(Z)V

    .line 516
    return-void
.end method

.method private requestCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1
    .param p1, "currentDataSource"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "requestCurrentDataSource() but there is progress request. Ignore this request."

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0
.end method

.method private setCurrentVolume(F)V
    .locals 1
    .param p1, "currentVolume"    # F

    .prologue
    .line 922
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->setCurrentVolume(F)V

    .line 923
    return-void
.end method

.method private setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 412
    return-void
.end method

.method private setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V
    .locals 1
    .param p1, "dm"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 443
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V

    .line 481
    return-void
.end method

.method private setVolume(F)V
    .locals 2
    .param p1, "vol"    # F

    .prologue
    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setVolume() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setMediaVolume(F)V

    .line 748
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start() mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->clearPausedByAudioFocus()V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->start()V

    .line 578
    return-void
.end method

.method private unregisterRouteCallback()V
    .locals 3

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    const-string v2, "media_router"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 1315
    .local v0, "router":Landroid/media/MediaRouter;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 1316
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->abandonAudioFocus()V

    .line 943
    return-void
.end method

.method public addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 199
    return-void
.end method

.method public becomingNoisy()V
    .locals 3

    .prologue
    .line 915
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "becomingNoisy() mIgnoreNoisy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIgnoreNoisy:Z

    if-nez v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 919
    :cond_0
    return-void
.end method

.method public changeMute()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    .line 761
    return-void
.end method

.method public changeToMediaPlayer(Z)V
    .locals 4
    .param p1, "requestPlay"    # Z

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ignoreNoisyIntent()V

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1030
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendErrorMsg(IILandroid/os/Bundle;)V

    .line 1035
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestChangeToDefaultPlayer(Z)V

    .line 1036
    return-void
.end method

.method public changeToWfdDevice()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1008
    const-string v0, "changeToWfdDevice"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 1009
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 1010
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    .line 1013
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToMediaPlayer(Z)V

    .line 1014
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDmrPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    const-string v1, "# AudioFocus"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    const-string v1, "  isPausedByAudioFocus: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->isPausedByAudioFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1339
    const-string v1, "  hasAudioFocus: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->hasAudioFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1342
    const-string v1, "# PlayingItem"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->dumpPlayingItem(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;I)V

    .line 1345
    const-string v1, "# NextPlayingItem"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 1347
    .local v0, "next":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->dumpPlayingItem(Ljava/io/PrintWriter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;I)V

    .line 1350
    const-string v1, "# PlayerController"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->dump(Ljava/io/PrintWriter;)V

    .line 1353
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerEventLogger:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1354
    return-void

    .line 1347
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    goto :goto_0
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 611
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDuration()J

    move-result-wide v0

    .line 612
    .local v0, "duration":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDuration:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 613
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDuration:J

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " duration() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 617
    :cond_0
    return-wide v0
.end method

.method public fadeDown(F)V
    .locals 1
    .param p1, "target"    # F

    .prologue
    .line 930
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->fadeDown(F)V

    .line 931
    return-void
.end method

.method public getAudioSessionId()I
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getAudioSessionId()I

    move-result v0

    .line 702
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAudioSessionId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 703
    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDmrId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getPlaySpeed()F

    move-result v0

    return v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method getPlayerController()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerState:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    return v0
.end method

.method public getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 381
    .local v0, "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-nez v0, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 384
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    goto :goto_0
.end method

.method getSoundPathType()I
    .locals 2

    .prologue
    .line 1042
    const/4 v0, 0x1

    .line 1043
    .local v0, "type":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    .line 1044
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isChromeCastConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    :cond_0
    const/4 v0, 0x3

    .line 1051
    :cond_1
    :goto_0
    return v0

    .line 1046
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isHdmiConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1047
    const/4 v0, 0x4

    goto :goto_0

    .line 1048
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isBtConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1049
    const/4 v0, 0x2

    goto :goto_0
.end method

.method internalChangeToDefaultPlayer(Z)V
    .locals 7
    .param p1, "autoPlay"    # Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v2

    .line 537
    .local v2, "wasPlaying":Z
    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    .line 542
    .local v0, "seekPosition":J
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 544
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 545
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    if-nez p1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    move v3, v5

    :goto_0
    invoke-interface {v6, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    .line 546
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 547
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    .line 549
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 551
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 553
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerChanged()V

    .line 554
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    .line 555
    if-eqz p1, :cond_2

    .line 556
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerStateChanged(I)V

    .line 559
    .end local v0    # "seekPosition":J
    .end local v2    # "wasPlaying":Z
    :cond_2
    return-void

    .restart local v0    # "seekPosition":J
    .restart local v2    # "wasPlaying":Z
    :cond_3
    move v3, v4

    .line 545
    goto :goto_0
.end method

.method internalChangeToDmrPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "dmrId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 571
    return-void
.end method

.method public isBtConnected()Z
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->isBtConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isBuffering()Z

    move-result v0

    return v0
.end method

.method public isConnectingWfd()Z
    .locals 1

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    return v0
.end method

.method public isDmrPlaying()Z
    .locals 2

    .prologue
    .line 715
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isGoingToOtherSong()Z

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

.method isGoingToServerDied()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isGoingToServerDied()Z

    move-result v0

    return v0
.end method

.method public isGoingToTrackEnd()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->isGoingToTrackEnd()Z

    move-result v0

    return v0
.end method

.method public isHdmiConnected()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    return v0
.end method

.method public isNotInitializedAndNoError()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPausedByAudioFocus()Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->isPausedByAudioFocus()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 650
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isPlaying()Z

    move-result v0

    .line 651
    .local v0, "isSupposedToBePlaying":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasPlaying:Z

    if-eq v1, v0, :cond_0

    .line 652
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasPlaying:Z

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isPlaying() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 655
    :cond_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isPreparing()Z

    move-result v0

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isStop()Z

    move-result v0

    return v0
.end method

.method public isSupportPlaySpeed()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->isSupportPlaySpeed()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackState()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackState()V

    .line 1069
    return-void
.end method

.method public notifyPlaybackStateAsPause()V
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->notifyPlaybackStateAsPause()V

    .line 1073
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause(Z)V

    .line 582
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->hasAudioFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play(Z)V

    .line 882
    return-void

    .line 881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public position()J
    .locals 6

    .prologue
    .line 626
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getCurrentPosition()J

    move-result-wide v0

    .line 627
    .local v0, "position":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPosition:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 628
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPosition:J

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " position() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 632
    :cond_0
    return-wide v0
.end method

.method public releaseAndStopThread()V
    .locals 2

    .prologue
    .line 215
    const-string/jumbo v0, "release()"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->abandonAudioFocus()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mBtControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->release()V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->setCustomErrorListener(Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->disable()V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSmartViewChromeCastSupported:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->unregisterRouteCallback()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeAllCommand()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->quit()V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 230
    return-void
.end method

.method public reloadPlayingItem()V
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 1371
    return-void
.end method

.method public removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 203
    return-void
.end method

.method public requestChangeToDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 1
    .param p1, "dmrId"    # Ljava/lang/String;
    .param p2, "dlnaManager"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p3, "dlnaStateNotifier"    # Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .prologue
    .line 520
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 521
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->changeToDmrPlayer(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 5
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->cancelPreviousDataSource()V

    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 243
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 244
    .local v0, "id":J
    const-string v2, "SV-Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSetDataSourceInBackground() id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ensureCustomErrorContainer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 249
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 250
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    .line 251
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0
.end method

.method public requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V

    .line 279
    return-void
.end method

.method public requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V
    .locals 6
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .param p2, "delay"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V

    .line 283
    const-string v1, "SV-Player"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSetNextDataSourceInBackground() id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    .line 284
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " delay : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void

    .line 283
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 284
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 601
    const-string v0, " reset()"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 603
    return-void
.end method

.method public seek(J)J
    .locals 3
    .param p1, "whereto"    # J

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " seek() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->seekTo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    goto :goto_0
.end method

.method setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 14
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    const/4 v13, -0x1

    const/16 v12, -0x2bc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDataSource() mCurrentState : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerState()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p1, :cond_1

    const-string/jumbo v6, "source is null"

    .line 309
    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 311
    iput-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    .line 312
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v6

    iget-object v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reset()V

    .line 366
    :goto_1
    return-void

    .line 307
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " id: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 309
    invoke-interface {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 318
    :cond_2
    iput-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mWasHandledStreamingError:Z

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Landroid/os/Bundle;

    move-result-object v3

    .line 321
    .local v3, "extraData":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 322
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onExtraDataChanged(Landroid/os/Bundle;)V

    .line 325
    :cond_3
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 326
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_4

    .line 327
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 328
    invoke-direct {p0, v13, v13}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto :goto_1

    .line 332
    :cond_4
    const-string v6, "error"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 333
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->reset(Z)V

    .line 334
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "error":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getErrorExtra(Landroid/net/Uri;)I

    move-result v2

    .line 337
    .local v2, "extra":I
    const-string v6, "playing_quality"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 338
    invoke-direct {p0, v12, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto :goto_1

    .line 339
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    if-eqz v6, :cond_6

    const-string v6, "cache_error"

    .line 340
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 341
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCustomErrorContainer:Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;->notifyError(Ljava/lang/String;I)V

    goto :goto_1

    .line 342
    :cond_6
    const-string v6, "drm_error"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 343
    const/16 v6, -0x320

    invoke-direct {p0, v6, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto/16 :goto_1

    .line 344
    :cond_7
    const-string/jumbo v6, "streaming_server_error"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 345
    invoke-direct {p0, v12, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(IILandroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 347
    :cond_8
    invoke-direct {p0, v12, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->handleExtraErrors(II)Z

    goto/16 :goto_1

    .line 352
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "extra":I
    :cond_9
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    move-result-object v0

    .line 354
    .local v0, "dm":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
    if-eqz v4, :cond_b

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 355
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlayableDrm(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 356
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto/16 :goto_1

    .line 358
    :cond_a
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mHasError:Z

    goto/16 :goto_1

    .line 361
    :cond_b
    if-eqz v4, :cond_c

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsDrm:Z

    .line 362
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mSkipDrmPath:Ljava/lang/String;

    .line 364
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDataSourceInternal(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto/16 :goto_1

    :cond_c
    move v6, v8

    .line 361
    goto :goto_2
.end method

.method public setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 9
    .param p1, "dmrId"    # Ljava/lang/String;
    .param p2, "dlnaManager"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p3, "dlnaStateNotifier"    # Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .prologue
    const/4 v8, 0x1

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v6

    .line 492
    .local v6, "seekPosition":J
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    if-ne v0, v8, :cond_1

    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->release()V

    .line 495
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mMediaControlThread:Landroid/os/HandlerThread;

    .line 496
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    .line 498
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    .line 502
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerType:I

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerChanged()V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mContext:Landroid/content/Context;

    const-string v1, "DLNA"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setDmrId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHdmiConnected(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    if-eq v0, p1, :cond_0

    .line 1077
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsHdmiConnected:Z

    .line 1079
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackSoundPathChanged()V

    .line 1081
    :cond_0
    return-void
.end method

.method setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mNextDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 408
    return-void
.end method

.method public setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mFadeController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;)V

    .line 935
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 738
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setPlaySpeed(F)V

    .line 739
    return-void
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 2
    .param p1, "playerSettingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 208
    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 751
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSkipSilences(Z)V

    .line 754
    :cond_0
    return-void
.end method

.method public setSupposeToBePlaying(Z)V
    .locals 1
    .param p1, "supposeToBePlaying"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposedToBePlaying(Z)V

    .line 234
    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setSupposeToBePlayingPosition(J)V

    .line 238
    return-void
.end method

.method public setWfdState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWfdState() state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printLog(Ljava/lang/String;)V

    .line 956
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    if-ne p1, v0, :cond_1

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 982
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackSoundPathChanged()V

    .line 983
    return-void

    .line 958
    :cond_1
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    if-ne p1, v0, :cond_3

    .line 959
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToWfdDevice()V

    .line 966
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    if-eqz v0, :cond_0

    .line 967
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 968
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    goto :goto_0

    .line 977
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    if-eqz v0, :cond_0

    .line 978
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 979
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    goto :goto_0
.end method

.method public setWfdState(ZZ)V
    .locals 4
    .param p1, "isConnected"    # Z
    .param p2, "byUser"    # Z

    .prologue
    const/4 v3, 0x0

    .line 986
    const-string v0, "SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWfdState connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byUser? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->ignoreNoisyIntent()V

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mCommandCallback:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    .line 991
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mIsConnectingWfd:Z

    .line 992
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 595
    const-string v0, " stop()"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->printInfoLog(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mAudioFocusController:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->clearPausedByAudioFocus()V

    .line 597
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->stop()V

    .line 598
    return-void
.end method

.method public volumeDown()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    .line 775
    return-void
.end method

.method public volumeUp()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->mPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->setCustomAction(I)V

    .line 768
    return-void
.end method
