.class public Lcom/samsung/android/app/music/milk/radio/DialFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "DialFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;
.implements Lcom/samsung/android/app/music/milk/advertise/IAdSubcribeListener;
.implements Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;
.implements Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;
.implements Lcom/samsung/android/app/music/milk/radio/IDialFragment;
.implements Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;
.implements Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;
.implements Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;,
        Lcom/samsung/android/app/music/milk/radio/DialFragment$DialInterface;
    }
.end annotation


# static fields
.field private static final DELAY_UPDATE_POSITION:I = 0x12c

.field private static final DIAL_POSITION_UPDATE:Ljava/lang/Object;

.field private static final LOADING_TIMEOUT_MS:I = 0xafc8

.field private static final LOG_TAG:Ljava/lang/String; = "DialFragment"

.field private static final SAVE_SPINNER:Ljava/lang/String; = "save_spinner"

.field private static final VIEW_UPDATE:I


# instance fields
.field private bBufferingTimeoutSet:Z

.field private bLoadingTimeoutSet:Z

.field bottomMargin:I

.field private isResume:Z

.field private mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBufferingTimeoutRunnable:Ljava/lang/Runnable;

.field private mContentContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mControlsContent:Landroid/view/ViewGroup;

.field private mCurrentMyStation:Z

.field private mCurrentStationId:Ljava/lang/String;

.field private mCurrentTrackId:Ljava/lang/String;

.field protected mDialContainerView:Landroid/view/ViewGroup;

.field private mDialCtrContainer:Landroid/view/ViewGroup;

.field private mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

.field protected mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

.field private mEmptyBtn:Landroid/widget/TextView;

.field private mEmptyLayout:Landroid/view/ViewGroup;

.field private mEmptyPromptTxt:Landroid/widget/TextView;

.field private mExplicitView:Landroid/widget/TextView;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mIsLoadFinished:Z

.field private mIsMultiWindowMode:Z

.field private mIsPremiumUser:Z

.field public mIsShowLodingStick:Z

.field private mKeyboardOn:Z

.field private mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingCallback:Landroid/os/Handler$Callback;

.field private final mLoadingHandler:Landroid/os/Handler;

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mLoadingProgressContainer:Landroid/view/ViewGroup;

.field private mLoadingTimeoutRunnable:Ljava/lang/Runnable;

.field private mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

.field protected mNetworkSettingListener:Landroid/view/View$OnClickListener;

.field private mNoConnectionBanner:Landroid/view/ViewGroup;

.field private mNoConnectionBtn:Landroid/widget/LinearLayout;

.field private mNoConnectionBtnTxt:Landroid/widget/TextView;

.field private mNoConnectionContainer:Landroid/view/ViewGroup;

.field private mOptBtnCotainer:Landroid/widget/RelativeLayout;

.field private mPlayerContainerView:Landroid/view/ViewGroup;

.field private mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

.field private mRainbowProgress:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

.field private mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field protected mSettingsActivityListener:Landroid/view/View$OnClickListener;

.field private mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

.field private mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

.field private mSongTitleContainer:Landroid/widget/LinearLayout;

.field private mSpinnerContainer:Landroid/view/ViewGroup;

.field private mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

.field private mUIThreadHandler:Landroid/os/Handler;

.field private mUnsupportedCountryBanner:Landroid/view/ViewGroup;

.field private mUnsupportedCountryContainer:Landroid/view/ViewGroup;

.field onApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->DIAL_POSITION_UPDATE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 153
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsShowLodingStick:Z

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$1;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNetworkSettingListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$2;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingsActivityListener:Landroid/view/View$OnClickListener;

    .line 210
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    .line 212
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgressContainer:Landroid/view/ViewGroup;

    .line 214
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 234
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$3;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->onApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 278
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 280
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 290
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsPremiumUser:Z

    .line 293
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bLoadingTimeoutSet:Z

    .line 295
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$4;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingCallback:Landroid/os/Handler$Callback;

    .line 303
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingHandler:Landroid/os/Handler;

    .line 305
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bBufferingTimeoutSet:Z

    .line 313
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->isResume:Z

    .line 321
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$5;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 404
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$6;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 419
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    .line 429
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mControlsContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->updateView()V

    return-void
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/music/milk/radio/DialFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setDialVisible()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgressContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsPremiumUser:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Loader;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->createDialCursorLoader(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Loader;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->createVisibleGenresLoader()Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setFeatures()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Lcom/samsung/android/app/music/common/model/Track;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    return-object v0
.end method

.method private createDialCursorLoader(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Loader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "premiumUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Z)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1289
    if-eqz p3, :cond_0

    .line 1290
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->createDefaultLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->createDefaultFreeUserLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    goto :goto_0
.end method

.method private createVisibleGenresLoader()Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1297
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "genre_type NOT NULL AND genre_type != 2 AND genre_is_visible = 1"

    const-string v6, "genre_ordinal"

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCurrentStation()Lcom/samsung/android/app/music/common/model/Station;
    .locals 2

    .prologue
    .line 1761
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1766
    :goto_0
    return-object v1

    .line 1765
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "stationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentTrack()Lcom/samsung/android/app/music/common/model/Track;
    .locals 3

    .prologue
    .line 1751
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v2, :cond_0

    .line 1752
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1757
    :goto_0
    return-object v2

    .line 1755
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, "trackId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 1757
    .local v0, "stationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    goto :goto_0
.end method

.method private isLoginUser()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1776
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1782
    :cond_0
    :goto_0
    return v1

    .line 1780
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 1782
    .local v0, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSmartStationEnabled()Z
    .locals 1

    .prologue
    .line 1606
    const/4 v0, 0x1

    .line 1607
    .local v0, "ret":Z
    return v0
.end method

.method private onMetadataChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1770
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.common.service.last_station_id"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "stationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.common.service.last_radio_track_id"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1772
    .local v1, "trackId":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->onMetadataChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    return-void
.end method

.method private onMetadataChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 1649
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1650
    :cond_0
    const-string v5, "DialFragment"

    const-string/jumbo v6, "onMetadataChanged : Preference is not set."

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :goto_0
    return-void

    .line 1654
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v3

    .line 1655
    .local v3, "track":Lcom/samsung/android/app/music/common/model/Track;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    .line 1656
    .local v2, "station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v4, ""

    .line 1657
    .local v4, "trackTitle":Ljava/lang/String;
    const-string v0, ""

    .line 1658
    .local v0, "artistName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1659
    .local v1, "explicit":I
    if-eqz v3, :cond_4

    .line 1660
    const-string v5, "DialFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMetadataChanged : current track Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", track id - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1662
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1660
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1664
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    .line 1666
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1667
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getArtistNames()Ljava/lang/String;

    move-result-object v0

    .line 1670
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getExplicit()I

    move-result v1

    .line 1672
    const-string v5, "DialFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onMetadataChanged] track id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1673
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , lyricUrl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", syncLyricUrl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1674
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1672
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    if-eqz v5, :cond_5

    .line 1678
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->setLyricVisibility(I)V

    .line 1679
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->btnDisable()V

    .line 1682
    :cond_5
    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setStationSongArtistLabels(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1683
    sget-object v6, Lcom/samsung/android/app/music/milk/radio/DialFragment;->DIAL_POSITION_UPDATE:Ljava/lang/Object;

    monitor-enter v6

    .line 1684
    if-nez v2, :cond_6

    .line 1685
    :try_start_0
    const-string v5, "DialFragment"

    const-string/jumbo v7, "onMetadataChanged : station is null"

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    monitor-exit v6

    goto/16 :goto_0

    .line 1719
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1688
    :cond_6
    :try_start_1
    const-string v7, "DialFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMetadataChanged : current Station Id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", station id - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1689
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", IsMyStation - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_7

    .line 1690
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1688
    invoke-static {v7, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1692
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1694
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v5, :cond_9

    .line 1695
    const-string v5, "DialFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onMetadataChanged] mLastChangedTrack : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1696
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/Track;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1695
    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->containTrack(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1698
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getLastSelectedTrackId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 1699
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getLastSelectedTrackId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1700
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1701
    monitor-exit v6

    goto/16 :goto_0

    .line 1690
    :cond_7
    const-string v5, "null"

    goto :goto_1

    .line 1703
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->cleanHash()V

    .line 1710
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1712
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->isDialing()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1713
    const-string v5, "DialFragment"

    const-string/jumbo v7, "onMetadataChanged : it is Dialing. so skip!!"

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    monitor-exit v6

    goto/16 :goto_0

    .line 1706
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->cleanHash()V

    goto :goto_2

    .line 1716
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1718
    const-string v5, "DialFragment"

    const-string/jumbo v7, "onMetadataChanged : send UpdateView"

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private radioButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setEnable(Z)V

    .line 1787
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setEnable(Z)V

    .line 1788
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setEnableSpinner(Z)V

    .line 1789
    return-void
.end method

.method private setDialVisible()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 1792
    const-string v3, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDialVisible] mIsMultiWindowMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    if-eqz v3, :cond_2

    .line 1794
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_0

    .line 1795
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1796
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mOptBtnCotainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1797
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1814
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showDialView(Z)V

    .line 1821
    :goto_1
    return-void

    .line 1799
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1800
    .local v0, "screenHeightDp":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1801
    .local v1, "small":I
    const-string v3, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDialVisible] screenHeightDp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v3, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDialVisible] small : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const/16 v3, 0x186

    if-ge v0, v3, :cond_1

    .line 1805
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1806
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mOptBtnCotainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1807
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1809
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1810
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mOptBtnCotainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1811
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1816
    .end local v0    # "screenHeightDp":I
    .end local v1    # "small":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1817
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mOptBtnCotainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1818
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1819
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showDialView(Z)V

    goto :goto_1
.end method

.method private setEmptyView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1841
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1843
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "mobile_data"

    .line 1844
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1846
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyPromptTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 1847
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0382

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1846
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 1850
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1851
    .local v0, "spanString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1852
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingsActivityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1864
    .end local v0    # "spanString":Landroid/text/SpannableString;
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyPromptTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 1857
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0444

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1856
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 1859
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0445

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1860
    .restart local v0    # "spanString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1861
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNetworkSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setFeatures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1136
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->enableIfAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setMarginForJustForYou(Z)V

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 1141
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v0

    .line 1142
    .local v0, "premium":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v5, :cond_4

    .line 1143
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1144
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showUnsupportedCountryView(I)V

    .line 1145
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showNoConncetionView(I)V

    .line 1147
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->radioButtonEnable(Z)V

    .line 1149
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(Z)V

    .line 1166
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsPremiumUser:Z

    if-eq v1, v0, :cond_1

    .line 1167
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsPremiumUser:Z

    .line 1169
    const-string v1, "DialFragment"

    const-string/jumbo v2, "setFeatures : restart loader because displaylist or premiumuser status is changed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f120026

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1173
    invoke-virtual {v1, v2, v6, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f120027

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v6, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1177
    :cond_1
    return-void

    .line 1151
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showNoConncetionView(I)V

    .line 1152
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1153
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mControlsContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1154
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1156
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showUnsupportedCountryView(I)V

    .line 1157
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->radioButtonEnable(Z)V

    goto :goto_0

    .line 1160
    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showUnsupportedCountryView(I)V

    .line 1161
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showNoConncetionView(I)V

    .line 1162
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->radioButtonEnable(Z)V

    .line 1163
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(Z)V

    goto :goto_0
.end method

.method private setStationSongArtistLabels(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "trackTitle"    # Ljava/lang/String;
    .param p2, "artistName"    # Ljava/lang/String;
    .param p3, "explicit"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 978
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 982
    if-nez p3, :cond_2

    .line 983
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mExplicitView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 988
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a033e

    .line 989
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    .line 989
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 990
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 988
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 993
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 994
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setVisibility(I)V

    .line 995
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a032e

    .line 996
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 995
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    .line 996
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 997
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 995
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->checkNeededScroll()Z

    move-result v1

    .line 1001
    .local v1, "songScroll":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->checkNeededScroll()Z

    move-result v0

    .line 1003
    .local v0, "artistScroll":Z
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1004
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1005
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1007
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setMarqueeRepeatLimit(I)V

    .line 1008
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setMarqueeRepeatLimit(I)V

    .line 1010
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    new-instance v3, Lcom/samsung/android/app/music/milk/radio/DialFragment$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$12;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V

    .line 1017
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    new-instance v3, Lcom/samsung/android/app/music/milk/radio/DialFragment$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$13;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V

    .line 1036
    :goto_1
    return-void

    .line 985
    .end local v0    # "artistScroll":Z
    .end local v1    # "songScroll":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mExplicitView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1024
    .restart local v0    # "artistScroll":Z
    .restart local v1    # "songScroll":Z
    :cond_3
    if-eqz v1, :cond_5

    .line 1025
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1026
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1027
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setMarqueeRepeatLimit(I)V

    .line 1033
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V

    .line 1034
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V

    goto :goto_1

    .line 1028
    :cond_5
    if-eqz v0, :cond_4

    .line 1029
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1030
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 1031
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setMarqueeRepeatLimit(I)V

    goto :goto_2
.end method

.method private showDialView(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 1824
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialContainerView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1825
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->enable(Z)V

    .line 1826
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1827
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1829
    .local v0, "centerAlign":Z
    const-string v2, "DialFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialView. centerAlign - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", show - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    move-object v2, v1

    .line 1832
    check-cast v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const v3, 0x7f12030b

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1836
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1838
    .end local v0    # "centerAlign":Z
    :cond_0
    return-void

    .line 1824
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .restart local v0    # "centerAlign":Z
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object v2, v1

    .line 1834
    check-cast v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const v3, 0x7f12030f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_1
.end method

.method private updateMenuBadgeLaunchSetting(Landroid/view/Menu;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 938
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/view/SemMenuItem;

    .line 939
    .local v1, "item":Landroid/view/SemMenuItem;
    if-nez v1, :cond_0

    .line 950
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_player_pref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 944
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 945
    .local v0, "badge":Z
    if-eqz v0, :cond_1

    .line 946
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a04af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1095
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/DialFragment;->DIAL_POSITION_UPDATE:Ljava/lang/Object;

    monitor-enter v1

    .line 1096
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    if-nez v2, :cond_0

    .line 1097
    const-string v0, "DialFragment"

    const-string/jumbo v2, "updateView : station is null. maybe didn\'t get onMetaChanged callback"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    monitor-exit v1

    .line 1133
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1103
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->isLoginUser()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;Z)V

    .line 1106
    :cond_1
    const-string v2, "01"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1107
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-nez v2, :cond_2

    .line 1109
    const-string v0, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateView : track null case. station - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1110
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->jumpToRadioStationFromPlayer(Ljava/lang/String;)Z

    .line 1113
    monitor-exit v1

    goto :goto_0

    .line 1132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1116
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-nez v2, :cond_3

    .line 1117
    const-string v0, "DialFragment"

    const-string/jumbo v2, "updateView : track is null. maybe didn\'t get onMetaChanged callback"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    monitor-exit v1

    goto :goto_0

    .line 1122
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1123
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1124
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentMyStation:Z

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1126
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v3

    if-ne v3, v0, :cond_5

    :goto_1
    if-eq v2, v0, :cond_6

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->jumpToRadioStationFromPlayer(Ljava/lang/String;)Z

    .line 1132
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    .line 1126
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1130
    :cond_6
    const-string v0, "DialFragment"

    const-string/jumbo v2, "updateView : same track updated! so ignore it"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public callUpdateView()V
    .locals 5

    .prologue
    .line 1570
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v2, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "stationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    .line 1575
    .local v1, "trackId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 1576
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 1577
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->updateCreateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 1579
    .end local v0    # "stationId":Ljava/lang/String;
    .end local v1    # "trackId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkShareStation()Z
    .locals 4

    .prologue
    .line 1887
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->checkShareStation()Z

    move-result v0

    .line 1888
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkShareStation] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    return v0
.end method

.method public closeMoreMenu()V
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->closeMoreMenu()V

    .line 2029
    return-void
.end method

.method public dismissSpinner()V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dismissSpinner()V

    .line 1616
    :cond_0
    return-void
.end method

.method public getActiveService()I
    .locals 1

    .prologue
    .line 1489
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getActiveService()I

    move-result v0

    return v0
.end method

.method public getBansongView()Landroid/view/View;
    .locals 8

    .prologue
    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    .line 1583
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1584
    .local v2, "width":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f120364

    .line 1585
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1587
    .local v0, "bansongLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1588
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1589
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1590
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    return-object v0
.end method

.method public getCurrentStaationForMenu()Lcom/samsung/android/app/music/common/model/Station;
    .locals 1

    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getCurrentStation()Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackForMenu()Lcom/samsung/android/app/music/common/model/Track;
    .locals 1

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getCurrentTrack()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "DialFragment"

    return-object v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public hideBufferingProgress()V
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    const-string v0, "DialFragment"

    const-string v1, "hideBufferingProgress : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1086
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->startRainbowTimeoutCounter(Z)V

    .line 1088
    :cond_0
    return-void
.end method

.method protected internalShowLoading(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1244
    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->internalShowLoading(ZJ)V

    .line 1245
    return-void
.end method

.method protected internalShowLoading(ZJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "timeout"    # J

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1248
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgressContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1251
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->startTimeoutCounter(ZJ)V

    .line 1258
    :goto_0
    return-void

    .line 1253
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsShowLodingStick:Z

    .line 1254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgressContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1256
    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->startTimeoutCounter(ZJ)V

    goto :goto_0
.end method

.method public isDialing()Z
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isDownloadEnabled()Z
    .locals 4

    .prologue
    .line 1900
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->isDownloadEnabled()Z

    move-result v0

    .line 1901
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isDownloadEnabled] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    return v0
.end method

.method public isFavorite()Z
    .locals 4

    .prologue
    .line 1868
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->isCurFavorite()Z

    move-result v0

    .line 1869
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFavorite] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    return v0
.end method

.method public isLoadFinished()Z
    .locals 3

    .prologue
    .line 2003
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isLoadFinished] mIsLoadFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsLoadFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsLoadFinished:Z

    return v0
.end method

.method public isLyricLoadFinished()Z
    .locals 4

    .prologue
    .line 1939
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->isLyricLoadFinish()Z

    move-result v0

    .line 1940
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isLyricLoadFinished] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    return v0
.end method

.method public isOptionMenuOpened()Z
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->isOptionMenuOpened()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 1990
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->isPlaying()Z

    move-result v0

    .line 1991
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isPlaying] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    return v0
.end method

.method public isPreviousEnable()Z
    .locals 4

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->isPreviousEnable()Z

    move-result v0

    .line 1965
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isPreviousEnable] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    return v0
.end method

.method public isShowingSpinnerListPopup()Z
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->isShowing()Z

    move-result v0

    .line 1470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkipEnable()Z
    .locals 4

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->isSkipEnable()Z

    move-result v0

    .line 1978
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSkipEnable] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    return v0
.end method

.method public jumpToRadioStationFromPlayer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1043
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getStationCursorIndex(Ljava/lang/String;)I

    move-result v0

    .line 1045
    .local v0, "position":I
    const-string v2, "DialFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jumpToRadioStationFromPlayer : stationId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    if-gez v0, :cond_1

    .line 1056
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return v1

    .line 1053
    .restart local v0    # "position":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToRadioStation(IZ)V

    .line 1054
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public launchAlbumDetail()V
    .locals 2

    .prologue
    .line 1933
    const-string v0, "DialFragment"

    const-string v1, "[launchAlbumDetail] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->launchAblumDeteail()V

    .line 1935
    return-void
.end method

.method public launchArtistDetail()V
    .locals 2

    .prologue
    .line 1920
    const-string v0, "DialFragment"

    const-string v1, "[launchArtistDetail] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->launchArtistDetail()V

    .line 1922
    return-void
.end method

.method public launchDownload()V
    .locals 2

    .prologue
    .line 1907
    const-string v0, "DialFragment"

    const-string v1, "[launchDownload] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->launchDownload()V

    .line 1909
    return-void
.end method

.method public launchLyric()V
    .locals 2

    .prologue
    .line 1958
    const-string v0, "DialFragment"

    const-string v1, "[launchLyric] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->launchLyric()V

    .line 1960
    return-void
.end method

.method public moveNextStation()V
    .locals 4

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentMyStation:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveNextStation(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 2034
    return-void
.end method

.method public movePrevStation()V
    .locals 4

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentMyStation:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->movePrevStation(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 2039
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 471
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 473
    const-string v0, "DialFragment"

    const-string v1, "onAttach : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setHasOptionsMenu(Z)V

    .line 478
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1620
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1622
    const-string v1, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfigurationChanged : newConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    if-nez v1, :cond_1

    .line 1625
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    .line 1626
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1627
    const-string v1, "DialFragment"

    const-string/jumbo v4, "onCreateView : isSemDevice is true "

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v1, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView : semMobileKeyboardCovered :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    .line 1644
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    if-nez v1, :cond_4

    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showDialView(Z)V

    .line 1646
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 1630
    goto :goto_0

    .line 1632
    :cond_3
    const-string v1, "DialFragment"

    const-string/jumbo v4, "onCreateView : isSemDevice is false "

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1635
    .local v0, "confClass":Ljava/lang/Class;
    const-string v1, "MOBILEKEYBOARD_COVERED_YES"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v4, "mobileKeyboardCovered"

    .line 1636
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 1637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1639
    .end local v0    # "confClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1644
    goto :goto_2

    .line 1641
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1640
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 501
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onCreate : "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 505
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 564
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$8;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    .line 579
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$9;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBufferingTimeoutRunnable:Ljava/lang/Runnable;

    .line 597
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment$10;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 617
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 618
    const-string v1, "Music"

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMoreButtonExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMoreButtonExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupExecutor;

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v0, v5, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchStationTPOExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/FavouriteExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/ShareSongInRadioExecutor;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShareSongInRadioExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/MusicVideoInRadioExecutor;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/bixby/executor/radio/MusicVideoInRadioExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchDownloadBasketExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchDownloadBasketExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/ShowLyricExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/player/kr/SongTitleExecutor;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/bixby/executor/player/kr/SongTitleExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchArtistDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchAlbumDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/RadioPlayControllExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioPlayControllExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/IDialExecutor;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;

    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v0, v5, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/IDialFragment;)V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/player/global/LaunchAddToPlaylistExecutor;

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/executor/player/global/LaunchAddToPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v4, v2, v3

    .line 618
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 636
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 897
    const v0, 0x7f130021

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 898
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 899
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 642
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 643
    const-string v2, "DialFragment"

    const-string/jumbo v3, "onCreateView : "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const v2, 0x7f04010a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->initializeBanSongView(Landroid/view/View;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120307

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContentContainer:Landroid/widget/RelativeLayout;

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12031b

    .line 651
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionContainer:Landroid/view/ViewGroup;

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12031c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBanner:Landroid/view/ViewGroup;

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f1202ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBtnTxt:Landroid/widget/TextView;

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f1202e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBtn:Landroid/widget/LinearLayout;

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12031d

    .line 658
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUnsupportedCountryContainer:Landroid/view/ViewGroup;

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12031e

    .line 660
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUnsupportedCountryBanner:Landroid/view/ViewGroup;

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120321

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyLayout:Landroid/view/ViewGroup;

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f1202ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyPromptTxt:Landroid/widget/TextView;

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120300

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mEmptyBtn:Landroid/widget/TextView;

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120309

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialCtrContainer:Landroid/view/ViewGroup;

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120312

    .line 667
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mOptBtnCotainer:Landroid/widget/RelativeLayout;

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120314

    .line 669
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongTitleContainer:Landroid/widget/LinearLayout;

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialCtrContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 673
    .local v11, "dialParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 675
    const/4 v2, 0x0

    iput v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialCtrContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setEmptyView()V

    .line 679
    const-string v3, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateView : isCannotAccessNetwork : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 680
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showNoConncetionView(I)V

    .line 686
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120308

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mControlsContent:Landroid/view/ViewGroup;

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120310

    .line 688
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    .line 690
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$OnSpinnerSelected;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12030b

    .line 694
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerContainerView:Landroid/view/ViewGroup;

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12030c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionContainer:Landroid/view/ViewGroup;

    instance-of v2, v2, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableContainer;

    if-eqz v2, :cond_0

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionContainer:Landroid/view/ViewGroup;

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    .line 703
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->getPlayPauseView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableContainer;->addTouchableView(Landroid/view/View;)V

    .line 707
    :cond_0
    :try_start_0
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 709
    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v7

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_2
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 716
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 719
    .local v16, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12030a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialContainerView:Landroid/view/ViewGroup;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialContainerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 727
    .local v9, "conf":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 728
    const-string v2, "DialFragment"

    const-string/jumbo v3, "onCreateView : isSemDevice is true "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v2, "DialFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateView : semMobileKeyboardCovered :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget v2, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    .line 746
    :cond_1
    :goto_4
    const-string v2, "DialFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateView : mKeyboardOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/SmartStationController$SmartStationListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120318

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSongLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120319

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mArtistLabel:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120317

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mExplicitView:Landroid/widget/TextView;

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12030d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f120320

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgressContainer:Landroid/view/ViewGroup;

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f12030e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 757
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showDialView(Z)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v13

    .line 760
    .local v13, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v13, :cond_2

    .line 761
    const-string v2, "Music"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {v5, v13, v6}, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    aput-object v5, v3, v4

    invoke-interface {v13, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 765
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(Z)V

    .line 767
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 768
    .local v14, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    const-string v2, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v2, "com.samsung.radio.REQUEST_FAVORITE"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v2, "com.samsung.radio.action.jump.indication"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v14, v3}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f120026

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f120027

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 780
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f12002b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->onApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 784
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 787
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Z)V

    .line 790
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_9

    .line 791
    new-instance v17, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 792
    .local v17, "multiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    .line 793
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/DialFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$11;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 816
    .end local v17    # "multiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :goto_6
    const-string v2, "DialFragment"

    const-string v3, "[onCreateView] "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setDialVisible()V

    .line 819
    if-eqz p3, :cond_3

    .line 820
    const-string/jumbo v2, "save_spinner"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 821
    .local v15, "isShowSpinner":Z
    const-string v2, "DialFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreateView] isShowSpinner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    if-eqz v15, :cond_3

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->callClick()V

    .line 827
    .end local v15    # "isShowSpinner":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRootView:Landroid/view/View;

    return-object v2

    .line 680
    .end local v9    # "conf":Landroid/content/res/Configuration;
    .end local v13    # "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .end local v14    # "intentFilter":Landroid/content/IntentFilter;
    .end local v16    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 684
    :cond_5
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showUnsupportedCountryView(I)V

    goto/16 :goto_1

    .line 711
    :catch_0
    move-exception v12

    .line 712
    .local v12, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v12}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto/16 :goto_2

    .line 731
    .end local v12    # "e":Landroid/os/DeadObjectException;
    .restart local v9    # "conf":Landroid/content/res/Configuration;
    .restart local v16    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 733
    :cond_7
    const-string v2, "DialFragment"

    const-string/jumbo v3, "onCreateView : isSemDevice is false "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 736
    .local v10, "confClass":Ljava/lang/Class;
    const-string v2, "MOBILEKEYBOARD_COVERED_YES"

    invoke-virtual {v10, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "mobileKeyboardCovered"

    .line 737
    invoke-virtual {v10, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 738
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mKeyboardOn:Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    .line 740
    .end local v10    # "confClass":Ljava/lang/Class;
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 757
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 813
    .restart local v13    # "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .restart local v14    # "intentFilter":Landroid/content/IntentFilter;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    .line 814
    const-string v2, "DialFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreateView] mIsMultiWindowMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 742
    .end local v13    # "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .end local v14    # "intentFilter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 741
    :catch_3
    move-exception v2

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 885
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onDestroy : onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 887
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->release()V

    .line 892
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 893
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 867
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 868
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onDestroyView : onDestroyView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 871
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->removeFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 873
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f120026

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 874
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f120027

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 875
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f12002b

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 876
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->onApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 877
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 880
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 881
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDetach()V

    .line 490
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onDetach : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->interrupt()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    .line 495
    :cond_0
    return-void
.end method

.method public onDialTouchDown()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->touchDown()V

    .line 1431
    return-void
.end method

.method public onDialTouchEVT(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1411
    .local v0, "action":I
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onDialTouchEVT : is called"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    packed-switch v0, :pswitch_data_0

    .line 1424
    :goto_0
    :pswitch_0
    return-void

    .line 1414
    :pswitch_1
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onDialTouchEVT : ricky - action down"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1418
    :pswitch_2
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onDialTouchEVT : ricky - action pointer"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :pswitch_3
    const-string v1, "DialFragment"

    const-string/jumbo v2, "onDialTouchEVT : ricky - action move"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDialTouchUp()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1449
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->touchUp()V

    .line 1451
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1455
    :cond_0
    return-void
.end method

.method public onDialTouchUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1435
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpinnerInfo : stationId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    .line 1437
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->touchUp()V

    .line 1441
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1445
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1746
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onExtrasChanged : is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    return-void
.end method

.method public onFeatureChanged(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 459
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onFeatureChanged : Feature is changed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showUnsupportedCountryView(I)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLastChangedTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->isLoginUser()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;Z)V

    .line 464
    return-void
.end method

.method public onLyricsOpened()V
    .locals 0

    .prologue
    .line 1335
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 1725
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onMetadataChanged : called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->onMetadataChanged()V

    .line 1727
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 912
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 934
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 914
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 915
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "0003"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/milk/help/HelpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 919
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "0055"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 922
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->launchContactUs(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 924
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 925
    const-string/jumbo v1, "web_url"

    const-string v2, "http://samsungmusic.kr/html/ssmusic_qa_bridge.php"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string/jumbo v1, "web_for_notice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 929
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->startActivity(Landroid/content/Intent;)V

    .line 931
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "0004"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :sswitch_data_0
    .sparse-switch
        0x7f1205b5 -> :sswitch_0
        0x7f1205c7 -> :sswitch_1
        0x7f1205c8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 850
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onPause()V

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->isResume:Z

    .line 852
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->cleanHash()V

    .line 855
    :cond_0
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onPause : onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->pause()V

    .line 857
    return-void
.end method

.method public onPlayRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "stationType"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "isMyStation"    # Z
    .param p6, "forcePlay"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1341
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->isPlayerServiceConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1342
    const-string v3, "DialFragment"

    const-string/jumbo v4, "onPlayRequest : playerService is not connected."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    const-string v3, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlayRequest : position - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stationId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trackId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMyStation - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    .line 1350
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    .line 1351
    iput-boolean p5, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentMyStation:Z

    .line 1362
    const/4 v2, 0x0

    .line 1363
    .local v2, "track":Lcom/samsung/android/app/music/common/model/Track;
    const/4 v1, 0x1

    .line 1365
    .local v1, "stationTypeId":I
    if-eqz p5, :cond_2

    .line 1366
    const/4 v1, 0x2

    .line 1369
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p6}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1371
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, "currentStationId":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1373
    const-string v3, "DialFragment"

    const-string/jumbo v4, "onPlayRequest : station is different. so disable skip"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setSkipEnable(Z)V

    .line 1378
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getCurrentTrack()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    .line 1379
    if-nez v2, :cond_4

    .line 1380
    const-string v3, "DialFragment"

    const-string/jumbo v4, "onPlayRequest : updateOptionsMenu_track track == null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_4
    const-string v3, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlayRequest : trackType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1386
    const-string v3, "DialFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlayRequest : This trackType isAdsOrInterruption - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1387
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1386
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setSkipEnable(Z)V

    goto/16 :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 1731
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayingStatusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1733
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showBufferingProgress()V

    .line 1737
    :goto_0
    return-void

    .line 1735
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->hideBufferingProgress()V

    goto :goto_0
.end method

.method public onPopupAdImage()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    .line 454
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPopupClosed : popup type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 902
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 904
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v0, :cond_0

    .line 905
    const v0, 0x7f1205b5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->updateMenuBadgeLaunchSetting(Landroid/view/Menu;I)V

    .line 907
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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
    .line 1741
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onQueueChanged : called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 841
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onResume()V

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->isResume:Z

    .line 843
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setFeatures()V

    .line 844
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onResume : onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->resume()V

    .line 846
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2078
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2080
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSaveInstanceState] isSpinnerShowing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    const-string/jumbo v0, "save_spinner"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2084
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1262
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1263
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->isSubscriber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    const-string v0, "Advert.DialFragment"

    const-string v1, "[onServiceConnected] subscribe true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    const-string v0, "Advert.DialFragment"

    const-string v1, "[onServiceConnected] subscribe false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1276
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->isSubscriber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const-string v0, "Advert.DialFragment"

    const-string v1, "[onServiceDisconnected] subscribe false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :cond_0
    return-void
.end method

.method public onSmartStationCreated(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "coverUrl"    # Ljava/lang/String;
    .param p3, "created"    # Z

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getCursorIndexByStationId(Ljava/lang/String;)I

    move-result v0

    .line 1063
    .local v0, "position":I
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSmartStationCreated : stationId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", coverUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    if-gez v0, :cond_1

    .line 1072
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 1070
    .restart local v0    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToSmartStation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onSpinnerItemSelected(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "stationType"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "stationName"    # Ljava/lang/String;
    .param p6, "genreName"    # Ljava/lang/String;
    .param p7, "isMyStation"    # Z

    .prologue
    .line 1314
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSpinnerItemSelected : track id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    .line 1317
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    .line 1318
    iput-boolean p7, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentMyStation:Z

    .line 1320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialView:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setDialViewFromSpinner(I)V

    .line 1330
    return-void
.end method

.method public onSpinnerOpened()V
    .locals 2

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->show(Z)V

    .line 1308
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 832
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStart()V

    .line 833
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onStart : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 835
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 836
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 837
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 861
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStop()V

    .line 862
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onStop : onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public onSubscribe(Lcom/samsung/android/app/music/milk/radio/DialFragment$DialInterface;)V
    .locals 2
    .param p1, "dialInterface"    # Lcom/samsung/android/app/music/milk/radio/DialFragment$DialInterface;

    .prologue
    .line 433
    const-string v0, "Advert.DialFragment"

    const-string/jumbo v1, "onSubscribe : called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->subscribe(Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;)V

    .line 435
    return-void
.end method

.method public onUnSubscribe()V
    .locals 2

    .prologue
    .line 439
    const-string v0, "Advert.DialFragment"

    const-string/jumbo v1, "onUnSubscribe : called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->unsubscribe(Lcom/samsung/android/app/music/milk/advertise/IAdImpressionListener;)V

    .line 441
    return-void
.end method

.method public previousSong()V
    .locals 2

    .prologue
    .line 1971
    const-string v0, "DialFragment"

    const-string v1, "[previousSong] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->previousSong()V

    .line 1973
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 2
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 482
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->onPrimaryColorChanged(I)V

    .line 485
    :cond_0
    return-void
.end method

.method public setEnablePrevBtn(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getCurrentTrack()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v0

    .line 1496
    .local v0, "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setBackSkipEnable(Z)V

    .line 1504
    :goto_0
    return-void

    .line 1503
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->setBackSkipEnable(Z)V

    goto :goto_0
.end method

.method public setFavorite()V
    .locals 2

    .prologue
    .line 1875
    const-string v0, "DialFragment"

    const-string v1, "[setFavorite] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->setFavorite()V

    .line 1877
    return-void
.end method

.method public setFavoriteUndo()V
    .locals 2

    .prologue
    .line 1881
    const-string v0, "DialFragment"

    const-string v1, "[setFavoriteUndo] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->setFavoriteUndo()V

    .line 1883
    return-void
.end method

.method public setLoadFinished(Z)V
    .locals 1
    .param p1, "loadFinished"    # Z

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsLoadFinished:Z

    .line 2011
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 2014
    :cond_0
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 2019
    return-void
.end method

.method public setLyricLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 1
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->setLyricFinishCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    .line 1947
    return-void
.end method

.method public setSpinnerInfo(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "isMyStation"    # Z

    .prologue
    .line 1397
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpinnerInfo : position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpinnerInfo : stationId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMyStation - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentStationId:Ljava/lang/String;

    .line 1402
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentTrackId:Ljava/lang/String;

    .line 1403
    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mCurrentMyStation:Z

    .line 1405
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->setSpinnerInfo(I)V

    .line 1406
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 955
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->setUserVisibleHint(Z)V

    .line 956
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserVisibleHint. visible - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    if-nez v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 960
    :cond_0
    if-eqz p1, :cond_1

    .line 961
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->resume()V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSmartStationController:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->pause()V

    goto :goto_0
.end method

.method public shareStation()V
    .locals 2

    .prologue
    .line 1894
    const-string v0, "DialFragment"

    const-string v1, "[shareStation] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->shareStation()V

    .line 1896
    return-void
.end method

.method public showBufferingProgress()V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "DialFragment"

    const-string/jumbo v1, "showBufferingProgress : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mRainbowProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->startRainbowTimeoutCounter(Z)V

    .line 1080
    :cond_0
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1218
    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(ZJ)V

    .line 1220
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->setLoadFinished(Z)V

    .line 1221
    return-void

    .line 1220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLoading(ZJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "timeout"    # J

    .prologue
    .line 1224
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingProgressContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingWaitThread:Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$InitLoadingWaitThread;->start()V

    .line 1241
    :cond_1
    :goto_0
    return-void

    .line 1236
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mIsShowLodingStick:Z

    if-nez v0, :cond_1

    .line 1240
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->internalShowLoading(ZJ)V

    goto :goto_0
.end method

.method public showMoreMenu()V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->showMoreMenu()V

    .line 2024
    return-void
.end method

.method public showNoConncetionView(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v4, 0x0

    .line 1514
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNoConnectionView : visibility - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    if-nez p1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1519
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "mobile_data"

    .line 1520
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1522
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    .line 1523
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1524
    .local v0, "spanString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1525
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBtnTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1527
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBtn:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSettingsActivityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1536
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1539
    .end local v0    # "spanString":Landroid/text/SpannableString;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1540
    return-void

    .line 1529
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0381

    .line 1530
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1531
    .restart local v0    # "spanString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1532
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBtnTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNoConnectionBtn:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mNetworkSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showProgress(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 1460
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->showLoading(Z)V

    .line 1461
    return-void
.end method

.method public showSpinnerListPopup(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    if-eqz v0, :cond_0

    .line 1476
    if-nez p1, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mSpinnerView:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->dismissSpinner()V

    .line 1480
    :cond_0
    return-void
.end method

.method public showUnsupportedCountryView(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 1549
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showUnsupportedCountryView : visibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    if-nez p1, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUnsupportedCountryBanner:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUnsupportedCountryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1556
    return-void
.end method

.method public skipSong()V
    .locals 2

    .prologue
    .line 1984
    const-string v0, "DialFragment"

    const-string v1, "[skipSong] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->skipSong()V

    .line 1986
    return-void
.end method

.method public startRainbowTimeoutCounter(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 1180
    const-string v0, "DialFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRainbowTimeoutCounter : start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Timeoutset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bBufferingTimeoutSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    if-eqz p1, :cond_1

    .line 1183
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bBufferingTimeoutSet:Z

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBufferingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1187
    :cond_0
    const-string v0, "DialFragment"

    const-string/jumbo v1, "startRainbowTimeoutCounter : post"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBufferingTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1194
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bBufferingTimeoutSet:Z

    .line 1195
    return-void

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mBufferingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startTimeoutCounter(ZJ)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "timeout"    # J

    .prologue
    .line 1204
    if-eqz p1, :cond_1

    .line 1205
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bLoadingTimeoutSet:Z

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1214
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->bLoadingTimeoutSet:Z

    .line 1215
    return-void

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public supportAlbumDetail()Z
    .locals 4

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->supportAlbumDetail()Z

    move-result v0

    .line 1927
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[supportAlbumDetail] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    return v0
.end method

.method public supportArtsitDetail()Z
    .locals 4

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->supportArtistDetail()Z

    move-result v0

    .line 1914
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[supportArtsitDetail] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    return v0
.end method

.method public supportLyric()Z
    .locals 4

    .prologue
    .line 1951
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mDialOptionMenuBtn:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->supportLyric()Z

    move-result v0

    .line 1952
    .local v0, "ret":Z
    const-string v1, "DialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[supportLyric] ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    return v0
.end method

.method public togglePlay()V
    .locals 2

    .prologue
    .line 1997
    const-string v0, "DialFragment"

    const-string v1, "[togglePlay] "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment;->mPlayerView:Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioPlayerView;->togglePlay()V

    .line 1999
    return-void
.end method
