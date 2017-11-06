.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockPlayerVisibilityController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;
    }
.end annotation


# static fields
.field private static final KEY_SHOW_NOW_PLAYING:Ljava/lang/String; = "key_show_now_playing"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlbumContainer:Landroid/view/View;

.field private final mAnimationHide:Landroid/view/animation/Animation;

.field private final mAnimationShow:Landroid/view/animation/Animation;

.field private final mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

.field private final mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

.field private final mOnLyricsViewVisibilityListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

.field private mPrimaryColor:I

.field private final mTitleContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "lyricsController"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .param p4, "lockPlayerAlbumArt"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;
    .param p5, "playerLogger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$1;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mOnLyricsViewVisibilityListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .line 670
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 672
    .local v0, "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mActivity:Landroid/app/Activity;

    .line 673
    const v1, 0x7f050016

    .line 674
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mAnimationShow:Landroid/view/animation/Animation;

    .line 675
    const v1, 0x7f050015

    .line 676
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mAnimationHide:Landroid/view/animation/Animation;

    .line 678
    const v1, 0x7f120256

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mAlbumContainer:Landroid/view/View;

    .line 679
    const v1, 0x7f120257

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mTitleContainer:Landroid/view/View;

    .line 681
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .line 683
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mOnLyricsViewVisibilityListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .line 684
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->addOnLyricViewVisibilityChangeListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 685
    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$2;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)V

    invoke-virtual {p4, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->setAlbumClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    invoke-direct {v1, p0, p2, p5}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    .line 694
    const v1, 0x7f110112

    .line 695
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mPrimaryColor:I

    .line 696
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mAnimationShow:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mPrimaryColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mAlbumContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mAnimationHide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;Landroid/view/View;Landroid/view/animation/Animation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/animation/Animation;
    .param p3, "x3"    # I

    .prologue
    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->setVisibilityWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mTitleContainer:Landroid/view/View;

    return-object v0
.end method

.method private setVisibilityWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .param p3, "visibility"    # I

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 722
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 723
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 725
    :cond_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mOnLyricsViewVisibilityListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .line 717
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->removeOnLyricViewVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 718
    return-void
.end method

.method restore(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 710
    if-eqz p1, :cond_0

    const-string v0, "key_show_now_playing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->show(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method save(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "key_show_now_playing"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    :cond_0
    return-void
.end method

.method setPrimaryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 699
    iput p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mPrimaryColor:I

    .line 700
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->mNowPlaying:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;->access$1200(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController$NowPlaying;)V

    .line 701
    return-void
.end method
