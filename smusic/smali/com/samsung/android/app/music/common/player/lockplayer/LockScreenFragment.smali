.class public final Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "LockScreenFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;,
        Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;,
        Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerRadioAlbumConverter;
    }
.end annotation


# static fields
.field static final BLUR_TRANS_TIME:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LockPlayer"

.field private static final SCALE_RATE_1:F = 0.1f

.field private static final SCALE_RATE_2:F = 0.2f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

.field private mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

.field private mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

.field private mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBackgroundRegistered:Z

.field private mIsFirstLaunch:Z

.field private final mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

.field private mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

.field private mLockPlayerPlayingItemText:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;

.field private mLockPlayerPrimaryColorUpdater:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

.field private mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

.field private mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private mQueueType:I

.field private mVisibilityController:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    .line 99
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getLockPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 127
    iput v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mQueueType:I

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsBackgroundRegistered:Z

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsFirstLaunch:Z

    .line 547
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$8;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->launchPlayer(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/music/common/player/FavoriteController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->finishWithClearFlag()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mVisibilityController:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    return-object v0
.end method

.method private adjustQueueType(I)V
    .locals 11
    .param p1, "queueType"    # I

    .prologue
    const v10, 0x7f120251

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 452
    iget v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mQueueType:I

    if-ne v7, p1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 455
    :cond_0
    sget-object v7, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last queue-type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mQueueType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", New queue-type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 460
    .local v4, "rootView":Landroid/view/View;
    iput p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mQueueType:I

    .line 461
    if-ne p1, v5, :cond_2

    move v2, v5

    .line 463
    .local v2, "isRadioQueue":Z
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->reset()V

    .line 465
    if-eqz v2, :cond_3

    .line 466
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v3

    .line 467
    .local v3, "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    new-instance v7, Lcom/samsung/android/app/music/common/RadioPlayerController;

    invoke-direct {v7}, Lcom/samsung/android/app/music/common/RadioPlayerController;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 468
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 469
    if-eqz v4, :cond_1

    .line 470
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    .line 471
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerRadioAlbumConverter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerRadioAlbumConverter;-><init>(Landroid/content/Context;)V

    .line 474
    .local v1, "converter":Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 486
    .local v0, "builder":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->switchControlButton(Z)V

    .line 487
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {v0, v7, v8, v9}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 488
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-virtual {v7, v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 489
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->setAlbumArtConverter(Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;)V

    .line 490
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getDefaultAlbumArt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->setDefaultAlbumResource(I)V

    .line 491
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    if-nez v2, :cond_5

    :goto_3
    invoke-virtual {v7, v5}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->setAlbumTagEnabled(Z)V

    .line 493
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerPlayingItemText:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 494
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerPrimaryColorUpdater:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 496
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 497
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 499
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 500
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    goto/16 :goto_0

    .end local v0    # "builder":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    .end local v1    # "converter":Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;
    .end local v2    # "isRadioQueue":Z
    .end local v3    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    :cond_2
    move v2, v6

    .line 461
    goto :goto_1

    .line 476
    .restart local v2    # "isRadioQueue":Z
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 477
    .restart local v3    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    new-instance v7, Lcom/samsung/android/app/music/common/ServicePlayerController;

    invoke-direct {v7}, Lcom/samsung/android/app/music/common/ServicePlayerController;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 478
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 479
    if-eqz v4, :cond_4

    .line 480
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 481
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_4
    const/4 v1, 0x0

    .line 484
    .restart local v1    # "converter":Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollable:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .restart local v0    # "builder":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    goto :goto_2

    :cond_5
    move v5, v6

    .line 491
    goto :goto_3
.end method

.method private finishWithClearFlag()V
    .locals 3

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 568
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 570
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 572
    :cond_0
    return-void
.end method

.method private initOptionView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    .line 308
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 309
    .local v1, "context":Landroid/content/Context;
    const v2, 0x7f120251

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 310
    .local v12, "dragView":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v2, v12, v7}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->addView(Landroid/view/View;F)V

    .line 313
    new-instance v0, Lcom/samsung/android/app/music/common/player/ShuffleController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/ShuffleController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;ZZ)V

    .line 315
    .local v0, "shuffleController":Lcom/samsung/android/app/music/common/player/ShuffleController;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/player/ShuffleController;->setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->prepareLockPlayerNowPlayingListFragment()V

    .line 319
    const v2, 0x7f120254

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 320
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v2, v12, v7}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->addView(Landroid/view/View;F)V

    .line 323
    new-instance v2, Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-direct {v2, p1, p2, v3, v7}, Lcom/samsung/android/app/music/common/player/FavoriteController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/music/common/player/BackgroundWorker;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 325
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setAnimationEnabled(Z)V

    .line 326
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    new-instance v3, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$4;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setFavoriteMaximumReachedCallback(Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;)V

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V

    .line 340
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    new-instance v3, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$5;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/player/FavoriteController;->setOnFavoriteIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    new-instance v6, Lcom/samsung/android/app/music/common/player/RepeatController;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object v7, v1

    move-object v8, p2

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/music/common/player/RepeatController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;ZZ)V

    .line 352
    .local v6, "repeatController":Lcom/samsung/android/app/music/common/player/RepeatController;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/music/common/player/RepeatController;->setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V

    .line 353
    return-void
.end method

.method private initViews(Landroid/app/Activity;Landroid/view/View;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const v12, 0x3dcccccd    # 0.1f

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 214
    .local v9, "context":Landroid/content/Context;
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    .line 218
    new-instance v11, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;

    invoke-direct {v11, p2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;-><init>(Landroid/view/View;)V

    .line 219
    .local v11, "lockPlayerShortText":Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;

    invoke-direct {v0, p0, v9}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/content/Context;)V

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->setTextClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v0, 0x7f120252

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 230
    .local v10, "dragView":Landroid/view/View;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->addView(Landroid/view/View;F)V

    .line 233
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 237
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleScrollable:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    const v0, 0x7f120258

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 241
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v0, p2, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;-><init>(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getLockPlayerLyricsLogger()Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricsLogger(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 245
    const v0, 0x7f120255

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v0, v10, v12}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->addView(Landroid/view/View;F)V

    .line 249
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v0, v9, p2, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerPlayingItemText:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerPlayingItemText:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 254
    new-instance v0, Lcom/samsung/android/app/music/common/ServicePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/ServicePlayerController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 258
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;

    invoke-direct {v1, p0, v9}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->setOnPlayerControlListener(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;)V

    .line 279
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const v6, 0x7f02010a

    const v7, 0x7f020108

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$3;

    invoke-direct {v1, p0, v9}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$3;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v0, 0x7f120259

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v0, v10, v12}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->addView(Landroid/view/View;F)V

    .line 293
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_EDGE_LIGHTING_EFFECT:Z

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const v3, 0x7f120101

    const v4, 0x7f11003d

    const v5, 0x7f11003e

    const v6, 0x7f0d04b2

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;IIIIZ)V

    .line 299
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    move-result-object v8

    .line 300
    .local v8, "backgroundFadeController":Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 302
    .end local v8    # "backgroundFadeController":Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->initOptionView(Landroid/app/Activity;Landroid/view/View;)V

    .line 303
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerPrimaryColorUpdater:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerPrimaryColorUpdater;

    .line 305
    return-void
.end method

.method private launchPlayer(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 382
    const-string v1, "SMUSIC-LockPlayer"

    const-string v2, "launch Player"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->unregisterReceiver()V

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$7;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    return-void
.end method

.method private prepareLockPlayerNowPlayingListFragment()V
    .locals 5

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 412
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 414
    .local v2, "ft":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 416
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;-><init>()V

    .line 418
    .restart local v0    # "fg":Landroid/app/Fragment;
    const v3, 0x7f120254

    sget-object v4, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 420
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 421
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 423
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 525
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 526
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    .local v1, "f":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.app.music.core.state.FINISHED_HIDE_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 530
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsBackgroundRegistered:Z

    .line 532
    .end local v1    # "f":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private switchControlButton(Z)V
    .locals 4
    .param p1, "isRadioQueue"    # Z

    .prologue
    .line 504
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getPrevView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 505
    .local v1, "prev":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayController:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 506
    .local v0, "next":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 507
    if-eqz p1, :cond_2

    .line 508
    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 514
    if-eqz p1, :cond_3

    .line 515
    const v2, 0x7f020072

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    if-nez p1, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->setForwardRewindEnabled(Z)V

    .line 521
    return-void

    .line 510
    :cond_2
    const v2, 0x7f0201e2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 517
    :cond_3
    const v2, 0x7f0201db

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 520
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 536
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsBackgroundRegistered:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 539
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsBackgroundRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SMUSIC-LockPlayer"

    const-string/jumbo v3, "unregisterReceiver Already unregistered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 448
    const-string v0, "520"

    return-object v0
.end method

.method public maxTransVI()V
    .locals 6

    .prologue
    .line 360
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->maxTransView()V

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 366
    :cond_0
    const v2, 0x7f120100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .line 367
    .local v0, "blurImageView":Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
    new-instance v2, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$6;-><init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    .line 145
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->registerReceiver()V

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    const v0, 0x7f0400c3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->unregisterReceiver()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFavoriteController:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->release()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mBackgroundWorker:Lcom/samsung/android/app/music/common/player/BackgroundWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->quit()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mVisibilityController:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->destroy()V

    .line 207
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 208
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 440
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->adjustQueueType(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 427
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 431
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
    .line 436
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mVisibilityController:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->save(Landroid/os/Bundle;)V

    .line 191
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsFirstLaunch:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mIsFirstLaunch:Z

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendScreenId(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 185
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    .line 186
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 160
    .local v6, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->setNavigationBackground()V

    .line 162
    invoke-direct {p0, v6, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->initViews(Landroid/app/Activity;Landroid/view/View;)V

    .line 163
    new-instance v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mLockPlayerAlbumArt:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mVisibilityController:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mVisibilityController:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerVisibilityController;->restore(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public resetVI()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->resetTrans()V

    .line 379
    return-void
.end method

.method public updateVI(FF)V
    .locals 1
    .param p1, "distance"    # F
    .param p2, "maxDistance"    # F

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->mDragVIManager:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->transView(FF)V

    .line 357
    return-void
.end method
