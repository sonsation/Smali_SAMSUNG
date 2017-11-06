.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlaying"
.end annotation


# instance fields
.field private final mAlbumLyricsContainer:Landroid/view/View;

.field private final mNowPlayingContainer:Landroid/view/View;

.field private final mNowPlayingIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerLogger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    const v0, 0x7f120254

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingContainer:Landroid/view/View;

    .line 737
    const v0, 0x7f120255

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mAlbumLyricsContainer:Landroid/view/View;

    .line 738
    const v0, 0x7f120012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingIcon:Landroid/widget/ImageView;

    .line 741
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying$1;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 750
    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->applyNowPlayingIconColor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->toggleQueue()V

    return-void
.end method

.method private applyNowPlayingIconColor()V
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$500(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1500(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 810
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .line 808
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f110256

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 807
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private toggleQueue()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$500(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->show(Z)V

    .line 779
    return-void

    .line 778
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateContainer(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 782
    if-eqz p1, :cond_1

    .line 783
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    .line 785
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 792
    .local v1, "size":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 793
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 794
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mAlbumLyricsContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    .line 801
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "size":I
    :goto_1
    return-void

    .line 789
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02d3

    .line 790
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "size":I
    goto :goto_0

    .line 798
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    .line 799
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mAlbumLyricsContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V

    goto :goto_1
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->mNowPlayingContainer:Landroid/view/View;

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

.method show(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 753
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 754
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 755
    .local v2, "ft":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 756
    .local v0, "fg":Landroid/app/Fragment;
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->updateContainer(Z)V

    .line 757
    if-eqz p1, :cond_2

    .line 758
    if-nez v0, :cond_1

    .line 759
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;-><init>()V

    .line 760
    .restart local v0    # "fg":Landroid/app/Fragment;
    const v3, 0x7f120254

    sget-object v4, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 765
    :goto_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 773
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 774
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->applyNowPlayingIconColor()V

    .line 775
    return-void

    .line 763
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 767
    :cond_2
    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 769
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method
