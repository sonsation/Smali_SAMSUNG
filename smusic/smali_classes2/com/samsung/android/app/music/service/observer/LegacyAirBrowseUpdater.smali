.class public final Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;
.super Ljava/lang/Object;
.source "LegacyAirBrowseUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsGestureServiceStarted:Z

.field private mIsPlaying:Z

.field private mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

.field private mListCount:I

.field private final mServiceInterface:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mListCount:I

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsGestureServiceStarted:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsPlaying:Z

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mServiceInterface:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->registerAirBrowseChangedListener(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;)V

    .line 41
    return-void
.end method

.method private startGestureService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->isLockScreenAirBrowseEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 89
    .local v0, "isFeatureOn":Z
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGestureService() isFeatureOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-nez v0, :cond_0

    .line 91
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because player air gesture setting is off."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLockScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because lock screen is off or screen is off."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsPlaying:Z

    if-nez v1, :cond_3

    .line 101
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because it\'s not playing."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mListCount:I

    if-gt v1, v4, :cond_4

    .line 105
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because list item is one or none."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsGestureServiceStarted:Z

    if-eqz v1, :cond_5

    .line 109
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() already started."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->startAirBrowseService(Z)V

    .line 113
    iput-boolean v4, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsGestureServiceStarted:Z

    .line 114
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopGestureService()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsGestureServiceStarted:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->stopAirBrowseService()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsGestureServiceStarted:Z

    .line 121
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopGestureService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtraChanged() action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->startGestureService()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->stopGestureService()V

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->stopGestureService()V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 45
    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mListCount:I

    .line 46
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsPlaying:Z

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->startGestureService()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->stopGestureService()V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
    .line 60
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz p2, :cond_0

    .line 61
    const-string v0, "extra.list_length"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mListCount:I

    .line 63
    :cond_0
    return-void
.end method

.method public onSweepLeft()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mServiceInterface:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->next()Z

    .line 80
    return-void
.end method

.method public onSweepRight()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->mServiceInterface:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->prev(Z)Z

    .line 85
    return-void
.end method
