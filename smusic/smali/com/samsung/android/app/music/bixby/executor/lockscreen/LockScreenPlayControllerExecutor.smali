.class public Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;
.super Ljava/lang/Object;
.source "LockScreenPlayControllerExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMetaUpdated:Z

.field private mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

.field private mPlayRequested:Z

.field private final mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

.field private mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mMetaUpdated:Z

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mPlayRequested:Z

    .line 181
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 196
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 270
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->handleCommand()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mPlayRequested:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mMetaUpdated:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mMetaUpdated:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bindToService()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    .line 68
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 69
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mPlayRequested:Z

    if-eqz v0, :cond_0

    .line 142
    iput-boolean v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mPlayRequested:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mMetaUpdated:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->release()V

    .line 147
    :cond_0
    return-void
.end method

.method private getActiveMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getActiveMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCommand()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "state":Ljava/lang/String;
    const-string v1, "Pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->pause()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v1, "Play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->play()V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "PlayNextSong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->playNext()V

    goto :goto_0

    .line 84
    :cond_3
    const-string v1, "PlayPreviousSong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->playPrev()V

    goto :goto_0
.end method

.method private isRadio()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 175
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->TAG:Ljava/lang/String;

    const-string v3, "isRadio extra is null."

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return v2

    :cond_0
    const-string v3, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private pause()V
    .locals 5

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->getActiveMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 91
    .local v0, "isPlaying":Z
    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayingSong"

    const-string v4, "Exist"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "yes"

    :goto_0
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 94
    :cond_1
    const-string v1, "no"

    goto :goto_0
.end method

.method private play()V
    .locals 5

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->getActiveMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 101
    .local v0, "isPlaying":Z
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PausedSong"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->request()V

    .line 107
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    goto :goto_0
.end method

.method private playNext()V
    .locals 5

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->getActiveMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 112
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NextSong"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->request()V

    .line 118
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    goto :goto_0
.end method

.method private playPrev()V
    .locals 5

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->getActiveMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 123
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviousSong"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->request()V

    .line 129
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    goto :goto_0
.end method

.method private request()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mPlayRequested:Z

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->setTime()V

    .line 138
    return-void
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "nlgName"    # Ljava/lang/String;
    .param p3, "nlgAttribute"    # Ljava/lang/String;
    .param p4, "nlgValue"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->clear()V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->unbindFromService()V

    .line 156
    return-void
.end method

.method private unbindFromService()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 74
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    const-string v0, "PLAYER_CONTROL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->bindToService()V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
