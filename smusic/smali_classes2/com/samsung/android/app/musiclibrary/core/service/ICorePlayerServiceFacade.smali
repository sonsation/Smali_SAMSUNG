.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
.super Ljava/lang/Object;
.source "ICorePlayerServiceFacade.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade$ExtraInformation;,
        Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade$CustomEvent;
    }
.end annotation


# virtual methods
.method public abstract addQueue([JIZI)V
.end method

.method public abstract addQueueItems(Ljava/util/List;IZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZI)V"
        }
    .end annotation
.end method

.method public abstract audioPathChanged(Landroid/content/Intent;)V
.end method

.method public abstract autoOff()V
.end method

.method public abstract batteryChanged(II)V
.end method

.method public abstract becomingNoisy()V
.end method

.method public abstract buffering()I
.end method

.method public abstract changeSetting(Landroid/os/Bundle;)V
.end method

.method public abstract completePlayingInternal(Z)V
.end method

.method public abstract dlnaConnectionChanged(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract dlnaConnectionRequested(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract dlnaDisconnectionRequested()V
.end method

.method public abstract easyModeEnabled(Z)V
.end method

.method public abstract exit()V
.end method

.method public abstract getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getExtraInformation(I)Ljava/lang/String;
.end method

.method public abstract getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end method

.method public abstract getMusicExtras()Landroid/os/Bundle;
.end method

.method public abstract getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end method

.method public abstract getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end method

.method public abstract getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end method

.method public abstract getPlayingItemExtras()Landroid/os/Bundle;
.end method

.method public abstract getPrevItem()Landroid/media/session/MediaSession$QueueItem;
.end method

.method public abstract getQueueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end method

.method public abstract getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end method

.method public abstract getRepeat()I
.end method

.method public abstract getShuffle()I
.end method

.method public abstract hideNotification()V
.end method

.method public abstract isEnableToPlaying()Z
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract moveQueueItem(II)V
.end method

.method public abstract onCustomEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onCustomEvent(ILjava/lang/String;)V
.end method

.method public abstract onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract openQueue(ILjava/lang/String;[JLjava/util/List;IZJ)V
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
.end method

.method public abstract openQueue(Ljava/lang/String;[JLjava/util/List;IZJ)V
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
.end method

.method public abstract openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V
.end method

.method public abstract openQueuePosition(IIZ)V
.end method

.method public abstract playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract privateModeOff()V
.end method

.method public abstract pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
.end method

.method public abstract reloadMeta()V
.end method

.method public abstract reloadQueue()V
.end method

.method public abstract removeQueueAudioIds([J)I
.end method

.method public abstract removeQueuePosition([I)I
.end method

.method public abstract setHdmiConnected(Z)V
.end method

.method public abstract setQueueMode(II)V
.end method

.method public abstract setWfdState(I)V
.end method

.method public abstract setWfdState(ZZ)V
.end method

.method public abstract stop()V
.end method

.method public abstract toggleFavorite()V
.end method

.method public abstract toggleQueueMode(I)I
.end method

.method public abstract unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
.end method

.method public abstract updateWidget()V
.end method

.method public abstract volumeChanged()V
.end method
