.class public final Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingCheckableList;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$RemoteTrackActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;"
    }
.end annotation


# static fields
.field private static final SAVED_HIDDEN_STATE:Ljava/lang/String; = "saved_hidden_state"

.field private static final SAVED_RESTORE_ACTION_MODE_MENU:Ljava/lang/String; = "saved_restore_action_mode_menu_state"

.field public static final TAG:Ljava/lang/String;

.field private static final TURN_OFF_ANIMATION_INTERVAL:I = 0xc8


# instance fields
.field private mAddTrackButton:Landroid/view/View;

.field private mAddTrackContainer:Landroid/view/View;

.field private mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCanAccessNetwork:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayingPosition:I

.field private mDividerView:Landroid/view/View;

.field private mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private mHeaderView:Landroid/view/View;

.field private mIsAnimatingRemoval:Z

.field private mIsHidden:Z

.field private mIsMyMusicMode:Z

.field private mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field private final mItemAnimatorRunnable:Ljava/lang/Runnable;

.field private mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

.field private mNeedSetSelection:Z

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mSortMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 133
    iput v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsHidden:Z

    .line 138
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNeedSetSelection:Z

    .line 150
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsAnimatingRemoval:Z

    .line 158
    iput v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSortMode:I

    .line 161
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    .line 173
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCanAccessNetwork:Z

    .line 807
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$11;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimatorRunnable:Ljava/lang/Runnable;

    .line 1083
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1101
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 1127
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 1138
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 176
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mDividerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getTopChartTracks()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getFilterOption(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isOnlineTrackDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setFilterDeviceEnabled(Z)V

    return-void
.end method

.method static synthetic access$2402(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCanAccessNetwork:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setEmptyViewExtra(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSortMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsAnimatingRemoval:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsAnimatingRemoval:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method private addOnScrollListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 608
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$7;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 621
    return-void
.end method

.method private changeLoadingViewColor(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f110256

    const/high16 v4, 0x3f000000    # 0.5f

    .line 783
    const v2, 0x7f1200fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 784
    .local v0, "loadingProgressBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 785
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 787
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 789
    :cond_0
    const v2, 0x7f120200

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 790
    .local v1, "loadingText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 791
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 793
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 795
    :cond_1
    return-void
.end method

.method private checkLocalItemAndUpdateFilter(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSortMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "hasLocalItem":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    .line 653
    .local v1, "item":Landroid/media/session/MediaSession$QueueItem;
    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 654
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    .line 655
    .local v2, "meta":Landroid/media/MediaMetadata;
    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    const/4 v0, 0x1

    .line 660
    .end local v1    # "item":Landroid/media/session/MediaSession$QueueItem;
    .end local v2    # "meta":Landroid/media/MediaMetadata;
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setFilterDeviceEnabled(Z)V

    goto :goto_0
.end method

.method private static getFilterOption(I)I
    .locals 1
    .param p0, "sortMode"    # I

    .prologue
    .line 1032
    packed-switch p0, :pswitch_data_0

    .line 1044
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 1034
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1036
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1038
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1040
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getTopChartTracks()V
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$10;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    const/4 v2, 0x0

    const-string v3, "2"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTopChartTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void
.end method

.method private isNotListChanged(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->onSetSortMode(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnlineTrackDisable()Z
    .locals 2

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSortMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCanAccessNetwork:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetSortMode(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 628
    const/4 v1, 0x1

    .line 629
    .local v1, "sortMode":I
    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 630
    .local v2, "values":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 631
    const-string v3, "extra.sort_state"

    .line 632
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 633
    .local v0, "mode":I
    move v1, v0

    .line 635
    .end local v0    # "mode":I
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSortMode:I

    if-ne v3, v1, :cond_1

    .line 636
    const/4 v3, 0x0

    .line 641
    :goto_0
    return v3

    .line 638
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSortMode:I

    .line 639
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getFilterOption(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->setFilterOption(I)V

    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isOnlineTrackDisable()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->setOnlineContentDisabled(Z)V

    move v3, v4

    .line 641
    goto :goto_0
.end method

.method private scrollToNowplayingPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNeedSetSelection:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isActionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNeedSetSelection:Z

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 695
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 697
    :cond_0
    return-void
.end method

.method private setDividerItem(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    const v3, 0x7f0d04e9

    .line 526
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f020146

    .line 527
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 528
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 530
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 531
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 532
    return-void
.end method

.method private setEmptyView()V
    .locals 6

    .prologue
    .line 700
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    const v2, 0x7f1202f4

    new-instance v3, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$8;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 711
    .local v1, "loadRealTimeChart":Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    const v2, 0x7f1202f6

    new-instance v3, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$9;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 726
    .local v0, "addTrack":Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;

    const v3, 0x7f040104

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;-><init>(Landroid/app/Fragment;I[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 728
    return-void
.end method

.method private setEmptyViewExtra(Z)V
    .locals 1
    .param p1, "isEmpty"    # Z

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setEmptyViewVisibility(Z)V

    .line 732
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isOnlineTrackDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setPlayTopChartEnabled(Z)V

    goto :goto_0

    .line 739
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setPlayTopChartEnabled(Z)V

    goto :goto_0
.end method

.method private setFilterDeviceEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const/4 v1, 0x4

    .line 665
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->setFilterItemEnabled(IZ)V

    .line 666
    return-void
.end method

.method private setHeader(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "addTrackEnabled"    # Z

    .prologue
    .line 535
    const v0, 0x7f1202cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mHeaderView:Landroid/view/View;

    .line 537
    const v0, 0x7f120529

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackContainer:Landroid/view/View;

    .line 538
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackContainer:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 539
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 541
    const v0, 0x7f1202f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackButton:Landroid/view/View;

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01d7

    .line 543
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAddTrackButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    new-instance v0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 563
    const v0, 0x7f12052b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mDividerView:Landroid/view/View;

    .line 565
    const v0, 0x7f120225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 566
    new-instance v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    new-instance v1, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;

    new-instance v2, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 580
    return-void

    .line 538
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setHeaderEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 522
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 523
    return-void

    .line 522
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setItemAnimator(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 583
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 584
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    new-instance v2, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$6;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 601
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 602
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    .line 603
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 605
    :cond_0
    return-void
.end method

.method private setPlayTopChartEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ebd70a4    # 0.37f

    .line 744
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 745
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    const v4, 0x7f1202f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 749
    .local v1, "playTopChartContainer":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 752
    const v4, 0x7f1202f4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 753
    .local v0, "playTopChartButton":Landroid/view/View;
    const v4, 0x7f1202f5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 754
    .local v2, "playTopChartText":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 755
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 756
    if-eqz p1, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 757
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 756
    goto :goto_1

    :cond_3
    move v5, v6

    .line 757
    goto :goto_2
.end method

.method private turnOffItemAnimatorDuringSomeTime()V
    .locals 4

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 802
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 803
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 804
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateTotalCountView(II)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 689
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f120528

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 673
    .local v0, "countView":Landroid/widget/TextView;
    if-nez p2, :cond_1

    .line 674
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_1
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "front":Ljava/lang/String;
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "rear":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 681
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 683
    :cond_2
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public download()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->download()V

    .line 519
    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 418
    const v0, 0x100012

    return v0
.end method

.method protected initListLoader(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 369
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initListLoader() : Now playing list does not need CursorLoader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 342
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-nez p1, :cond_0

    .line 344
    const-string v2, "extra_checked_item_ids"

    .line 345
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 352
    .local v0, "checkedItemIds":[J
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 353
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;[J)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    .end local v0    # "checkedItemIds":[J
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mContext:Landroid/content/Context;

    .line 182
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 183
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 185
    :cond_0
    const-string v0, "303"

    const-string v1, "305"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string/jumbo v0, "saved_hidden_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsHidden:Z

    .line 194
    :cond_0
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 3

    .prologue
    .line 375
    new-instance v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "audio_id"

    .line 377
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string/jumbo v2, "title"

    .line 378
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v2, "artist"

    .line 379
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v2, "cp_attrs"

    .line 380
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    .line 381
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    new-instance v1, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setListItemMenuable(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 403
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsHidden:Z

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13001d

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 337
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 413
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isActivatedSmallScreenUi(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const v1, 0x7f0401f8

    .line 206
    .local v1, "layout":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 204
    .end local v1    # "layout":I
    :cond_0
    const v1, 0x7f0401f7

    .restart local v1    # "layout":I
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 290
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 292
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroyView()V

    .line 293
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 494
    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 496
    .local v2, "values":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 514
    .end local v2    # "values":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local v2    # "values":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 501
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    :cond_2
    const-string v3, "UiList"

    const-string/jumbo v4, "onExtrasChanged() : Cursor is closed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    .line 506
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isNotListChanged(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 507
    const-string v3, "UiList"

    const-string/jumbo v4, "onExtrasChanged() : list is not changed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_4
    iget v3, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v1

    .line 511
    .local v1, "orderedPosition":I
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->updateTotalCountView(II)V

    .line 512
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->updatePlayingItemAndState(J)V

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onHiddenChanged(Z)V

    .line 314
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsHidden:Z

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->unregisterMediaChangeObserver()V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->stopScroll()V

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->finishActionMode()V

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNeedSetSelection:Z

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->turnOffItemAnimatorDuringSomeTime()V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->registerMediaChangeObserver()V

    .line 327
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 429
    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 431
    .local v6, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-nez v6, :cond_1

    .line 432
    const-string v0, "SMUSIC-UiList"

    const-string/jumbo v4, "onMetadataChanged cursor is null. "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v8

    .line 436
    .local v8, "orderedPosition":I
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v7

    .line 437
    .local v7, "count":I
    invoke-direct {p0, v8, v7}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->updateTotalCountView(II)V

    .line 439
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsAnimatingRemoval:Z

    if-nez v0, :cond_0

    .line 440
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 441
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 442
    .local v2, "albumId":J
    int-to-long v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->updatePlayingAudioId(IJJ)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsAnimatingRemoval:Z

    if-nez v0, :cond_0

    .line 449
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 451
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 10
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
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 460
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    if-eqz v0, :cond_0

    .line 463
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    invoke-direct {v1, p1, p2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 464
    .local v1, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 465
    if-nez p2, :cond_4

    .line 466
    iput v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    .line 471
    :goto_1
    iget v7, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v4

    .line 472
    .local v4, "orderedPosition":I
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v2

    .line 473
    .local v2, "count":I
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->updateTotalCountView(II)V

    .line 474
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->updatePlayingItemAndState(J)V

    .line 476
    if-lez v2, :cond_5

    move v3, v6

    .line 477
    .local v3, "hasQueue":Z
    :goto_2
    if-eqz v3, :cond_6

    .line 478
    iget-boolean v7, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNeedSetSelection:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isActionMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 479
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->scrollToNowplayingPosition(I)V

    .line 485
    :cond_2
    :goto_3
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setHeaderEnabled(Z)V

    .line 486
    if-nez v3, :cond_3

    move v5, v6

    :cond_3
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setEmptyViewExtra(Z)V

    .line 487
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setListShown(Z)V

    .line 488
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->checkLocalItemAndUpdateFilter(Ljava/util/List;)V

    .line 489
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->confirmCheckedPositionsById()V

    goto :goto_0

    .line 468
    .end local v2    # "count":I
    .end local v3    # "hasQueue":Z
    .end local v4    # "orderedPosition":I
    :cond_4
    const-string v7, "extra.list_position"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mCurrentPlayingPosition:I

    .line 469
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->onSetSortMode(Landroid/os/Bundle;)Z

    goto :goto_1

    .restart local v2    # "count":I
    .restart local v4    # "orderedPosition":I
    :cond_5
    move v3, v5

    .line 476
    goto :goto_2

    .line 482
    .restart local v3    # "hasQueue":Z
    :cond_6
    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNeedSetSelection:Z

    .line 483
    iput-boolean v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsAnimatingRemoval:Z

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    const-string/jumbo v2, "saved_hidden_state"

    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsHidden:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isActionMode()Z

    move-result v1

    .line 277
    .local v1, "isActionMode":Z
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getActionMenuView(Landroid/app/Activity;)Landroid/widget/ActionMenuView;

    move-result-object v0

    .line 279
    .local v0, "actionMenuView":Landroid/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v2, "saved_restore_action_mode_menu_state"

    .line 281
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v3

    .line 280
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    .end local v0    # "actionMenuView":Landroid/widget/ActionMenuView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x20004

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    .line 218
    .local v3, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isActivatedSmallScreenUi(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    const/4 v4, -0x1

    .line 223
    .local v4, "selectAllTextResId":I
    :goto_0
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-direct {v5, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 224
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setChoiceMode(I)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 227
    .local v2, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v1, v8

    .line 229
    .local v1, "cpAttrs":I
    if-eq v1, v11, :cond_1

    move v5, v6

    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setHeader(Landroid/view/View;Z)V

    .line 230
    if-ne v1, v11, :cond_2

    new-instance v5, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$RemoteTrackActionModeOptionsMenu;

    invoke-direct {v5, p0, v10}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$RemoteTrackActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V

    :goto_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 233
    new-instance v5, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingCheckableList;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 234
    new-instance v5, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;

    invoke-direct {v5, p0, v10}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 235
    new-instance v5, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;

    invoke-direct {v5, p0, v10}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 237
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 238
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setDividerItem(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 239
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setItemAnimator(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 240
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->addOnScrollListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->changeLoadingViewColor(Landroid/view/View;)V

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setEmptyView()V

    .line 244
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setListShown(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getListType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->initListLoader(I)V

    .line 247
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v9, "my_music_mode"

    .line 248
    invoke-virtual {v5, v8, v9, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 250
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isOnlineTrackDisable()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->setOnlineContentDisabled(Z)V

    .line 252
    iget-boolean v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mIsMyMusicMode:Z

    if-nez v5, :cond_3

    :goto_3
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setFilterDeviceEnabled(Z)V

    .line 254
    new-instance v5, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;-><init>(Landroid/app/Fragment;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    .line 255
    return-void

    .line 221
    .end local v1    # "cpAttrs":I
    .end local v2    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v4    # "selectAllTextResId":I
    :cond_0
    const v4, 0x7f0a018c

    .restart local v4    # "selectAllTextResId":I
    goto/16 :goto_0

    .restart local v1    # "cpAttrs":I
    .restart local v2    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :cond_1
    move v5, v7

    .line 229
    goto :goto_1

    .line 230
    :cond_2
    new-instance v5, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;

    invoke-direct {v5, p0, v10}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V

    goto :goto_2

    :cond_3
    move v6, v7

    .line 252
    goto :goto_3
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 298
    if-eqz p1, :cond_0

    .line 299
    const-string/jumbo v2, "saved_restore_action_mode_menu_state"

    .line 300
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 301
    .local v1, "showActionModeMenu":Z
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getActionMenuView(Landroid/app/Activity;)Landroid/widget/ActionMenuView;

    move-result-object v0

    .line 304
    .local v0, "actionMenuView":Landroid/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    .line 309
    .end local v0    # "actionMenuView":Landroid/widget/ActionMenuView;
    .end local v1    # "showActionModeMenu":Z
    :cond_0
    return-void
.end method

.method public setAlbumArt(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V
    .locals 0
    .param p1, "albumArt"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .line 816
    return-void
.end method
