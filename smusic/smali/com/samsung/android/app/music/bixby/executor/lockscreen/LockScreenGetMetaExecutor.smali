.class public Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;
.super Ljava/lang/Object;
.source "LockScreenGetMetaExecutor.java"

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

.field private mServiceCallbackRegistered:Z

.field private final mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackRegistered:Z

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->getActiveMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->handleCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->handleCommand()V

    return-void
.end method

.method private bindToService()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    .line 65
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 66
    return-void
.end method

.method private getActiveMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 134
    :cond_0
    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 135
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0
.end method

.method private handleArtistCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V
    .locals 5
    .param p1, "metadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "artistName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "ArtistInformation"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleArtistNameCommand artistName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 101
    :cond_0
    const-string v2, "ArtistName"

    const-string v3, "Exist"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "ArtistName"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setResultParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCommand()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->getActiveMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->handleCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 78
    return-void
.end method

.method private handleCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "state":Ljava/lang/String;
    const-string v1, "ArtistPage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->handleArtistCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->unbindFromService()V

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "SongTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->handleTitleCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleTitleCommand(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V
    .locals 5
    .param p1, "metadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "songTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "CurrentSongInfo"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 126
    sget-object v2, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSongTitleCommand songTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "CelebSong"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v2, "SongTitle"

    const-string v3, "Exist"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "SongTitle"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setResultParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unbindFromService()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceCallbackRegistered:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 74
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ARTIST_DETAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SONG_TITLE"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;->bindToService()V

    .line 58
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
