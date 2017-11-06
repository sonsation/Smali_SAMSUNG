.class final Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
.super Ljava/lang/Object;
.source "DmrPlayerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$BufferingState;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$CustomAction;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerDMR"

.field private static final TAG:Ljava/lang/String; = "SV-PlayerDMR"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mBufferingState:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private final mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field private final mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

.field private mDmrId:Ljava/lang/String;

.field private mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

.field private mDmrPlayerState:I

.field private mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

.field private mIsDmrErrorState:Z

.field private mIsDmrPlaying:Z

.field private mIsReleased:Z

.field private mIsScreenSharingConnected:Z

.field private mIsSupposedToBePlaying:Z

.field private final mLooper:Landroid/os/Looper;

.field private mNeedRequest:Z

.field private final mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

.field private final mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

.field private mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

.field private final mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

.field private mPlaybackState:I

.field private mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

.field private mSeekPosition:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "dmrId"    # Ljava/lang/String;
    .param p4, "dlnaManager"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p5, "dlnaStateNotifier"    # Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 65
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 68
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 71
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    .line 76
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrErrorState:Z

    .line 78
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsScreenSharingConnected:Z

    .line 80
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    .line 82
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsReleased:Z

    .line 84
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    .line 629
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    .line 722
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    .line 745
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mLooper:Landroid/os/Looper;

    .line 116
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 117
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .line 119
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 120
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 122
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDmrId(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsScreenSharingConnected:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsScreenSharingConnected:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(IIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOff(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    return-object v0
.end method

.method private bitOff(II)I
    .locals 1
    .param p1, "current"    # I
    .param p2, "newState"    # I

    .prologue
    .line 576
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method private bitOn(II)I
    .locals 1
    .param p1, "current"    # I
    .param p2, "newState"    # I

    .prologue
    .line 572
    or-int v0, p1, p2

    return v0
.end method

.method private changeMute()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-nez v0, :cond_0

    .line 581
    const-string v0, "SV-PlayerDMR"

    const-string v1, "changeMute DMR player wasn\'t prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->changeMute()V

    goto :goto_0
.end method

.method private createDmrPlayer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dmrId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 475
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->releaseDmrPlayer()V

    .line 479
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->createSecAVPlayer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    move-result-object v0

    .line 480
    .local v0, "av":Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    if-nez v0, :cond_0

    .line 481
    const-string v1, "SV-PlayerDMR"

    const-string v2, "Fail to create SecAVPlayer. Please check DMR id value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v1, 0x0

    .line 494
    :goto_0
    return v1

    .line 485
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 486
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;)V

    .line 487
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;)V

    .line 488
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnCompletionListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;)V

    .line 489
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->initializeVolumeController(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;)V

    .line 491
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 492
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->getDmrStatusInfo()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->setUpData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;)V

    .line 493
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    sget v3, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTING:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    goto :goto_0
.end method

.method private getPlayingPath(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    const/4 v1, 0x0

    .line 464
    if-nez p1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-object v1

    .line 467
    :cond_1
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 468
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleDmrError(IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "notify"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 537
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 538
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrErrorState:Z

    .line 540
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 541
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    .line 542
    if-eqz p3, :cond_0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onError(II)Z

    .line 545
    :cond_0
    return-void
.end method

.method private handleDmrError(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    const/4 v0, -0x1

    .line 533
    invoke-direct {p0, v0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(IIZ)V

    .line 534
    return-void
.end method

.method private hasBit(II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "newState"    # I

    .prologue
    .line 568
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeVolumeController(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;)V
    .locals 4
    .param p1, "avPlayer"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .prologue
    .line 498
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewVolumeControlSupported(Landroid/content/Context;)Z

    move-result v0

    .line 499
    .local v0, "enabled":Z
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Z)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    .line 500
    if-eqz v0, :cond_0

    .line 501
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    .line 504
    :cond_0
    return-void
.end method

.method private isCurrentDataSourceEmpty()Z
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private isRequestingDmrCommand()Z
    .locals 3

    .prologue
    .line 548
    const-string v0, "SV-PlayerDMR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRequestingDmrCommand mBufferingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyBufferingStateChanged(I)V
    .locals 3
    .param p1, "bufferingState"    # I

    .prologue
    .line 554
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    if-ne v0, p1, :cond_1

    .line 555
    const-string v0, "SV-PlayerDMR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBufferingStateChanged but same state. ignore this. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 556
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_0

    .line 560
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 561
    const-string v0, "SMUSIC-SV-PlayerDMR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBufferingStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    .line 562
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onBuffering(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private notifyPlayerStateChanged(Z)V
    .locals 2
    .param p1, "play"    # Z

    .prologue
    .line 610
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const/4 v0, 0x2

    .line 615
    .local v0, "state":I
    if-eqz p1, :cond_3

    .line 616
    const/4 v0, 0x3

    .line 622
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    .line 623
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    if-eq v0, v1, :cond_0

    .line 624
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 625
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isPreparing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 618
    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 619
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isStop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private releaseDmrPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->release()V

    .line 513
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mScreenSharingVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->release()V

    .line 517
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-eqz v0, :cond_2

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->stop()V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->releaseSecAVPlayer()V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->setOnCompletionListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;)V

    .line 526
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 527
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    .line 529
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 530
    return-void
.end method

.method private volumeDown()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-nez v0, :cond_0

    .line 603
    const-string v0, "SV-PlayerDMR"

    const-string/jumbo v1, "volumeDown DMR player wasn\'t prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->volumeDown()V

    goto :goto_0
.end method

.method private volumeUp()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    if-nez v0, :cond_0

    .line 592
    const-string v0, "SV-PlayerDMR"

    const-string/jumbo v1, "volumeUp DMR player wasn\'t prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrVolumeController:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->volumeUp()V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupposedToBePlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDmrPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDmrPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  buffering percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getBufferingPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  current position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, -0x1

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 326
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-nez v2, :cond_1

    .line 327
    const-string v2, "SMUSIC-SV-PlayerDMR"

    const-string v3, "mDmrPlayer is null. Please check your routine."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-wide/16 v0, 0x0

    .line 334
    :cond_0
    :goto_0
    return-wide v0

    .line 330
    :cond_1
    const-wide/16 v0, 0x0

    .line 331
    .local v0, "position":J
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrErrorState:Z

    if-eqz v2, :cond_0

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method public getDmrId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-nez v2, :cond_1

    .line 314
    const-string v2, "SMUSIC-SV-PlayerDMR"

    const-string v3, "mDmrPlayer is null. Please check your routine."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-wide/16 v0, -0x1

    .line 321
    :cond_0
    :goto_0
    return-wide v0

    .line 317
    :cond_1
    const-wide/16 v0, -0x1

    .line 318
    .local v0, "duration":J
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 319
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlaySpeed()F
    .locals 1

    .prologue
    .line 352
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v0

    return v0
.end method

.method public isGoingToOtherSong()Z
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/4 v1, 0x4

    .line 454
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v1, 0x20

    .line 455
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

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

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrErrorState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrPlaying:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

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
    .line 427
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v1, 0x8

    .line 428
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->hasBit(II)Z

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

.method public isStop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 443
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPlaySpeed()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 162
    const-string v1, "SMUSIC-SV-PlayerDMR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause mCurrentState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 163
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->getFieldsStringValueNameForDebugging(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-nez v1, :cond_2

    .line 172
    const-string v1, "SMUSIC-SV-PlayerDMR"

    const-string v2, "mDmrPlayer is null. Please check your routine."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    .line 176
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    .line 177
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 178
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->pause()V

    goto :goto_0

    .line 179
    .end local v0    # "state":I
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 180
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDlnaStateNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_NOT_CONNECTED:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    .line 203
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsScreenSharingConnected:Z

    .line 204
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsReleased:Z

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->releaseDmrPlayer()V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 209
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 212
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .param p1, "changeState"    # Z

    .prologue
    .line 198
    return-void
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "whereto"    # J

    .prologue
    .line 297
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    :cond_0
    const-wide/16 p1, -0x1

    .line 308
    .end local p1    # "whereto":J
    :cond_1
    :goto_0
    return-wide p1

    .line 302
    .restart local p1    # "whereto":J
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    .line 303
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->seek(J)V

    goto :goto_0
.end method

.method public setCustomAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 381
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->changeMute()V

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->volumeUp()V

    goto :goto_0

    .line 387
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->volumeDown()V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 12
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isCurrentDataSourceEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "SV-PlayerDMR"

    const-string/jumbo v3, "setDataSource DataSource is empty."

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "SV-PlayerDMR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataSource uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-nez v0, :cond_1

    .line 236
    const-string v0, "SV-PlayerDMR"

    const-string/jumbo v3, "setDataSource DMR player wasn\'t prepared."

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/4 v3, 0x5

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v8

    .line 241
    .local v8, "state":I
    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    if-eqz v0, :cond_2

    .line 244
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mPlaybackState:I

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    .line 248
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsDmrErrorState:Z

    .line 249
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v3, "android.media.metadata.AUTHOR"

    .line 252
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "seed":Ljava/lang/String;
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_3

    .line 255
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    .line 257
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    invoke-virtual {v0, v7, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->play(Ljava/lang/String;J)Z

    move-result v6

    .line 269
    .local v6, "isSuccess":Z
    :goto_1
    if-nez v6, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsReleased:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    .line 270
    const-string v0, "SV-PlayerDMR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataSource request to play: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", need to request again: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mNeedRequest:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-wide v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    goto/16 :goto_0

    .line 262
    .end local v6    # "isSuccess":Z
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getPlayingPath(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v3, "android.media.metadata.TITLE"

    .line 266
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const-string v3, "audio/mpeg"

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .restart local v6    # "isSuccess":Z
    goto :goto_1

    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_5
    move v0, v9

    .line 269
    goto :goto_2
.end method

.method public setDmrId(Ljava/lang/String;)V
    .locals 1
    .param p1, "dmrId"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->createDmrPlayer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMediaVolume(F)V
    .locals 0
    .param p1, "vol"    # F

    .prologue
    .line 412
    return-void
.end method

.method public setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 0
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .prologue
    .line 278
    return-void
.end method

.method public setOnPlayerStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    .line 283
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 397
    return-void
.end method

.method public setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 0
    .param p1, "playerSettingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .prologue
    .line 375
    return-void
.end method

.method public setSkipSilences(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public setSupposeToBePlayingPosition(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    .line 293
    return-void
.end method

.method public setSupposedToBePlaying(Z)V
    .locals 0
    .param p1, "play"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mIsSupposedToBePlaying:Z

    .line 288
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 127
    const-string v1, "SMUSIC-SV-PlayerDMR"

    const-string/jumbo v2, "start is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isRequestingDmrCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOff(II)I

    move-result v0

    .line 133
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 137
    .end local v0    # "state":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mBufferingState:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->bitOn(II)I

    move-result v0

    .line 138
    .restart local v0    # "state":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 140
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    if-ne v1, v3, :cond_4

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->createDmrPlayer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->isCurrentDataSourceEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    const-string v1, "SV-PlayerDMR"

    const-string/jumbo v2, "start current DataSource is empty."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->handleDmrError(Z)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mSeekPosition:J

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mCurrentDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->resume()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->stop()V

    .line 189
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyBufferingStateChanged(I)V

    .line 191
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->notifyPlayerStateChanged(Z)V

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->mDmrPlayerState:I

    .line 193
    return-void
.end method
