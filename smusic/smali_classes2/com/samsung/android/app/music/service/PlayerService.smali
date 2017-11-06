.class public Lcom/samsung/android/app/music/service/PlayerService;
.super Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;,
        Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private mActivePlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

.field private mContext:Landroid/content/Context;

.field private mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

.field private final mExtrasNotifyDelegationManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;

.field private mIsOnMyMusicMode:Z

.field private mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

.field private mMilkReceiver:Landroid/content/BroadcastReceiver;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mPlayerSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

.field private mServiceEdgeAnimationController:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

.field private mServiceNetworkListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

.field private mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;-><init>()V

    .line 156
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 158
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mExtrasNotifyDelegationManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;

    .line 179
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerService$1;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->reloadCurrentPlayer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/service/PlayerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [J
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J

    .prologue
    .line 151
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/music/service/PlayerService;->openWithDmr(Ljava/lang/String;[JILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->changeToDmrPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/service/PlayerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->showErrorToast(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/PlayerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->isActiveQueueType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/PlayerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->setActiveQueueType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->unregisterServiceNetworkManager()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->registerServiceNetworkManager()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/PlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mIsOnMyMusicMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/service/PlayerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mIsOnMyMusicMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->initSamsungAnalytics(Ljava/lang/String;)V

    return-void
.end method

.method private changeToDmrPlayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "dmrId"    # Ljava/lang/String;

    .prologue
    .line 1077
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;-><init>(Landroid/content/Context;I)V

    .line 1077
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->changeToDlnaDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    .line 1080
    return-void
.end method

.method private ensureRadioControl()V
    .locals 4

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    if-nez v0, :cond_0

    .line 1273
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    .line 1276
    :cond_0
    return-void
.end method

.method private getActiveQueueType()I
    .locals 3

    .prologue
    .line 494
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v2, 0x1

    .line 495
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 496
    .local v0, "queueType":I
    return v0
.end method

.method private getDlnaPlayingNic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, "nic":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isDlnaTrackList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getNicId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    :cond_0
    const-string v1, "SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDlnaPlayingNic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-object v0
.end method

.method private getDrmExtra(I)Ljava/lang/String;
    .locals 1
    .param p1, "extra"    # I

    .prologue
    .line 1140
    sparse-switch p1, :sswitch_data_0

    .line 1156
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1148
    :sswitch_0
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1140
    nop

    :sswitch_data_0
    .sparse-switch
        -0x8fc -> :sswitch_0
        -0xcb -> :sswitch_0
        -0xc8 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private getRadioExtraData()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method private getStreamingExtra(I)Ljava/lang/String;
    .locals 1
    .param p1, "extra"    # I

    .prologue
    .line 1117
    sparse-switch p1, :sswitch_data_0

    .line 1135
    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1119
    :sswitch_0
    const v0, 0x7f0a0418

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1121
    :sswitch_1
    const v0, 0x7f0a0382

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1123
    :sswitch_2
    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :sswitch_3
    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1117
    nop

    :sswitch_data_0
    .sparse-switch
        -0x21 -> :sswitch_3
        -0xf -> :sswitch_0
        -0xd -> :sswitch_2
        -0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private handleDlnaContentsError()Z
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    .line 600
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->changeToMediaPlayer(Z)V

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method private initSamsungAnalytics(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->initSamsungAnalytics(Landroid/app/Application;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private isActiveQueueType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getActiveQueueType()I

    move-result v0

    .line 489
    .local v0, "activeQueueType":I
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDlnaTrackList()Z
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getUriType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMelonContents(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    const/4 v2, 0x0

    .line 1212
    if-nez p1, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return v2

    .line 1215
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 1216
    .local v1, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v3, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 1217
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v3

    const v4, 0x40002

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSupportPlaySpeed()Z
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isSupportPlaySpeed()Z

    move-result v0

    return v0
.end method

.method private openInternal(Ljava/lang/String;[JILjava/lang/String;ZJZ)V
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "dmrId"    # Ljava/lang/String;
    .param p5, "isMaintainSeekPosition"    # Z
    .param p6, "seekPosition"    # J
    .param p8, "play"    # Z

    .prologue
    .line 962
    if-nez p2, :cond_0

    const/16 v18, 0x0

    .line 963
    .local v18, "listSize":I
    :goto_0
    if-nez v18, :cond_1

    .line 964
    const-string v2, "SV"

    const-string v3, "Ignore request. ListRequest list length is 0."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_1
    return-void

    .line 962
    .end local v18    # "listSize":I
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    goto :goto_0

    .line 967
    .restart local v18    # "listSize":I
    :cond_1
    if-ltz p3, :cond_2

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 968
    :cond_2
    const-string v2, "SV"

    const-string v3, "Ignore request. ListRequest position is abnormal minus or over list length"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 973
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gtz v2, :cond_4

    .line 974
    if-eqz p5, :cond_5

    if-lez v18, :cond_5

    aget-wide v2, p2, p3

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/PlayerService;->getAudioId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/PlayerService;->position()J

    move-result-wide p6

    .line 979
    :cond_4
    :goto_2
    if-eqz p4, :cond_7

    .line 980
    const-string v2, "SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCommandIntent ACTION_START_SERVICE_CMD - dmrId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDlnaServiceBind? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .line 981
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isBindService()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isBindService()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p6

    .line 983
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/service/PlayerService;->openWithDmr(Ljava/lang/String;[JILjava/lang/String;J)V

    goto :goto_1

    .line 976
    :cond_5
    const-wide/16 p6, 0x0

    goto :goto_2

    .line 985
    :cond_6
    move-wide/from16 v8, p6

    .line 986
    .local v8, "seek":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    new-instance v2, Lcom/samsung/android/app/music/service/PlayerService$5;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/service/PlayerService$5;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V

    .line 987
    invoke-virtual {v10, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindServiceImmediate(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)V

    goto/16 :goto_1

    .line 995
    .end local v8    # "seek":J
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v14, p3

    move/from16 v15, p8

    move-wide/from16 v16, p6

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/app/music/service/PlayerService;->openQueue(Ljava/lang/String;[JLjava/util/List;IZJ)V

    goto/16 :goto_1
.end method

.method private openWithDmr(Ljava/lang/String;[JILjava/lang/String;J)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "dmrId"    # Ljava/lang/String;
    .param p5, "seekPosition"    # J

    .prologue
    .line 1001
    const-string v0, "SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openWithDmr() - key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmrId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seekPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;

    .line 1005
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;-><init>(Landroid/content/Context;I)V

    .line 1004
    invoke-virtual {p0, p4, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    .line 1008
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/service/PlayerService;->openQueue(Ljava/lang/String;[JLjava/util/List;IZJ)V

    .line 1009
    return-void
.end method

.method private registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 0
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p2, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .prologue
    .line 420
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 421
    return-void
.end method

.method private registerServiceNetworkManager()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLocalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerService$2;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->setOnNetworkStateChangedListener(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;)V

    goto :goto_0
.end method

.method private reloadCurrentPlayer()V
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    .line 300
    .local v0, "isPlaying":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v2

    .line 311
    .local v2, "seekPosition":J
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->reloadPlayingItem()V

    .line 312
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    goto :goto_0
.end method

.method private setActivePlayControl(I)V
    .locals 1
    .param p1, "queueType"    # I

    .prologue
    .line 1260
    packed-switch p1, :pswitch_data_0

    .line 1267
    iput-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mActivePlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    .line 1269
    :goto_0
    return-void

    .line 1262
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->ensureRadioControl()V

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mActivePlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    goto :goto_0

    .line 1260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setActiveQueueType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getActiveQueueType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackStateAsPause()V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 509
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->setActivePlayControl(I)V

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private showErrorToast(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1088
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->setUserAction(Z)V

    .line 1090
    sparse-switch p1, :sswitch_data_0

    .line 1111
    const v1, 0x7f0a014f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "err":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    .end local v0    # "err":Ljava/lang/String;
    :sswitch_0
    const/16 v1, -0x3ed

    if-ne p2, v1, :cond_1

    .line 1095
    const v1, 0x7f0a0126

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1096
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_1

    .line 1099
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    :sswitch_1
    const v1, 0x7f0a00bc

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_1

    .line 1102
    .end local v0    # "err":Ljava/lang/String;
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->getStreamingExtra(I)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_1

    .line 1105
    .end local v0    # "err":Ljava/lang/String;
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->getDrmExtra(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_1

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        -0x320 -> :sswitch_3
        -0x2bc -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private unregisterServiceNetworkManager()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->setOnNetworkStateChangedListener(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;)V

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public audioPathChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .line 728
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->getSoundAlivePreset()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(IZZ)V

    .line 731
    :cond_0
    return-void
.end method

.method public batteryChanged(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "level"    # I

    .prologue
    .line 1013
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-gt p2, v1, :cond_1

    .line 1015
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryChanged to low - batteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " batteryStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1019
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isShownNotification()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->stop()V

    .line 1023
    invoke-static {p0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->startActivity(Landroid/content/Context;)V

    .line 1026
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public dlnaConnectionChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "deviceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 1030
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1031
    .local v0, "context":Landroid/content/Context;
    if-ne p1, v4, :cond_1

    .line 1032
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getQueueKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    const-string v3, "android.media.metadata.COMPILATION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->resetNowPlayingList()V

    .line 1037
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->launchDlnaErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1053
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getDlnaPlayingDmrId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    const-string v2, "SMUSIC-SV"

    const-string v3, "current playing DMR removed, thus pause it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    .line 1047
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/PlayerService;->changeToMediaPlayer(Z)V

    .line 1048
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->launchDlnaErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dlnaConnectionRequested(ILjava/lang/String;)V
    .locals 3
    .param p1, "playerType"    # I
    .param p2, "dmrId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1057
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    if-eq p1, v0, :cond_0

    .line 1058
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOtherDeviceReceiver ScreenSharing - DLNA_CONNECTION_REQUEST playerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :goto_0
    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isBindService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->changeToDmrPlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    new-instance v1, Lcom/samsung/android/app/music/service/PlayerService$6;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/service/PlayerService$6;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindServiceImmediate(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)V

    goto :goto_0
.end method

.method public easyModeEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 722
    return-void
.end method

.method public getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mActivePlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    if-nez v0, :cond_0

    .end local p0    # "this":Lcom/samsung/android/app/music/service/PlayerService;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/app/music/service/PlayerService;
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mActivePlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    goto :goto_0
.end method

.method public getExtraInformation(I)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 850
    packed-switch p1, :pswitch_data_0

    .line 876
    :pswitch_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "value":Ljava/lang/String;
    :goto_0
    const-string v2, "SMUSIC-SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtraInformation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-object v1

    .line 852
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isSupportPlaySpeed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 853
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 855
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getDlnaPlayingNic()Ljava/lang/String;

    move-result-object v1

    .line 856
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 858
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->getSoundAlivePreset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 861
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getSortMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 862
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 864
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v3, 0x1

    .line 865
    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v2

    .line 864
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 866
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 868
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getRadioExtraData()Landroid/os/Bundle;

    move-result-object v0

    .line 869
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "station_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 872
    .end local v0    # "extra":Landroid/os/Bundle;
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getRadioExtraData()Landroid/os/Bundle;

    move-result-object v0

    .line 873
    .restart local v0    # "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string/jumbo v2, "track_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .prologue
    .line 884
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x5

    .line 886
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 888
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 894
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 895
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->isActiveQueueType(I)Z

    move-result v0

    .line 896
    .local v0, "isActive":Z
    if-eqz v0, :cond_0

    .line 897
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 901
    .end local v0    # "isActive":Z
    :goto_0
    return-object v1

    .line 899
    .restart local v0    # "isActive":Z
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getLastPlaybackState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    goto :goto_0

    .line 901
    .end local v0    # "isActive":Z
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    goto :goto_0
.end method

.method protected getPlayerLoggers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getRemotePlayerLoggers()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .prologue
    .line 906
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x6

    .line 908
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 910
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method public getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 916
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 917
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->isActiveQueueType(I)Z

    move-result v0

    .line 918
    .local v0, "isActive":Z
    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 923
    .end local v0    # "isActive":Z
    :goto_0
    return-object v1

    .line 921
    .restart local v0    # "isActive":Z
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getLastPlaybackState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    goto :goto_0

    .line 923
    .end local v0    # "isActive":Z
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    goto :goto_0
.end method

.method public isEnableToPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1228
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_PLAYBACK_DURING_CALL:Z

    if-eqz v1, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return v0

    .line 1231
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isSplitSoundOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1233
    const-string v1, "SMUSIC-SV"

    const-string v2, "isEnableToPlaying : mAudioManager.isSplitSoundOn() is true. so do not check call state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1241
    const-string v0, "SMUSIC-SV"

    const-string/jumbo v1, "startPlay Can\'t play during call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const v0, 0x7f0a020c

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    .line 1243
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 4

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getAudioId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->isFavorite(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method public isSupportForward()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 641
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 645
    const v2, 0x7f0a0217

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    .line 656
    :goto_0
    return v1

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isDlnaTrackList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    const v2, 0x7f0a0140

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    goto :goto_0

    .line 656
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isSupportNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 633
    .line 634
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 633
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v0

    .line 635
    .local v0, "cpName":I
    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportRewind()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 662
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 666
    const v2, 0x7f0a0217

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    .line 677
    :goto_0
    return v1

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isDlnaTrackList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    goto :goto_0

    .line 677
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode"

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mIsOnMyMusicMode:Z

    .line 240
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore;->DLNA_ALL_DELETE_URI:Landroid/net/Uri;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .line 245
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_SMART_VOLUME:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mIsSupportSmartVolume:Z

    .line 246
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreate()V

    .line 247
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DLNA_DMS:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindService()V

    .line 251
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;->FX:Z

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAlive()V

    .line 256
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 257
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_2

    .line 258
    new-instance v0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .line 261
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v6, "f":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.app.music.action.USER_INFO_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v0, "com.sec.android.app.music.action.ACTION_STREAMING_AUTHORITY_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/samsung/android/app/music/service/PlayerService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/PlayerService$3;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMilkReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMilkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/app/music/service/PlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    .end local v6    # "f":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method protected onCreateMultiPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;)V

    return-object v0
.end method

.method protected onCreateMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method

.method protected onCreatePlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 5

    .prologue
    .line 430
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 431
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    new-instance v3, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;

    invoke-direct {v3}, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    .line 433
    invoke-static {v4}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v4

    .line 432
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->createPlayerQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    return-object v1
.end method

.method protected onCreatePlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
    .locals 13

    .prologue
    const v5, 0x7f0d00c3

    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    .line 335
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;-><init>()V

    .line 336
    .local v2, "serviceCallbackUpdater":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const v4, 0x7f0d0062

    sget-object v6, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;IILandroid/net/Uri;)V

    .line 340
    .local v0, "center":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mExtrasNotifyDelegationManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;

    .line 341
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->registerOnCallbackCountChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;)V

    .line 342
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mExtrasNotifyDelegationManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 343
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;

    .line 344
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    new-instance v11, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;

    invoke-direct {v11, v0}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;)V

    .line 343
    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 347
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;

    .line 348
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v8

    .line 349
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;

    invoke-direct {v10, v0}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    new-instance v11, Lcom/samsung/android/app/music/service/observer/artwork/WidgetBackgroundArtworkConverter;

    invoke-direct {v11}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetBackgroundArtworkConverter;-><init>()V

    move-object v7, v1

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 347
    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 352
    new-instance v3, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v3, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 354
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    .line 355
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v8

    const-class v9, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

    new-instance v11, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;

    invoke-direct {v11}, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;-><init>()V

    move-object v7, v1

    move-object v10, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;)V

    .line 358
    .local v6, "sessionUpdater":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;
    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 359
    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getPlayerLoggers()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlayerLoggers(Landroid/util/SparseArray;)V

    .line 362
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;

    .line 364
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v4

    sget-boolean v7, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_CONTROLLER:Z

    invoke-direct {v3, v1, v0, v4, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Z)V

    .line 363
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 367
    :cond_0
    new-instance v3, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 371
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 372
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;

    .line 373
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;

    invoke-direct {v7, v1}, Lcom/samsung/android/app/music/service/observer/MusicInfoUpdateHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v1, v4, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V

    .line 372
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 375
    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->isSupportGestureAirMotion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    new-instance v3, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;

    invoke-direct {v3, v1, p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 379
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 380
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;

    .line 381
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-direct {v3, v1, v4, v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 380
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 383
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SCREEN_OFF_MUSIC_ENABLED:Z

    if-eqz v3, :cond_2

    .line 384
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    const-class v4, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 388
    :cond_2
    const-class v3, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    const/4 v4, 0x1

    .line 389
    invoke-static {v1, v3, v5, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->createInstance(Landroid/content/Context;Ljava/lang/Class;IZ)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    move-result-object v3

    .line 388
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 390
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_ADAPT_SOUND:Z

    if-eqz v3, :cond_3

    .line 391
    new-instance v3, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    new-instance v5, Lcom/samsung/android/app/music/service/PlayerService$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/service/PlayerService$4;-><init>(Lcom/samsung/android/app/music/service/PlayerService;)V

    invoke-direct {v3, v1, v4, v5}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 399
    :cond_3
    new-instance v3, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;-><init>(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 400
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_EDGE_LIGHTING_EFFECT:Z

    if-eqz v3, :cond_4

    .line 401
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    new-instance v5, Lcom/samsung/android/app/music/service/edgeanimation/EdgeLightingResPolicyImp;

    invoke-direct {v5}, Lcom/samsung/android/app/music/service/edgeanimation/EdgeLightingResPolicyImp;-><init>()V

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceEdgeAnimationController:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .line 404
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceEdgeAnimationController:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 405
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceEdgeAnimationController:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .line 406
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->registerOnCallbackCountChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;)V

    .line 408
    :cond_4
    new-instance v3, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    .line 409
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->setTrackEndLoggingEnabled(Z)Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->build()Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;

    move-result-object v3

    .line 408
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 410
    return-object v0
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "value"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 817
    packed-switch p1, :pswitch_data_0

    .line 824
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCustomEvent(ILandroid/os/Bundle;)V

    .line 826
    :goto_0
    return-void

    .line 819
    :pswitch_0
    const-string v2, "arg_user_eq"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 820
    .local v0, "eq":[I
    const-string v2, "arg_user_ext"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 821
    .local v1, "ext":[I
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAliveUser([I[IZ)V

    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 736
    const-string v4, "SMUSIC-SV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCustomEvent event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    packed-switch p1, :pswitch_data_0

    .line 810
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCustomEvent(ILjava/lang/String;)V

    .line 812
    :goto_0
    :pswitch_1
    return-void

    .line 739
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindService()V

    goto :goto_0

    .line 742
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->refresh()V

    goto :goto_0

    .line 745
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mDlnaControlHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->selectDlnaDms(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService;->changeToDmrPlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/service/PlayerService;->changeToMediaPlayer(Z)V

    goto :goto_0

    .line 754
    :pswitch_7
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToWfdDevice()V

    goto :goto_0

    .line 759
    :pswitch_8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 760
    .local v0, "enabled":Z
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->setAdaptSoundOn(Landroid/content/Context;Z)V

    .line 761
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 762
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 763
    const-string v4, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 766
    .end local v0    # "enabled":Z
    .end local v1    # "extras":Landroid/os/Bundle;
    :pswitch_9
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setBargeIn(Z)V

    goto :goto_0

    .line 772
    :pswitch_a
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSupportAod(I)V

    goto :goto_0

    .line 775
    :pswitch_b
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .line 776
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(IZZ)V

    goto :goto_0

    .line 779
    :pswitch_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 780
    .local v3, "sortMode":I
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setSortMode(I)V

    goto :goto_0

    .line 783
    .end local v3    # "sortMode":I
    :pswitch_d
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->ensureRadioControl()V

    .line 784
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->togglePlay()V

    goto :goto_0

    .line 787
    :pswitch_e
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->ensureRadioControl()V

    .line 788
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    goto/16 :goto_0

    .line 791
    :pswitch_f
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->ensureRadioControl()V

    .line 792
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    goto/16 :goto_0

    .line 795
    :pswitch_10
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->ensureRadioControl()V

    .line 796
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    goto/16 :goto_0

    .line 799
    :pswitch_11
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->ensureRadioControl()V

    .line 800
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mRadioPlayControl:Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    invoke-interface {v4, v7}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    goto/16 :goto_0

    .line 803
    :pswitch_12
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 806
    :pswitch_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 807
    .local v2, "queueType":I
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->setActiveQueueType(I)V

    goto/16 :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 830
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 842
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 844
    :cond_1
    :goto_1
    return-void

    .line 830
    :sswitch_0
    const-string v1, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.android.app.music.core.action.SEND_EDGE_ANIMATION_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 833
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContentsFromMediaBrowser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 836
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceEdgeAnimationController:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceEdgeAnimationController:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    const-string v1, "edge_animation_state"

    .line 838
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->setEdgeAnimationState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 830
    nop

    :sswitch_data_0
    .sparse-switch
        0x41b0ef2c -> :sswitch_1
        0x533dd94f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 928
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 929
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->killServer()V

    .line 930
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mExtrasNotifyDelegationManager:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->release()V

    .line 931
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mLegacySoundAliveController:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->release()V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->release()V

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMilkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mMilkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 940
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onDestroy()V

    .line 941
    return-void
.end method

.method protected onOpenPlayingItemAsGapless()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method protected onPlayerError(IILandroid/os/Bundle;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 531
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    const/16 v3, -0xbb9

    if-ne p2, v3, :cond_1

    .line 533
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->handleDlnaContentsError()Z

    .line 594
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 536
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    const/16 v3, -0x2bc

    if-ne p1, v3, :cond_2

    .line 542
    const/16 v3, -0x1f

    if-ne p2, v3, :cond_2

    .line 544
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    const-string v3, "com.samsung.android.app.music.core.state.REQUIRE_READ_PHONE_PERMISSION"

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 547
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPausedByAudioFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 555
    if-nez p3, :cond_4

    move-object v1, v2

    .line 557
    .local v1, "message":Landroid/os/Bundle;
    :goto_1
    if-nez v1, :cond_5

    .line 558
    .local v2, "text":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->showErrorToast(II)V

    .line 569
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    .line 571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "error_type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v3, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 555
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Bundle;
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    const-string v3, "player_extra_message"

    .line 556
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 557
    .restart local v1    # "message":Landroid/os/Bundle;
    :cond_5
    const-string v3, "msg_message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 561
    .restart local v2    # "text":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 565
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 575
    .end local v1    # "message":Landroid/os/Bundle;
    .end local v2    # "text":Ljava/lang/String;
    :cond_7
    sparse-switch p2, :sswitch_data_0

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->isUserAction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->setUserActionActive()V

    .line 591
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->skipToNextUntilMatchedErrorCount()V

    goto :goto_0

    .line 579
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->pause()V

    goto :goto_0

    .line 582
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->next()Z

    goto/16 :goto_0

    .line 575
    nop

    :sswitch_data_0
    .sparse-switch
        -0x21 -> :sswitch_1
        -0x14 -> :sswitch_0
        -0x13 -> :sswitch_2
        -0x12 -> :sswitch_1
        -0xf -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPlayerExtraDataChanged(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 606
    const/4 v2, 0x0

    .line 607
    .local v2, "notified":Z
    const-string v4, "player_extra_content"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 608
    .local v0, "content":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 609
    const-string v4, "com.samsung.android.app.music.core.state.PLAYER_EXTRA"

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 610
    const/4 v2, 0x1

    .line 613
    :cond_0
    const-string v4, "player_extra_message"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 614
    .local v1, "message":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 615
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    if-nez v2, :cond_1

    .line 618
    const-string v4, "com.samsung.android.app.music.core.state.PLAYER_EXTRA"

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 627
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    const-string v4, "msg_message"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 623
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 523
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->exit()V

    .line 527
    :cond_0
    return-void
.end method

.method public openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "play"    # Z
    .param p5, "dmrId"    # Ljava/lang/String;
    .param p6, "isMaintainSeekPosition"    # Z
    .param p7, "seekPosition"    # J

    .prologue
    .line 684
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    move-wide/from16 v6, p7

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/PlayerService;->openInternal(Ljava/lang/String;[JILjava/lang/String;ZJZ)V

    .line 685
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->setActiveQueueType(I)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .line 449
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->isAvailableNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(I)V

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->play()V

    goto :goto_0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->playUnstructuredSearch(Landroid/content/Context;Ljava/lang/String;)Z

    .line 707
    return-void
.end method

.method protected prevInLimitMove()V
    .locals 4

    .prologue
    .line 711
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 712
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->isMelonContents(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/service/PlayerService;->seek(J)J

    goto :goto_0
.end method

.method public pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    const v10, 0x7f0a025d

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 458
    const-string v4, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    const-string v4, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 460
    .local v3, "queueType":I
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/PlayerService;->setActivePlayControl(I)V

    .line 484
    .end local v3    # "queueType":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 485
    return-void

    .line 461
    :cond_1
    const-string v4, "com.samsung.android.app.music.core.state.queue.DUPLICATE_TRACK_DELETE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    const-string v4, "delete_count"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 463
    .local v1, "deleteCount":I
    const-string v4, "added_count"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 464
    .local v0, "addedCount":I
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getDuplicateOption()Z

    move-result v2

    .line 466
    .local v2, "duplicateOption":Z
    if-lez v1, :cond_3

    .line 467
    if-eqz v2, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a043d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 468
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a043e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 473
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a043c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 480
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/PlayerService;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected reloadFirstQueue(Z)V
    .locals 0
    .param p1, "onlyAudioIds"    # Z

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->registerServiceNetworkManager()V

    .line 701
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 702
    return-void
.end method

.method public reloadQueue()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService;->registerServiceNetworkManager()V

    .line 695
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadQueue()V

    .line 696
    return-void
.end method

.method protected setSupposeToBePlayingByPlayerQueue(Z)V
    .locals 1
    .param p1, "supposeToBePlaying"    # Z

    .prologue
    .line 515
    if-eqz p1, :cond_0

    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService;->setActiveQueueType(I)V

    .line 518
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 519
    return-void
.end method
