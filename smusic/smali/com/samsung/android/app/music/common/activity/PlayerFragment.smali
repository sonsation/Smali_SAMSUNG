.class public Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/PlayerControllable;
.implements Lcom/samsung/android/app/music/common/player/SourceIdGetter;
.implements Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;,
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;,
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerShareableImpl;,
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;,
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;,
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;,
        Lcom/samsung/android/app/music/common/activity/PlayerFragment$SurfaceType;
    }
.end annotation


# static fields
.field private static final ARG_LAUNCH_WITH_QUEUE:Ljava/lang/String; = "arg_launch_with_queue"

.field private static final INTERVAL_INVALIDATE_OPTIONS_MENU:I = 0x64

.field private static final KEY_SHOW_NOW_PLAYING:Ljava/lang/String; = "key_show_now_playing"

.field private static final MILK_UX:Z

.field private static final PLAYERVIEWS_ANIMATION_DURATION:I = 0x190

.field public static final TAG:Ljava/lang/String;

.field private static final TAG_HDMI_DIALOG:Ljava/lang/String; = "hdmi_dialog"


# instance fields
.field private mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

.field private mAudioId:J

.field private final mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

.field private final mBleConnection:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

.field private mBleUiController:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

.field private mContext:Landroid/content/Context;

.field private mCpAttrs:I

.field private mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mHasMobileKeyboard:Z

.field private final mInvalidateOptionsMenuHandler:Landroid/os/Handler;

.field private mIsEmptyMedia:Z

.field private mIsExitTransitionView:Z

.field private mIsSmallScreenUiActivated:Z

.field private final mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

.field private mListType:I

.field private mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

.field private mMenuBehaviorCheckable:Lcom/samsung/android/app/musiclibrary/ui/MenuBehaviorCheckable;

.field private mMultiWindowHandler:Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

.field private final mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

.field private final mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private mPlayerType:I

.field private mQueueSize:I

.field private mRepeatController:Lcom/samsung/android/app/music/common/player/RepeatController;

.field private mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

.field private mShuffleController:Lcom/samsung/android/app/music/common/player/ShuffleController;

.field private mSoundPath:I

.field private mSourceId:Ljava/lang/String;

.field private mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

.field private mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

.field private mUhqUpscalerController:Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

.field private mUiType:I

.field private final mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field private mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    .line 194
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    sput-boolean v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->MILK_UX:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 196
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    .line 199
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getFullPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsExitTransitionView:Z

    .line 225
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioId:J

    .line 229
    iput v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mCpAttrs:I

    .line 231
    iput v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mListType:I

    .line 233
    iput v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerType:I

    .line 235
    iput v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSoundPath:I

    .line 257
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsEmptyMedia:Z

    .line 274
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mInvalidateOptionsMenuHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$2;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 1184
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

    .line 1376
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$12;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1391
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$13;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mBleConnection:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMultiWindowHandler:Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->invalidateOptionsMenuDelayed()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUhqUpscalerController:Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/view/PlayerTransitionController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/ShuffleController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mShuffleController:Lcom/samsung/android/app/music/common/player/ShuffleController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/RepeatController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mRepeatController:Lcom/samsung/android/app/music/common/player/RepeatController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/INowPlaying;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updateBleIcon()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->hideVolumePanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsSmallScreenUiActivated:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    return-object v0
.end method

.method private addOnLayoutChangeListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$3;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 436
    return-void
.end method

.method private canShowEmptyQueue()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1032
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1033
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->MILK_UX:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mQueueSize:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createNowPlaying(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    sget-boolean v4, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->MILK_UX:Z

    if-eqz v4, :cond_1

    .line 536
    new-instance v4, Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/common/player/MilkNowPlayingImpl;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    .line 542
    :goto_0
    if-nez p2, :cond_3

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 544
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v4, "arg_launch_with_queue"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 548
    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "showQueueImmediate":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 549
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/app/music/common/player/INowPlaying;->show(ZZ)V

    .line 551
    :cond_0
    return-void

    .line 538
    .end local v1    # "showQueueImmediate":Z
    :cond_1
    new-instance v4, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/common/player/NowPlayingImpl;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    goto :goto_0

    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_2
    move v1, v3

    .line 544
    goto :goto_1

    .line 546
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_3
    const-string v4, "key_show_now_playing"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "showQueueImmediate":Z
    goto :goto_1
.end method

.method private createOptionGroup(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 554
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    new-instance v7, Lcom/samsung/android/app/music/common/activity/PlayerFragment$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$5;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/PlayerControllable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    .line 562
    new-instance v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    check-cast v0, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;-><init>(Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    .line 563
    return-void
.end method

.method private hideVolumePanel()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->hideVolumePanel()V

    .line 1004
    :cond_0
    return-void
.end method

.method private initializeViews(Landroid/app/Activity;Landroid/view/View;)V
    .locals 23
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 567
    new-instance v5, Lcom/samsung/android/app/music/common/ServicePlayerController;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/ServicePlayerController;-><init>()V

    .line 568
    .local v5, "servicePlayerController":Lcom/samsung/android/app/music/common/ServicePlayerController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/ServicePlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 571
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 573
    .local v6, "forwardRewindInputListener":Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
    new-instance v3, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;)V

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->setOnPlayerControlListener(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;)V

    .line 576
    new-instance v2, Lcom/samsung/android/app/music/common/player/SeekController;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/common/player/SeekController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;ZLcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 579
    .local v2, "seekController":Lcom/samsung/android/app/music/common/player/SeekController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 582
    const v3, 0x7f1201f0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewStub;

    .line 583
    .local v22, "stub":Landroid/view/ViewStub;
    if-eqz v22, :cond_0

    .line 584
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1201e1

    .line 585
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 587
    .local v20, "lyricsView":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    sget-boolean v3, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->MILK_UX:Z

    if-eqz v3, :cond_6

    sget-object v17, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    .line 589
    .local v17, "builder":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 591
    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;-><init>(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;)V

    .line 593
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->addOnLyricViewVisibilityChangeListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getFullPlayerLyricsLogger()Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricsLogger(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 599
    .end local v17    # "builder":Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
    .end local v20    # "lyricsView":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    :cond_0
    new-instance v15, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1, v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 601
    .local v15, "albumCoverView":Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {v3, v15}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 602
    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v15, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$UpdateAlbumArtListener;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->setOnUpdateAlbumArtListener(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PlayerFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$6;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/player/SeekController;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->setOnScrollStateChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 615
    new-instance v21, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 617
    .local v21, "playingItemText":Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUiType:I

    if-nez v3, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 618
    new-instance v3, Lcom/samsung/android/app/music/common/activity/PlayerFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$7;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->setTextClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 628
    new-instance v7, Lcom/samsung/android/app/music/common/player/ShuffleController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/common/player/ShuffleController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mShuffleController:Lcom/samsung/android/app/music/common/player/ShuffleController;

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mShuffleController:Lcom/samsung/android/app/music/common/player/ShuffleController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/ShuffleController;->setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V

    .line 631
    new-instance v7, Lcom/samsung/android/app/music/common/player/RepeatController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/common/player/RepeatController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mRepeatController:Lcom/samsung/android/app/music/common/player/RepeatController;

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mRepeatController:Lcom/samsung/android/app/music/common/player/RepeatController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/RepeatController;->setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V

    .line 636
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const v13, 0x7f02010a

    const v14, 0x7f020108

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;II)V

    .line 641
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->supportUpscalerInArtwork(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 642
    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v7}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUhqUpscalerController:Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUhqUpscalerController:Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 649
    :cond_2
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PlayerFragment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$8;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mBleConnection:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$OnIconLifecycleCallback;Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mBleUiController:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mBleUiController:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 675
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p1

    .line 676
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    new-instance v4, Lcom/samsung/android/app/music/common/player/DexSeekController;

    invoke-direct {v4, v5}, Lcom/samsung/android/app/music/common/player/DexSeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 677
    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 678
    new-instance v18, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    .line 680
    invoke-interface {v4}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->getDexVolumeController()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .local v18, "dexPlayerInputController":Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
    move-object/from16 v3, p1

    .line 681
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 685
    .end local v18    # "dexPlayerInputController":Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyGestureFeatures;->isSupportGestureAirMotion()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 686
    new-instance v19, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 688
    .local v19, "legacyAirBrowseController":Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 692
    .end local v19    # "legacyAirBrowseController":Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseController;
    :cond_4
    new-instance v3, Lcom/samsung/android/app/music/common/player/TintColorsController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v7}, Lcom/samsung/android/app/music/common/player/TintColorsController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 694
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_EDGE_LIGHTING_EFFECT:Z

    if-eqz v3, :cond_5

    .line 696
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const v10, 0x7f120101

    const v11, 0x7f11003d

    const v12, 0x7f11003e

    const v13, 0x7f0d04b2

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;IIIIZ)V

    .line 700
    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    move-result-object v16

    .line 701
    .local v16, "backgroundFadeController":Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 703
    .end local v16    # "backgroundFadeController":Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    :cond_5
    return-void

    .line 587
    .end local v15    # "albumCoverView":Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .end local v21    # "playingItemText":Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;
    .restart local v20    # "lyricsView":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    :cond_6
    sget-object v17, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;->StyleTitleFixed:Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;

    goto/16 :goto_0
.end method

.method private invalidateOptionsMenuDelayed()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 993
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMenuBehaviorCheckable:Lcom/samsung/android/app/musiclibrary/ui/MenuBehaviorCheckable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/MenuBehaviorCheckable;->isMenuOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mInvalidateOptionsMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mInvalidateOptionsMenuHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isAvailablePlayer()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1019
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 1020
    .local v0, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isLocalMode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isCanSupportAnimation()Z
    .locals 1

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsSmallScreenUiActivated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDLNAConnected(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1112
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocalMode()Z
    .locals 1

    .prologue
    .line 1027
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 1028
    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransitionDetailsEnabled(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1106
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingLyrics()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mCpAttrs:I

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransitionPlayerEnabled(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1102
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newInstance(Z)Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    .locals 3
    .param p0, "launchWithQueue"    # Z

    .prologue
    .line 296
    new-instance v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;-><init>()V

    .line 297
    .local v1, "fragment":Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_launch_with_queue"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 300
    return-object v1
.end method

.method private popQueue()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1008
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->canShowEmptyQueue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isAvailablePlayer()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 1009
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1010
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/app/music/common/player/INowPlaying;->show(ZZ)V

    .line 1011
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->show()V

    .line 1015
    .end local v0    # "handled":Z
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 1008
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1015
    goto :goto_1
.end method

.method private registerAudioStateChangedListener()V
    .locals 3

    .prologue
    .line 1169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1170
    .local v0, "f":Landroid/content/IntentFilter;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1171
    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1174
    return-void
.end method

.method private setOnApplyWindowInsetsListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 445
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$4;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 466
    return-void
.end method

.method private setOptionButtonsFocusable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;->setFocusable(Z)V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUhqUpscalerController:Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUhqUpscalerController:Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->setFocusable(Z)V

    .line 1099
    :cond_1
    return-void
.end method

.method private setUpTransitionController(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isTransitionEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 707
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    if-nez v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 711
    check-cast v0, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->isActivityTransitionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isTransitionPlayerEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    new-instance v0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    .line 714
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    .line 715
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setEnterTransitionView(Landroid/view/Window;Z)V

    .line 716
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->updateFakeAlbumView()V

    .line 723
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isTransitionPlayerEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->setShowFakeViewPendingRequest(Z)V

    goto :goto_1

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->setShowFakeViewPendingRequest(Z)V

    goto :goto_1
.end method

.method private showChangeDeviceDialog()V
    .locals 3

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1119
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v2, "device_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1122
    iget v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerType:I

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->newInstance(I)Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    move-result-object v0

    .line 1123
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    const-string v2, "device_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1125
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    :cond_0
    return-void
.end method

.method private showHdmiDialog()V
    .locals 4

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1161
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v2, "hdmi_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1162
    const v2, 0x7f0a0093

    const v3, 0x7f0a0094

    .line 1163
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->newInstance(II)Lcom/samsung/android/app/music/common/dialog/NotiDialog;

    move-result-object v0

    .line 1164
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/NotiDialog;
    const-string v2, "hdmi_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1166
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/NotiDialog;
    :cond_0
    return-void
.end method

.method private showWfdErrorMsg(I)V
    .locals 3
    .param p1, "exceptionalCase"    # I

    .prologue
    .line 1128
    const/4 v0, -0x1

    .line 1129
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 1153
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1156
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->showChangeDeviceDialog()V

    .line 1157
    return-void

    .line 1131
    :pswitch_1
    const v0, 0x7f0a022c

    .line 1132
    goto :goto_0

    .line 1134
    :pswitch_2
    sget v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->WFD_ERR_WIFI_DIRECT:I

    .line 1135
    goto :goto_0

    .line 1137
    :pswitch_3
    const v0, 0x7f0a0229

    .line 1138
    goto :goto_0

    .line 1140
    :pswitch_4
    const v0, 0x7f0a0227

    .line 1141
    goto :goto_0

    .line 1143
    :pswitch_5
    const v0, 0x7f0a0226

    .line 1144
    goto :goto_0

    .line 1146
    :pswitch_6
    const v0, 0x7f0a0228

    .line 1147
    goto :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private unregisterAudioStateChangedListener()V
    .locals 2

    .prologue
    .line 1178
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateBleIcon()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 855
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mBleUiController:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    if-nez v3, :cond_0

    .line 861
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsSmallScreenUiActivated:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    .line 859
    .local v1, "splitView":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingLyrics()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 860
    .local v0, "forceHide":Z
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mBleUiController:Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController;->updateBleConnectButton(Z)V

    goto :goto_0

    .end local v0    # "forceHide":Z
    .end local v1    # "splitView":Z
    :cond_2
    move v1, v2

    .line 858
    goto :goto_1

    .restart local v1    # "splitView":Z
    :cond_3
    move v0, v2

    .line 859
    goto :goto_2
.end method


# virtual methods
.method public deleteItems()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;->deleteItems()V

    .line 1230
    return-void
.end method

.method public getAlbumArt()Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    return-object v0
.end method

.method public getCpAttrs()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mCpAttrs:I

    return v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1240
    const-string v0, "301"

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 888
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->popQueue()Z

    move-result v1

    .line 889
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 890
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->closeView(Z)V

    .line 892
    const/4 v1, 0x1

    .line 895
    :cond_0
    if-eqz v1, :cond_1

    .line 896
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updateBleIcon()V

    .line 898
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMultiWindowHandler:Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    if-eqz v2, :cond_2

    .line 900
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isTransitionPlayerEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    .local v0, "forceShowAll":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMultiWindowHandler:Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;->adjustPlayerLayout(Z)V

    .line 903
    .end local v0    # "forceShowAll":Z
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBackPressed handled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return v1

    .line 900
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyMedia()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsEmptyMedia:Z

    return v0
.end method

.method public isLaunchableDetails()Z
    .locals 4

    .prologue
    .line 805
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingLyrics()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v0

    return v0
.end method

.method public isShowingQueue()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/INowPlaying;->isShown()Z

    move-result v0

    return v0
.end method

.method public launchChangePlayer(Z)V
    .locals 4
    .param p1, "showDataCheck"    # Z

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 749
    .local v0, "activity":Landroid/app/Activity;
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DATAPROMPT_POPUP:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 750
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->showDmrDataHelpDialog(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    const-string v3, "display"

    .line 756
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 755
    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result v1

    .line 757
    .local v1, "exceptionalCase":I
    if-nez v1, :cond_2

    .line 758
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->showChangeDeviceDialog()V

    goto :goto_0

    .line 761
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 762
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->showWfdErrorMsg(I)V

    goto :goto_0
.end method

.method public launchDetails(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 769
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isLaunchableDetails()Z

    move-result v4

    if-nez v4, :cond_0

    .line 793
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 773
    .local v0, "activity":Landroid/app/Activity;
    iget v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mListType:I

    invoke-static {v4}, Lcom/samsung/android/app/music/provider/MusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 774
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "uri":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 776
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "extra_uri_string"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    if-eqz p1, :cond_1

    .line 778
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 780
    :cond_1
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_FULL_PLAYER_TO_DETAILS:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isTransitionDetailsEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 781
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    if-eqz v4, :cond_2

    .line 782
    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->showFakeAlbumView()V

    .line 784
    :cond_2
    const-string/jumbo v4, "transition_name_details"

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .line 786
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->getAlbumView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v8

    .line 785
    invoke-static {v0, v4, v5}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionBundle(Landroid/app/Activity;Ljava/lang/String;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 787
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "is_enable_transition"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 790
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    const-string v4, "is_enable_transition"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public launchDmsDlnaDetailsDialog()V
    .locals 4

    .prologue
    .line 797
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mListType:I

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "uri":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mListType:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getNewInstance(Ljava/lang/String;I)Landroid/app/DialogFragment;

    move-result-object v1

    .line 800
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 306
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    .line 307
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLifeCycleCallbackObserver:Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    move-object v0, p1

    .line 310
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    move-object v0, p1

    .line 311
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MenuBehaviorCheckable;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMenuBehaviorCheckable:Lcom/samsung/android/app/musiclibrary/ui/MenuBehaviorCheckable;

    .line 312
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 313
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 315
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 320
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setHasOptionsMenu(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 322
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUiType:I

    .line 323
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isActivatedSmallScreenUi(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsSmallScreenUiActivated:Z

    .line 324
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mHasMobileKeyboard:Z

    .line 325
    sget-boolean v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->MILK_UX:Z

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 327
    new-instance v1, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    .line 329
    :cond_0
    if-nez p1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendScreenId(Ljava/lang/String;)V

    .line 332
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 529
    new-instance v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;

    const v1, 0x7f130013

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 530
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 531
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 338
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUiType:I

    packed-switch v1, :pswitch_data_0

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong uiType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUiType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :pswitch_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsSmallScreenUiActivated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const v0, 0x7f040082

    .line 361
    .local v0, "layout":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 348
    .end local v0    # "layout":I
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mHasMobileKeyboard:Z

    if-eqz v1, :cond_1

    .line 349
    const v0, 0x7f040081

    .restart local v0    # "layout":I
    goto :goto_0

    .line 351
    .end local v0    # "layout":I
    :cond_1
    const v0, 0x7f040080

    .line 354
    .restart local v0    # "layout":I
    goto :goto_0

    .line 356
    .end local v0    # "layout":I
    :pswitch_1
    const v0, 0x7f04008b

    .line 357
    .restart local v0    # "layout":I
    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;->release()V

    .line 521
    sget-boolean v0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->MILK_UX:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 524
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 525
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 512
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 514
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 515
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 980
    const-string v1, "com.samsung.android.app.music.core.state.ACTION_HDMI_PLUG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    const-string/jumbo v1, "soundPathType"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSoundPath:I

    .line 982
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSoundPath:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 983
    .local v0, "isHdmiConnected":Z
    :goto_0
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onExtraChanged() isHdmiConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->showHdmiDialog()V

    .line 988
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->invalidateOptionsMenuDelayed()V

    .line 990
    .end local v0    # "isHdmiConnected":Z
    :cond_1
    return-void

    .line 982
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 870
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsExitTransitionView:Z

    if-eqz v1, :cond_0

    .line 871
    const/4 v0, 0x0

    .line 884
    :goto_0
    return v0

    .line 874
    :cond_0
    const/4 v0, 0x0

    .line 875
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 878
    :cond_1
    if-nez v0, :cond_2

    const/16 v1, 0x70

    if-ne p1, v1, :cond_2

    .line 879
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->deleteItems()V

    .line 880
    const/4 v0, 0x1

    .line 883
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyDown() - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 913
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyUp() - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return v0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 919
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsEmptyMedia:Z

    .line 921
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 922
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 947
    :goto_0
    return-void

    .line 926
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsEmptyMedia:Z

    .line 928
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mAudioId:J

    .line 929
    const-string v1, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSourceId:Ljava/lang/String;

    .line 930
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 931
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->convertCpAttrsToListType(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mListType:I

    .line 933
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 934
    invoke-static {v0}, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->convertCpAttrsToUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 935
    .local v3, "baseUri":Landroid/net/Uri;
    const-string v1, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 936
    .local v4, "albumId":J
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0064

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 937
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    .line 940
    .end local v3    # "baseUri":Landroid/net/Uri;
    .end local v4    # "albumId":J
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mCpAttrs:I

    if-eq v1, v0, :cond_3

    .line 941
    iput v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mCpAttrs:I

    .line 943
    :cond_3
    const v1, 0x80002

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    if-eqz v1, :cond_4

    .line 944
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->updateTrackDetail(Landroid/content/Context;Ljava/lang/String;)V

    .line 946
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->invalidateOptionsMenuDelayed()V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "needToUpdate":Z
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerType:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 953
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerType:I

    .line 954
    const/4 v0, 0x1

    .line 956
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSoundPath:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 957
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mSoundPath:I

    .line 958
    const/4 v0, 0x1

    .line 960
    :cond_1
    if-eqz v0, :cond_2

    .line 961
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->invalidateOptionsMenuDelayed()V

    .line 963
    :cond_2
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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
    .line 968
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mQueueSize:I

    .line 969
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mQueueSize:I

    if-eqz v0, :cond_2

    .line 976
    :cond_0
    :goto_1
    return-void

    .line 968
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->canShowEmptyQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 479
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 481
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 488
    .local v0, "surfaceType":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updatePlayerViewsBySurfaces(IZ)V

    .line 489
    return-void

    .line 483
    .end local v0    # "surfaceType":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/INowPlaying;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    const/4 v0, 0x2

    .restart local v0    # "surfaceType":I
    goto :goto_0

    .line 486
    .end local v0    # "surfaceType":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "surfaceType":I
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 494
    const-string v0, "key_show_now_playing"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/INowPlaying;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 496
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->registerAudioStateChangedListener()V

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updateBleIcon()V

    .line 475
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mInvalidateOptionsMenuHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 503
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->unregisterAudioStateChangedListener()V

    .line 504
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    .line 505
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v10, 0x60000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 369
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    .line 370
    .local v2, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v2, :cond_0

    .line 371
    const-string v3, "FullPlayer"

    const/16 v6, 0xf

    new-array v6, v6, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/player/LaunchPlayerResponseExecutor;

    invoke-direct {v7, v2}, Lcom/samsung/android/app/music/bixby/executor/player/LaunchPlayerResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v7, v6, v5

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-direct {v7, v2, v8}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    aput-object v7, v6, v4

    const/4 v7, 0x2

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;

    invoke-direct {v8, v2}, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerRepeatExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerShuffleExecutor;

    invoke-direct {v8, v2}, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerShuffleExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerFavouriteExecutor;

    invoke-direct {v8, v2, p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/ChangePlayerFavouriteExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/player/PlayerControllable;)V

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/global/ShowPlayerQueueExecutor;

    invoke-direct {v8, v2, p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/ShowPlayerQueueExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/player/PlayerControllable;)V

    aput-object v8, v6, v7

    const/4 v7, 0x6

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/global/ShowPlayerLyricsExecutor;

    invoke-direct {v8, v2, p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/ShowPlayerLyricsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/player/PlayerControllable;)V

    aput-object v8, v6, v7

    const/4 v7, 0x7

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/SongTitleExecutor;

    invoke-direct {v8, v2}, Lcom/samsung/android/app/music/bixby/executor/player/kr/SongTitleExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    const/16 v7, 0x8

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/samsung/android/app/music/bixby/executor/player/kr/DownloadBasketExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v8, v6, v7

    const/16 v7, 0x9

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2, v9}, Lcom/samsung/android/app/music/bixby/executor/player/kr/MilkShareSongExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V

    aput-object v8, v6, v7

    const/16 v7, 0xa

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;

    invoke-direct {v8, v2, v1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchAlbumDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v8, v6, v7

    const/16 v7, 0xb

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-direct {v8, v2, v1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchArtistDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v8, v6, v7

    const/16 v7, 0xc

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2, v9}, Lcom/samsung/android/app/music/bixby/executor/player/kr/LaunchMusicVideoExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V

    aput-object v8, v6, v7

    const/16 v7, 0xd

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/global/LaunchAddToPlaylistExecutor;

    invoke-direct {v8, v2, v1}, Lcom/samsung/android/app/music/bixby/executor/player/global/LaunchAddToPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v8, v6, v7

    const/16 v7, 0xe

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;

    invoke-direct {v8, v2, v1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v8, v6, v7

    .line 371
    invoke-interface {v2, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    :cond_0
    move-object v3, v1

    .line 389
    check-cast v3, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->setNavigationBackground()V

    .line 390
    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    iget-boolean v6, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsSmallScreenUiActivated:Z

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;-><init>(Landroid/app/Fragment;Landroid/view/View;Z)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mMultiWindowHandler:Lcom/samsung/android/app/music/common/player/fullplayer/MultiWindowHandler;

    .line 392
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setOnApplyWindowInsetsListener(Landroid/view/View;)V

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->createNowPlaying(Landroid/view/View;Landroid/os/Bundle;)V

    .line 397
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->createOptionGroup(Landroid/app/Activity;Landroid/view/View;)V

    .line 399
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->initializeViews(Landroid/app/Activity;Landroid/view/View;)V

    .line 400
    if-nez p2, :cond_2

    move v3, v4

    :goto_0
    invoke-direct {p0, v1, p1, v3}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setUpTransitionController(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 402
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, "actionbarView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 405
    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    .end local v0    # "actionbarView":Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 407
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 411
    :cond_1
    new-instance v3, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerShareableImpl;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerShareableImpl;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/app/Fragment;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    .line 412
    new-instance v3, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;

    const v4, 0x7f0c0011

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/app/Fragment;I)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    .line 413
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    move v3, v5

    .line 400
    goto :goto_0
.end method

.method public setBixbyCrossSharePackages(Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # Ljava/lang/String;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->setBixbyCrossSharePackages(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public setExitTransitionView()V
    .locals 4

    .prologue
    .line 736
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mIsExitTransitionView:Z

    .line 737
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    if-eqz v1, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 739
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mTransitionController:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 740
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isTransitionPlayerEnabled(Landroid/app/Activity;)Z

    move-result v3

    .line 739
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setExitTransitionView(Landroid/view/Window;Z)V

    .line 742
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->closeView(Z)V

    .line 743
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->hideVolumePanel()V

    .line 744
    return-void
.end method

.method public share()V
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->share()V

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4027"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    return-void
.end method

.method public showLyrics()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 836
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->hasLyrics()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    :goto_0
    return v0

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingLyrics()Z

    move-result v2

    if-nez v2, :cond_2

    .line 840
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/music/common/player/INowPlaying;->show(ZZ)V

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->openViewIfHasLyrics(Z)V

    .line 845
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updateBleIcon()V

    move v0, v1

    .line 846
    goto :goto_0
.end method

.method public toggleQueue()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 810
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isShowingQueue()Z

    move-result v0

    .line 811
    .local v0, "isShowingQueue":Z
    if-eqz v0, :cond_1

    .line 812
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->show()V

    .line 816
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mNowPlaying:Lcom/samsung/android/app/music/common/player/INowPlaying;

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v3, v1, v2}, Lcom/samsung/android/app/music/common/player/INowPlaying;->show(ZZ)V

    .line 817
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updateBleIcon()V

    .line 818
    if-nez v0, :cond_0

    .line 819
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mContext:Landroid/content/Context;

    const-string v2, "QUEU"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->toggleQueue(Ljava/lang/Boolean;)V

    .line 822
    return-void

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mLyricsController:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->hide()V

    goto :goto_0

    .line 816
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateFavorite(Z)Z
    .locals 1
    .param p1, "isFavorite"    # Z

    .prologue
    .line 865
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->mOptionGroup:Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;->toggleFavorite(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePlayerViewsBySurfaces(IZ)V
    .locals 12
    .param p1, "surfaceType"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1040
    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1041
    .local v4, "isShowing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 1042
    .local v6, "rootView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 1043
    const v9, 0x7f1201ed

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1046
    .local v0, "album":Landroid/view/View;
    const v9, 0x7f1201f9

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1047
    .local v8, "uhqUpscalerTag":Landroid/view/View;
    const v9, 0x7f1201a9

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1048
    .local v3, "cover":Landroid/view/View;
    const v9, 0x7f1201ee

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1049
    .local v7, "title":Landroid/view/View;
    const v9, 0x7f1201ef

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1050
    .local v5, "option":Landroid/view/View;
    if-eqz v4, :cond_3

    const/4 v1, 0x0

    .line 1052
    .local v1, "alphaValue":F
    :goto_1
    if-eqz p2, :cond_4

    .line 1053
    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v1, v9, v10

    invoke-static {v9}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v10, 0x190

    .line 1054
    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1055
    .local v2, "anim":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;

    invoke-direct {v9, p0, v0, v8}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$10;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1065
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1066
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isCanSupportAnimation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1067
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x190

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1068
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1069
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x190

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 1070
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1082
    .end local v2    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_2
    if-nez v4, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setOptionButtonsFocusable(Z)V

    .line 1083
    if-nez v4, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v3, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 1084
    const/high16 v9, 0x10000

    invoke-virtual {v3, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1086
    .end local v0    # "album":Landroid/view/View;
    .end local v1    # "alphaValue":F
    .end local v3    # "cover":Landroid/view/View;
    .end local v5    # "option":Landroid/view/View;
    .end local v7    # "title":Landroid/view/View;
    .end local v8    # "uhqUpscalerTag":Landroid/view/View;
    :cond_1
    return-void

    .line 1040
    .end local v4    # "isShowing":Z
    .end local v6    # "rootView":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1050
    .restart local v0    # "album":Landroid/view/View;
    .restart local v3    # "cover":Landroid/view/View;
    .restart local v4    # "isShowing":Z
    .restart local v5    # "option":Landroid/view/View;
    .restart local v6    # "rootView":Landroid/view/View;
    .restart local v7    # "title":Landroid/view/View;
    .restart local v8    # "uhqUpscalerTag":Landroid/view/View;
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1073
    .restart local v1    # "alphaValue":F
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1074
    if-eqz v8, :cond_5

    .line 1075
    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1077
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isCanSupportAnimation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1078
    invoke-virtual {v7, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1079
    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1082
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1083
    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method
