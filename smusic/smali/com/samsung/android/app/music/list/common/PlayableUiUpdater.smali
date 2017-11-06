.class public Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "PlayableUiUpdater.java"


# instance fields
.field private final mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<+Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 26
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local v0    # "a":Landroid/app/Activity;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 27
    return-void

    .line 26
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method


# virtual methods
.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->startEqualizerAnimation()V

    .line 89
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->stopEqualizerAnimation()V

    .line 94
    return-void
.end method

.method public final updatePlaybackState(I)V
    .locals 2
    .param p1, "playbackState"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 67
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;-><init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlaybackState(I)V

    goto :goto_0
.end method

.method public updatePlayingAudioId(IJJ)V
    .locals 4
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J
    .param p4, "audioId"    # J

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;

    invoke-direct {v2, p0, p4, p5}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$1;-><init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;J)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlayingAudioId(J)V

    goto :goto_0
.end method

.method public updatePlayingAudioId(J)V
    .locals 3
    .param p1, "itemId"    # J

    .prologue
    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 46
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;-><init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlayingAudioId(J)V

    goto :goto_0
.end method
