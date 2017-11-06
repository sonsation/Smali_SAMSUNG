.class public Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;
.super Ljava/lang/Object;
.source "LegacyAirBrowseController.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsGestureServiceStarted:Z

.field private mIsPlaying:Z

.field private mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

.field private mListCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mListCount:I

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsGestureServiceStarted:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsPlaying:Z

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->registerAirBrowseChangedListener(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;)V

    .line 39
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 40
    return-void
.end method

.method private startGestureService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->isPlayerAirBrowseEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 113
    .local v0, "isFeatureOn":Z
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

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

    .line 114
    if-nez v0, :cond_0

    .line 115
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because player air gesture setting is off."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLockScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because lock screen is on."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsPlaying:Z

    if-nez v1, :cond_2

    .line 124
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because it\'s not playing."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mListCount:I

    if-gt v1, v4, :cond_3

    .line 128
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() can\'t start because list item is one or none."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsGestureServiceStarted:Z

    if-eqz v1, :cond_4

    .line 132
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService() already started."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->startAirBrowseService(Z)V

    .line 136
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsGestureServiceStarted:Z

    .line 137
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startGestureService"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopGestureService()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsGestureServiceStarted:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mLegacyAirBrowseManager:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->stopAirBrowseService()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsGestureServiceStarted:Z

    .line 144
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopGestureService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 99
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 74
    const-string v1, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 75
    .local v0, "listCount":I
    iget v1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mListCount:I

    if-eq v1, v0, :cond_0

    .line 76
    iput v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mListCount:I

    .line 78
    :cond_0
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->stopGestureService()V

    .line 60
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsPlaying:Z

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->startGestureService()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->stopGestureService()V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
    .line 94
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;->startGestureService()V

    .line 55
    return-void
.end method

.method public onStartCalled()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onStopCalled()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onSweepLeft()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNext()V

    .line 104
    return-void
.end method

.method public onSweepRight()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrev(Z)V

    .line 109
    return-void
.end method
