.class public final Lcom/samsung/android/app/music/common/player/NowPlayingImpl;
.super Ljava/lang/Object;
.source "NowPlayingImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/INowPlaying;


# instance fields
.field private final mAnimationHide:Landroid/view/animation/Animation;

.field private final mAnimationShow:Landroid/view/animation/Animation;

.field private final mNowPlayingContainer:Landroid/view/View;

.field private final mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;)V
    .locals 4
    .param p1, "playerFragment"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 30
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 31
    .local v1, "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .line 33
    const v2, 0x7f1201f3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    .line 34
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/app/music/common/player/NowPlayingImpl$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/NowPlayingImpl$1;-><init>(Lcom/samsung/android/app/music/common/player/NowPlayingImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 43
    :cond_0
    const v2, 0x7f050014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mAnimationShow:Landroid/view/animation/Animation;

    .line 44
    const v2, 0x7f050013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mAnimationHide:Landroid/view/animation/Animation;

    .line 45
    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 50
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 51
    .local v2, "ft":Landroid/app/FragmentTransaction;
    sget-object v5, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 53
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz p1, :cond_2

    .line 54
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mAnimationShow:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    const/4 v5, 0x2

    .line 57
    invoke-virtual {v4, v5, p2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updatePlayerViewsBySurfaces(IZ)V

    .line 58
    if-nez v0, :cond_1

    .line 59
    new-instance v3, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {v3}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;-><init>()V

    .line 60
    .local v3, "queueFragment":Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getAlbumArt()Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setAlbumart(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V

    .line 61
    const v4, 0x7f1201f3

    sget-object v5, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 75
    .end local v3    # "queueFragment":Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 66
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mAnimationHide:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mNowPlayingContainer:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;->mPlayerFragment:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .line 69
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingLyrics()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 68
    :cond_3
    invoke-virtual {v5, v4, p2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updatePlayerViewsBySurfaces(IZ)V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
