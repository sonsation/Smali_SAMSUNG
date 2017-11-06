.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.super Landroid/app/Service;
.source "CorePlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;
.implements Lcom/samsung/android/app/musiclibrary/core/service/action/PlayerServiceCommandAction;
.implements Lcom/samsung/android/app/musiclibrary/core/service/action/PlayerServiceStateExtra;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;
    }
.end annotation


# static fields
.field private static final LIFE_CYCLE_TAG:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final MAX_ERROR_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SV"

.field protected static final TEMP_LAZY_PLAYER_INITIALIZE:Z

.field private static sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# instance fields
.field private mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

.field private final mAutoResumeManager:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

.field private mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

.field private mErrorCount:I

.field private mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

.field private mIsNotificationShown:Z

.field protected mIsSupportSmartVolume:Z

.field private mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mMusicExtras:Landroid/os/Bundle;

.field private final mPendingServiceCommand:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field protected mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field protected mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private mReloadFristQueue:Z

.field private mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

.field private mServiceInUse:Z

.field protected mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

.field private mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

.field private mStopRequestCount:I

.field private final mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

.field private mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

.field private final mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicExtras:Landroid/os/Bundle;

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    .line 103
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAutoResumeManager:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPendingServiceCommand:Ljava/util/Set;

    .line 115
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsSupportSmartVolume:Z

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    .line 144
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    .line 146
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAutoResumeManager:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->cancelServiceTimeOut()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setServiceTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->handleDrmRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->exitInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->openPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPendingServiceCommand:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushQueueUpdate(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushPlaybackStateUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private cancelServiceTimeOut()V
    .locals 3

    .prologue
    .line 1495
    const-string v1, "SV"

    const-string v2, "cancelServiceTimeOut()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1497
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getHideNotificationServicePendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1498
    return-void
.end method

.method private composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 4
    .param p1, "playingItem"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 1413
    const-string v1, "SMUSIC-SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composeDataSource playingItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;-><init>()V

    .line 1415
    .local v0, "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 1416
    return-object v0
.end method

.method private varargs dump(Ljava/io/PrintWriter;[Lcom/samsung/android/app/musiclibrary/core/service/IDump;)V
    .locals 5
    .param p1, "w"    # Ljava/io/PrintWriter;
    .param p2, "dumps"    # [Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    .prologue
    .line 508
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 509
    .local v0, "d":Lcom/samsung/android/app/musiclibrary/core/service/IDump;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ------------------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IDump;->dump(Ljava/io/PrintWriter;)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "d":Lcom/samsung/android/app/musiclibrary/core/service/IDump;
    :cond_0
    return-void
.end method

.method private ensureToastHandler()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    .line 1130
    :cond_0
    return-void
.end method

.method private exitInternal()V
    .locals 3

    .prologue
    .line 862
    const-string v1, "SMUSIC-SV"

    const-string v2, "exitInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 871
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->hideNotification()V

    .line 879
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->abandonAudioFocus()V

    .line 883
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    .line 884
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->changeToMediaPlayer(Z)V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stop()V

    .line 888
    return-void
.end method

.method private getHideNotificationServicePendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1504
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getHideNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-object v0
.end method

.method private handleDrmRequest(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, "SV"

    const-string v1, "open drm fail ui top"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 1533
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1548
    :goto_0
    return-void

    .line 1545
    :cond_0
    const-string v0, "SV"

    const-string v1, "open drm fail ui background"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->skipToNextUntilMatchedErrorCount()V

    goto :goto_0
.end method

.method private isCurrentSongPrivateMode()Z
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v0

    return v0
.end method

.method private isNextSongPrivateMode()Z
    .locals 2

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 1409
    .local v0, "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSamePlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
    .locals 8
    .param p1, "src"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .param p2, "dst"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1175
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v3

    .line 1178
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v2

    .line 1179
    .local v2, "srcQueueType":I
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v0

    .line 1180
    .local v0, "dstQueueType":I
    if-ne v2, v0, :cond_0

    .line 1182
    if-ne v0, v1, :cond_2

    .line 1183
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 1186
    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1187
    .local v1, "isSame":Z
    :goto_1
    const-string v3, "SMUSIC-SV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSamePlayingItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 1188
    goto :goto_0

    .end local v1    # "isSame":Z
    :cond_3
    move v1, v3

    .line 1186
    goto :goto_1
.end method

.method private isServiceInUse()Z
    .locals 6

    .prologue
    .line 1420
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v2

    .line 1421
    .local v2, "isPlaying":Z
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPausedByAudioFocus()Z

    move-result v1

    .line 1422
    .local v1, "isPausedByAudioFocus":Z
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isGoingToTrackEnd()Z

    move-result v0

    .line 1423
    .local v0, "isGoingToTrackEnd":Z
    const-string v3, "SMUSIC-SV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LifeCycle: isServiceInUse mServiceInUse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPlaying: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPausedByAudioFocus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsNotificationShown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWifiDisplayIntent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1336
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 1337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private needToNotify(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1328
    const-string v0, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isWifiDisplayIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 6
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 1138
    const-string v3, "SMUSIC-SV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openPlayingItem isGaplessPlaying ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v2

    .line 1142
    .local v2, "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    .line 1143
    .local v1, "playingItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isSamePlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1144
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setCurrentDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 1145
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    .line 1146
    .local v0, "extraData":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1147
    const-string v3, "com.samsung.android.app.music.core.state.PLAYER_EXTRA"

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1150
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyPlaybackState()V

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onOpenPlayingItemAsGapless()V

    .line 1165
    .end local v0    # "extraData":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0
.end method

.method private pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1
    .param p1, "musicMetadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1194
    return-void
.end method

.method private pushPlaybackStateUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 1198
    return-void
.end method

.method private pushQueueUpdate(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1202
    return-void
.end method

.method private reloadPlayingItem()V
    .locals 4

    .prologue
    .line 1098
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isNotInitializedAndNoError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 1101
    .local v0, "currentItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 1102
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->composeDataSource(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v1

    .line 1105
    .local v1, "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 1108
    .end local v0    # "currentItem":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .end local v1    # "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    :cond_0
    return-void
.end method

.method private setInternalQueueMode(II)V
    .locals 1
    .param p1, "modeType"    # I
    .param p2, "value"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setMode(II)V

    .line 617
    return-void
.end method

.method private setServiceTimeout()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1d4c0

    const/4 v4, 0x0

    .line 1477
    const-string v2, "SV"

    const-string/jumbo v3, "setServiceTimeout() notification will hide after 120000 milli sec"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getHideNotificationServicePendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1480
    .local v1, "hide":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1481
    .local v0, "am":Landroid/app/AlarmManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 1483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    .line 1482
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1488
    :goto_0
    return-void

    .line 1485
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public addQueue([JIZI)V
    .locals 4
    .param p1, "ids"    # [J
    .param p2, "action"    # I
    .param p3, "play"    # Z
    .param p4, "position"    # I

    .prologue
    .line 553
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 557
    if-eqz p3, :cond_2

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 559
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue([JIZI)V

    goto :goto_0
.end method

.method public addQueueItems(Ljava/util/List;IZI)V
    .locals 4
    .param p2, "action"    # I
    .param p3, "play"    # Z
    .param p4, "position"    # I
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
    .line 567
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 571
    if-eqz p3, :cond_2

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 573
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->enqueue(Ljava/util/List;IZI)V

    goto :goto_0
.end method

.method public audioPathChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlaySpeed(F)V

    .line 1234
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->resetBaseVolume(Z)V

    .line 1244
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->needToNotify(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1248
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathChangedToBt()V

    .line 1253
    :cond_1
    :goto_0
    return-void

    .line 1250
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathChanged()V

    goto :goto_0
.end method

.method public autoOff()V
    .locals 2

    .prologue
    .line 901
    const-string v0, "SMUSIC-SV"

    const-string v1, "Music Playing paused because of music auto off setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->resetAutoOffValue()V

    .line 904
    return-void
.end method

.method public becomingNoisy()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->becomingNoisy()V

    .line 836
    return-void
.end method

.method public buffering()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public changeSetting(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 913
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "smart_volume"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    const-string/jumbo v2, "smart_volume"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 915
    .local v0, "enabledSmartVolume":Z
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolume(Z)V

    .line 916
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSmartVolume(Z)V

    .line 920
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const-string v3, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    .line 921
    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 925
    .end local v0    # "enabledSmartVolume":Z
    :cond_0
    const-string v2, "play_speed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    const-string v2, "play_speed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 927
    .local v1, "playSpeed":F
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlaySpeed(F)V

    .line 928
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setPlaySpeed(F)V

    .line 930
    .end local v1    # "playSpeed":F
    :cond_1
    return-void
.end method

.method protected final changeToDlnaDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 1
    .param p1, "dmrId"    # Ljava/lang/String;
    .param p2, "dlnaManager"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p3, "dlnaStateNotifier"    # Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestChangeToDmrPlayer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    .line 1379
    return-void
.end method

.method protected final changeToMediaPlayer(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeToMediaPlayer(Z)V

    .line 1383
    return-void
.end method

.method public completePlaying(Z)V
    .locals 1
    .param p1, "isGaplessPlaying"    # Z

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->next(ZZ)Z

    .line 826
    return-void
.end method

.method public completePlayingInternal(Z)V
    .locals 3
    .param p1, "isGaplessPlaying"    # Z

    .prologue
    .line 818
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const-string v1, "com.samsung.android.app.music.core.state.COMPLETE_PLAYING"

    const/4 v2, 0x0

    .line 819
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 820
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->completePlaying(Z)V

    .line 821
    return-void
.end method

.method delayedStopService()V
    .locals 2

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isServiceInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    const-string v0, "SMUSIC-SV"

    const-string v1, "LifeCycle: delayedStopService refuse, service is in use."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    .line 1449
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->hasAsyncRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopRequestCount:I

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    goto :goto_0

    .line 1447
    :cond_1
    const-string v0, "SMUSIC-SV"

    const-string v1, "LifeCycle: delayedStopService stopSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stopSelf()V

    goto :goto_0
.end method

.method public dlnaDisconnectionRequested()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isStop()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->changeToMediaPlayer(Z)V

    .line 1361
    :cond_0
    return-void

    .line 1359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 478
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    aput-object v3, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->dump(Ljava/io/PrintWriter;[Lcom/samsung/android/app/musiclibrary/core/service/IDump;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an exception during dump : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 488
    const-string v0, "Debug.getPss() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 490
    const-string v0, "Debug.getLoadedClassCount() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 492
    const-string v0, "Debug.getBinderDeathObjectCount() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 494
    const-string v0, "Debug.getBinderLocalObjectCount() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 496
    const-string v0, "Debug.getBinderProxyObjectCount() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 498
    const-string v0, "Debug.getBinderReceivedTransactions() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 500
    const-string v0, "Debug.getBinderSentTransactions() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 502
    const-string v0, "Debug.getRuntimeStats() "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Landroid/os/Debug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 505
    :cond_0
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fadeDown(F)V

    .line 847
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;)V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->exitInternal()V

    goto :goto_0
.end method

.method public forward()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->forward()V

    .line 788
    return-void
.end method

.method public getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 672
    return-object p0
.end method

.method protected final getAudioId()J
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getDlnaPlayingDmrId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getDmrId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraInformation(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 1016
    packed-switch p1, :pswitch_data_0

    .line 1049
    :pswitch_0
    const/4 v1, 0x0

    .line 1051
    .local v1, "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1018
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isConnectingWfd()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1021
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isHdmiConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1024
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getAudioSessionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1027
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaySpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 1028
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1030
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getPlaySpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1033
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getDmrId()Ljava/lang/String;

    move-result-object v1

    .line 1034
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1036
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_7
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1039
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_8
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isBtConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1042
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_9
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getScreenOffMusic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1045
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_a
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 1046
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1046
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
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
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingItemExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1057
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v2

    .line 1058
    .local v2, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .local v1, "emptyData":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1060
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    .line 1061
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1063
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .restart local v0    # "data":Landroid/os/Bundle;
    :cond_0
    move-object v0, v1

    .line 1061
    goto :goto_0

    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    move-object v0, v1

    .line 1063
    goto :goto_0
.end method

.method public getPrevItem()Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    return-object v0
.end method

.method protected final getQueueKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueueList()Ljava/util/List;
    .locals 1
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
    .line 651
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 1078
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffle()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public hideNotification()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 841
    return-void
.end method

.method protected final isShownNotification()Z
    .locals 1

    .prologue
    .line 1467
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    return v0
.end method

.method protected abstract isSupportNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z
.end method

.method protected final isUserAction()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->isUserAction()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveQueueItem(II)V

    .line 601
    return-void
.end method

.method public next()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 702
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 703
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    .line 708
    return v4
.end method

.method public next(ZZ)Z
    .locals 1
    .param p1, "ignoreRepeatOne"    # Z
    .param p2, "isGapless"    # Z

    .prologue
    .line 713
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: onBind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Landroid/os/IBinder;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 443
    const-string v0, "SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: onConfigurationChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 265
    const-string v1, "SV"

    const-string v2, "LifeCycle: onCreate "

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;-><init>(Landroid/content/Context;[Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->register()V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreatePlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreateMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreateMultiPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 277
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlayerSettingManager(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V

    .line 278
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreatePlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 353
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 356
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    .line 359
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsSupportSmartVolume:Z

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 361
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSmartVolume()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Z)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->startObserving()V

    .line 365
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 366
    return-void
.end method

.method protected abstract onCreateMultiPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end method

.method protected abstract onCreateMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
.end method

.method protected abstract onCreatePlayerQueue()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end method

.method protected abstract onCreatePlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
.end method

.method protected abstract onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end method

.method public onCustomEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "value"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 991
    return-void
.end method

.method public onCustomEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 935
    packed-switch p1, :pswitch_data_0

    .line 985
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 937
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 938
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 941
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->changeMute()V

    goto :goto_0

    .line 944
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->volumeUp()V

    goto :goto_0

    .line 947
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->volumeDown()V

    goto :goto_0

    .line 950
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlaySpeed(F)V

    goto :goto_0

    .line 953
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setPlaySpeed(F)V

    goto :goto_0

    .line 956
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setAutoOffValue(Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v1, :cond_0

    .line 962
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 963
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolume(Z)V

    .line 964
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSmartVolume(Z)V

    goto :goto_0

    .line 967
    .end local v0    # "enabled":Z
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setLockScreen(Z)V

    goto :goto_0

    .line 970
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setScreenOffMusic(Z)V

    goto :goto_0

    .line 973
    :pswitch_b
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 974
    .restart local v0    # "enabled":Z
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSkipSilences(Z)V

    .line 975
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setSkipSilence(Z)V

    goto :goto_0

    .line 978
    .end local v0    # "enabled":Z
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathToDevice()V

    goto :goto_0

    .line 981
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mAudioPathHandler:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyPathToBt()V

    goto/16 :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 995
    const-string v2, "com.samsung.android.bt.AVRCP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    const-string/jumbo v2, "repeat"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 997
    .local v0, "repeat":I
    const-string/jumbo v2, "shuffle"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 999
    .local v1, "shuffle":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRepeat()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1000
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    .line 1001
    invoke-direct {p0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    .line 1010
    .end local v0    # "repeat":I
    .end local v1    # "shuffle":I
    :cond_0
    :goto_0
    return-void

    .line 1003
    .restart local v0    # "repeat":I
    .restart local v1    # "shuffle":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getRepeat()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1004
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1006
    invoke-direct {p0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->stopObserving()V

    .line 464
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 465
    const-string v0, "SMUSIC-SV"

    const-string v1, "LifeCycle: onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->release()V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->releaseAndStopThread()V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mBroadcastReceiverController:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->unregister()V

    .line 472
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 473
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "SV"

    const-string v1, "LifeCycle: onLowMemory()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method protected onOpenPlayingItemAsGapless()V
    .locals 0

    .prologue
    .line 1172
    return-void
.end method

.method protected abstract onPlayerError(IILandroid/os/Bundle;)V
.end method

.method protected abstract onPlayerExtraDataChanged(Landroid/os/Bundle;)V
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 387
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: onRebind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    .line 390
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 402
    const-string v1, "SV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LifeCycle: onStartCommand intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    .line 405
    if-eqz p1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    if-nez v1, :cond_0

    .line 407
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPlayerLoggers()Landroid/util/SparseArray;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceCommandReceiver:Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;->onStartCommand(Landroid/content/Intent;)Z

    move-result v0

    .line 411
    .local v0, "isSuccess":Z
    if-nez v0, :cond_1

    .line 414
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPendingServiceCommand:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_1
    const-string v1, "com.samsung.android.app.music.core.action.BIND_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadPlayingItem()V

    .line 424
    .end local v0    # "isSuccess":Z
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 425
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    if-nez v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    .line 428
    :cond_3
    const/4 v1, 0x2

    return v1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 448
    const-string v0, "SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: onTaskRemoved() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 453
    const-string v0, "SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: onTrimMemory() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: onUnbind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceInUse:Z

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mStopServiceHandler:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopServiceInIdle()V

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public openQueue(ILjava/lang/String;[JLjava/util/List;IZJ)V
    .locals 7
    .param p1, "uriType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "list"    # [J
    .param p5, "position"    # I
    .param p6, "play"    # Z
    .param p7, "seekPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZJ)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p4, "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueue play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seekPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p7, p8}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 522
    invoke-virtual {p0, p6}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setList(ILjava/lang/String;[JLjava/util/List;I)V

    .line 524
    return-void
.end method

.method public openQueue(Ljava/lang/String;[JLjava/util/List;IZJ)V
    .locals 10
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p4, "position"    # I
    .param p5, "play"    # Z
    .param p6, "seekPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZJ)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p3, "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->openQueue(ILjava/lang/String;[JLjava/util/List;IZJ)V

    .line 531
    return-void
.end method

.method public openQueueId(JIZ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "direction"    # I
    .param p4, "play"    # Z

    .prologue
    .line 544
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueueId id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 547
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToQueueItem(JI)V

    .line 549
    return-void
.end method

.method public openQueuePosition(IIZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "play"    # Z

    .prologue
    .line 535
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueuePosition position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 538
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlayingByPlayerQueue(Z)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    .line 540
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 698
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 686
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 687
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 688
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->openQueuePosition(IIZ)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    const/4 v1, 0x1

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 744
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 749
    return v1
.end method

.method public prev(Z)Z
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 720
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->reloadFirstQueue(Z)V

    .line 723
    :cond_0
    if-eqz p1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 725
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 734
    :goto_0
    return v4

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->prevInLimitMove()V

    goto :goto_0

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 731
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0
.end method

.method protected prevInLimitMove()V
    .locals 2

    .prologue
    .line 738
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->seek(J)J

    .line 739
    return-void
.end method

.method public privateModeOff()V
    .locals 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isCurrentSongPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const-string v0, "SMUSIC-SV"

    const-string v1, "Current song is private mode, thus release it, otherwise media server will die by private mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 1347
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stop()V

    .line 1349
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isNextSongPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    const-string v0, "SMUSIC-SV"

    const-string v1, "Next song is private mode, thus release nextMediaplayer, otherwise media server will die by private mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 1354
    :cond_1
    return-void
.end method

.method public pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1210
    return-void
.end method

.method public registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 662
    return-void
.end method

.method public final registerNotification(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 1452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    .line 1453
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 1454
    return-void
.end method

.method protected reloadFirstQueue(Z)V
    .locals 2
    .param p1, "onlyAudioIds"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1087
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    if-eqz v0, :cond_0

    .line 1088
    if-eqz p1, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadAudioIds()V

    .line 1093
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mReloadFristQueue:Z

    .line 1095
    :cond_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    goto :goto_0
.end method

.method public reloadMeta()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadMeta()V

    .line 909
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 637
    return-void
.end method

.method public removeQueueAudioIds([J)I
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 590
    if-nez p1, :cond_0

    .line 591
    const/4 v0, 0x0

    .line 595
    :goto_0
    return v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracks([J)V

    .line 595
    array-length v0, p1

    goto :goto_0
.end method

.method public removeQueuePosition([I)I
    .locals 1
    .param p1, "positions"    # [I

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 585
    :goto_0
    return v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->removeTracksPositions([I)V

    .line 585
    array-length v0, p1

    goto :goto_0
.end method

.method protected final resetNowPlayingList()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1399
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stop()V

    .line 1400
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-object v3, v2

    move-object v4, v2

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setList(ILjava/lang/String;[JLjava/util/List;I)V

    .line 1401
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->rewind()V

    .line 794
    return-void
.end method

.method public seek(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 754
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V
    .locals 1
    .param p1, "dmrId"    # Ljava/lang/String;
    .param p2, "dlnaManager"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p3, "dlnaStateNotifier"    # Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setDmrPlayerMode(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;)V

    .line 1374
    return-void
.end method

.method public setHdmiConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setHdmiConnected(Z)V

    .line 1225
    return-void
.end method

.method public setQueueMode(II)V
    .locals 0
    .param p1, "modeType"    # I
    .param p2, "value"    # I

    .prologue
    .line 611
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setInternalQueueMode(II)V

    .line 612
    return-void
.end method

.method public setSupposeToBePlaying(Z)V
    .locals 1
    .param p1, "supposeToBePlaying"    # Z

    .prologue
    .line 777
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 778
    return-void
.end method

.method protected setSupposeToBePlayingByPlayerQueue(Z)V
    .locals 0
    .param p1, "supposeToBePlaying"    # Z

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->setSupposeToBePlaying(Z)V

    .line 782
    return-void
.end method

.method protected final setUserAction(Z)V
    .locals 1
    .param p1, "userAction"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserAction(Z)V

    .line 252
    return-void
.end method

.method protected final setUserActionActive()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mUserActionChecker:Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->setUserActionActive()V

    .line 248
    return-void
.end method

.method public setWfdState(I)V
    .locals 1
    .param p1, "wfdState"    # I

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setWfdState(I)V

    .line 1215
    return-void
.end method

.method public setWfdState(ZZ)V
    .locals 1
    .param p1, "connected"    # Z
    .param p2, "byUser"    # Z

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setWfdState(ZZ)V

    .line 1220
    return-void
.end method

.method protected final showToast(I)V
    .locals 1
    .param p1, "stringId"    # I

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->ensureToastHandler()V

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(I)V

    .line 1116
    return-void
.end method

.method protected final showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->ensureToastHandler()V

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mToastHandler:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method protected final skipToNextUntilMatchedErrorCount()V
    .locals 4

    .prologue
    .line 1551
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1552
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    .line 1553
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 1559
    :goto_0
    return-void

    .line 1556
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mErrorCount:I

    .line 1557
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1558
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    goto :goto_0
.end method

.method public startForward()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->startForward()V

    .line 799
    return-void
.end method

.method public startRewind()V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->startRewind()V

    .line 809
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->stop()V

    .line 831
    return-void
.end method

.method public stopForward()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->stop()V

    .line 804
    return-void
.end method

.method public stopRewind()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mForwardRewindController:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->stop()V

    .line 814
    return-void
.end method

.method public toggleFavorite()V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public togglePlay()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->play()V

    goto :goto_0
.end method

.method public toggleQueueMode(I)I
    .locals 1
    .param p1, "modeType"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->toggleMode(I)I

    move-result v0

    return v0
.end method

.method public unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 667
    return-void
.end method

.method public final unregisterNotification(Z)V
    .locals 2
    .param p1, "removeNotification"    # Z

    .prologue
    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.state.FINISHED_HIDE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mIsNotificationShown:Z

    .line 1462
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->cancelServiceTimeOut()V

    .line 1463
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stopForeground(Z)V

    .line 1464
    return-void
.end method

.method public updateWidget()V
    .locals 2

    .prologue
    .line 896
    const-string v0, "com.samsung.android.app.music.core.action.UPDATE_WIDGET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 897
    return-void
.end method

.method public volumeChanged()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mSmartVolumeUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->resetBaseVolume(Z)V

    .line 1369
    :cond_0
    return-void
.end method
