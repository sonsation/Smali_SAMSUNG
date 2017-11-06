.class public Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "RadioLyricsViewFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private final mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

.field private mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

.field private mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    return-void
.end method


# virtual methods
.method adjustQueueType(I)V
    .locals 2
    .param p1, "queueType"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 145
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 146
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v0, 0x7f040110

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 116
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->adjustQueueType(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 122
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onPauseCalled()V

    .line 103
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    .line 104
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 127
    return-void
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
    .line 133
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onResumeCalled()V

    .line 98
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 92
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 110
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    .line 111
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getRadioPlayerLyricsLogger()Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    .line 61
    const v1, 0x7f1201e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 62
    .local v0, "lyricsView":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v1, p1, v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;-><init>(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricsLogger(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->openView(Z)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 71
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment$1;-><init>(Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 79
    return-void
.end method
