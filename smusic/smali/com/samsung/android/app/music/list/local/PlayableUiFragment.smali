.class public abstract Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "PlayableUiFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<TT;>;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# instance fields
.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mPlayableUiUpdater:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 33
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mPlayableUiUpdater:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mPlayableUiUpdater:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 56
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    .line 57
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 86
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 65
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 66
    .local v2, "albumId":J
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->updatePlayingAudioId(IJJ)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 71
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->updatePlaybackState(I)V

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
    .line 81
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 44
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 50
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 51
    return-void
.end method

.method protected final registerMediaChangeObserver()V
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 93
    :cond_0
    return-void
.end method

.method protected final unregisterMediaChangeObserver()V
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected final updatePlaybackState(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .prologue
    .line 111
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mPlayableUiUpdater:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlaybackState(I)V

    .line 112
    return-void
.end method

.method protected final updatePlayingAudioId(IJJ)V
    .locals 6
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J
    .param p4, "audioId"    # J

    .prologue
    .line 107
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mPlayableUiUpdater:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlayingAudioId(IJJ)V

    .line 108
    return-void
.end method

.method protected final updatePlayingItemAndState(J)V
    .locals 9
    .param p1, "playingItem"    # J

    .prologue
    .line 115
    .local p0, "this":Lcom/samsung/android/app/music/list/local/PlayableUiFragment;, "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    .line 116
    .local v6, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 117
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "albumId":J
    move-object v0, p0

    move-wide v4, p1

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->updatePlayingAudioId(IJJ)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v7

    .line 121
    .local v7, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->updatePlaybackState(I)V

    .line 122
    return-void
.end method
