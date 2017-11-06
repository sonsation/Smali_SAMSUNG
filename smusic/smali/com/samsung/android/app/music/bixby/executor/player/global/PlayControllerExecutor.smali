.class public final Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;
.super Ljava/lang/Object;
.source "PlayControllerExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMetaUpdated:Z

.field private final mOnMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private final mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

.field private mPlayRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

.field private mPlayRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMetaUpdated:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequested:Z

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mOnMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 224
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequested:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMetaUpdated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMetaUpdated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->clear()V

    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mOnMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequested:Z

    .line 142
    iput-boolean v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMetaUpdated:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->release()V

    .line 147
    :cond_0
    return-void
.end method

.method private pause(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v0

    .line 78
    .local v0, "isPlaying":Z
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    .line 81
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "PlayingSong"

    const-string v4, "Exist"

    if-eqz v0, :cond_1

    const-string/jumbo v2, "yes"

    :goto_0
    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 85
    return-void

    .line 82
    :cond_1
    const-string v2, "no"

    goto :goto_0
.end method

.method private play(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 90
    .local v0, "isPlaying":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 91
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "PausedSong"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 99
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_1
    return-void

    .line 89
    .end local v0    # "isPlaying":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    .restart local v0    # "isPlaying":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->request(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 97
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    goto :goto_1
.end method

.method private playNext(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 5
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v0

    .line 104
    .local v0, "isPrevNextControllable":Z
    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->request(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 106
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "NextSong"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0
.end method

.method private playPrev(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 5
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 117
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v0

    .line 118
    .local v0, "isPrevNextControllable":Z
    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->request(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "PreviousSong"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0
.end method

.method private request(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 2
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequested:Z

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mOnMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->mPlayRequestTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->setTime()V

    .line 137
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 5
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 55
    const-string v2, "PLAYER_CONTROL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    sget-object v2, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "state":Ljava/lang/String;
    const-string v2, "Pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->pause(Ljava/lang/String;)V

    .line 73
    .end local v0    # "state":Ljava/lang/String;
    :goto_0
    return v1

    .line 62
    .restart local v0    # "state":Ljava/lang/String;
    :cond_0
    const-string v2, "Play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->play(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "PlayNextSong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->playNext(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "PlayPreviousSong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->playPrev(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 73
    .end local v0    # "state":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
