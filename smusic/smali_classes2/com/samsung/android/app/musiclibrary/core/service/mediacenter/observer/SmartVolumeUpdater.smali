.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;
.super Ljava/lang/Object;
.source "SmartVolumeUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private mBaseVolume:I

.field private mIgnoreVolumeEvent:Z

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mSettingEnabled:Z

.field private mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "settingEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    .line 45
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 46
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 49
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    .line 50
    return-void
.end method

.method private adjustSmartVolume(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isDmrPlaying"    # Z

    .prologue
    .line 135
    if-eqz p2, :cond_1

    .line 136
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Don\'t Set Smart volume in AVPlayer mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isLocalContents(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 141
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getSongPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getVolume(ILjava/lang/String;)I

    move-result v1

    .line 147
    .local v1, "smartVolume":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v0

    .line 149
    .local v0, "maxVolume":I
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustSmartVolume mBaseVolume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    .line 154
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setVolume(I)V

    goto :goto_0
.end method

.method private ensureSmartVolume()V
    .locals 4

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    .line 65
    .local v0, "base":J
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->setMaxVolumeLevel(I)V

    .line 71
    return-void
.end method

.method private setSmartVolumeEarSafety(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setSmartVolumeEnabled(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 198
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 160
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 8
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v5, :cond_0

    .line 165
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    if-eqz v5, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->ensureSmartVolume()V

    .line 167
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->resetBaseVolume(Z)V

    .line 172
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 173
    .local v2, "enabled":Z
    :goto_0
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPlaybackStateChanged mSettingEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isPlaying = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-wide/16 v0, 0x0

    .line 179
    .local v0, "base":J
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolumeEarSafety(Z)V

    .line 180
    if-eqz v2, :cond_1

    .line 181
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v6, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 182
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 181
    :goto_1
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->adjustSmartVolume(Ljava/lang/String;Z)V

    .line 188
    .end local v0    # "base":J
    .end local v2    # "enabled":Z
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 172
    goto :goto_0

    .restart local v0    # "base":J
    .restart local v2    # "enabled":Z
    :cond_3
    move v3, v4

    .line 183
    goto :goto_1
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
    .line 193
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolumeEarSafety(Z)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->release()I

    .line 58
    :cond_0
    return-void
.end method

.method public resetBaseVolume(Z)V
    .locals 2
    .param p1, "checkIgnore"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mIgnoreVolumeEvent:Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v0

    .line 114
    .local v0, "curVolume":I
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->resetBaseValue()V

    .line 120
    :cond_2
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    goto :goto_0
.end method

.method public setSmartVolume(Z)V
    .locals 10
    .param p1, "isOn"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "base":J
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v5, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->ensureSmartVolume()V

    .line 78
    :cond_0
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSmartVolume mSettingEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    if-eq v5, p1, :cond_1

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSettingEnabled:Z

    .line 86
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v4

    .line 87
    .local v4, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    .line 89
    .local v2, "isPlaying":Z
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    move v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->setSmartVolumeEarSafety(Z)V

    .line 90
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mSmartVolumeManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->resetValues()V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mBaseVolume:I

    .line 93
    if-eqz v2, :cond_1

    .line 94
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v8, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 95
    invoke-virtual {v5, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 96
    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;->adjustSmartVolume(Ljava/lang/String;Z)V

    .line 105
    .end local v2    # "isPlaying":Z
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_1
    return-void

    .restart local v2    # "isPlaying":Z
    .restart local v4    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_2
    move v5, v7

    .line 89
    goto :goto_0

    .restart local v3    # "path":Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 97
    goto :goto_1
.end method
