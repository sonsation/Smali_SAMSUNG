.class public Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "NowPlayingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$StreamingContentLoadHelper;,
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;,
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingCheckableList;,
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$RemoteTrackActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;,
        Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final SAVED_HIDDEN_STATE:Ljava/lang/String; = "saved_hidden_state"

.field private static final SAVED_RESTORE_ACTION_MODE_MENU:Ljava/lang/String; = "saved_restore_action_mode_menu_state"

.field public static final TAG:Ljava/lang/String;

.field private static final TURN_OFF_ANIMATION_INTERVAL:I = 0xc8


# instance fields
.field private mAddTrackButton:Landroid/widget/TextView;

.field private final mAddTrackClickListener:Landroid/view/View$OnClickListener;

.field private mAddTrackContainer:Landroid/view/View;

.field private mAddTrackEnabled:Z

.field private mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentPlayingPosition:I

.field private mDividerView:Landroid/view/View;

.field private mIsAnimatingRemoval:Z

.field private mIsHidden:Z

.field private mIsVisibleToUser:Z

.field private mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field private final mItemAnimatorRunnable:Ljava/lang/Runnable;

.field private mNeedSetSelection:Z

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

.field private mSortMode:I

.field private mStreamingContentLoadHelper:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$StreamingContentLoadHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 111
    iput v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsHidden:Z

    .line 117
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsVisibleToUser:Z

    .line 119
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackEnabled:Z

    .line 121
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mNeedSetSelection:Z

    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsAnimatingRemoval:Z

    .line 140
    iput v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mSortMode:I

    .line 371
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 389
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 462
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    .line 642
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackClickListener:Landroid/view/View$OnClickListener;

    .line 699
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$7;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimatorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mDividerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setAddTrackEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsAnimatingRemoval:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsAnimatingRemoval:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method private changeLoadingViewColor(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f110256

    const/high16 v4, 0x3f000000    # 0.5f

    .line 264
    const v2, 0x7f1200fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 265
    .local v0, "loadingProgressBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 266
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 268
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 270
    :cond_0
    const v2, 0x7f120200

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 271
    .local v1, "loadingText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 276
    :cond_1
    return-void
.end method

.method private initAddTrackView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 662
    const v1, 0x7f120529

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    .line 663
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 667
    .local v0, "a":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    const v2, 0x7f1202f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackButton:Landroid/widget/TextView;

    .line 668
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackButton:Landroid/widget/TextView;

    .line 670
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01d7

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 672
    const v1, 0x7f12052b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mDividerView:Landroid/view/View;

    .line 674
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackEnabled:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setAddTrackEnabled(Z)V

    .line 675
    return-void
.end method

.method private isAddTrackSupported()Z
    .locals 4

    .prologue
    .line 655
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 657
    .local v1, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 658
    .local v0, "cpAttrs":I
    const v2, 0x20004

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNotListChanged(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 563
    const/4 v1, 0x1

    .line 564
    .local v1, "sortMode":I
    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 565
    .local v2, "values":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 566
    const-string v3, "extra.sort_state"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 568
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mSortMode:I

    if-ne v3, v1, :cond_1

    .line 569
    .local v0, "isChanged":Z
    :goto_0
    iput v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mSortMode:I

    .line 570
    return v0

    .line 568
    .end local v0    # "isChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToNowplayingPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mNeedSetSelection:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isActionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mNeedSetSelection:Z

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 428
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 430
    :cond_0
    return-void
.end method

.method private setAddTrackEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackEnabled:Z

    .line 679
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAddTrackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 682
    :cond_2
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_1
.end method

.method private turnOffItemAnimatorDuringSomeTime()V
    .locals 4

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 694
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 695
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 696
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimatorRunnable:Ljava/lang/Runnable;

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

    .line 707
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 727
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f120528

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 711
    .local v0, "countView":Landroid/widget/TextView;
    if-nez p2, :cond_1

    .line 712
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 714
    :cond_1
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "front":Ljava/lang/String;
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "rear":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 719
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 721
    :cond_2
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 362
    const v0, 0x100012

    return v0
.end method

.method protected initListLoader(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 575
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

    .line 577
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 731
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-nez p1, :cond_0

    .line 733
    const-string v2, "extra_checked_item_ids"

    .line 734
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 741
    .local v0, "checkedItemIds":[J
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 742
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$8;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;[J)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    .end local v0    # "checkedItemIds":[J
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    .line 145
    const-string v0, "303"

    const-string v1, "305"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-string/jumbo v0, "saved_hidden_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsHidden:Z

    .line 154
    :cond_0
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 3

    .prologue
    .line 342
    new-instance v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "audio_id"

    .line 344
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string/jumbo v2, "title"

    .line 345
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v2, "artist"

    .line 346
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    .line 347
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 419
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13000a

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 422
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsVisibleToUser:Z

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13001d

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 414
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 357
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
    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isActivatedSmallScreenUi(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const v1, 0x7f0401f8

    .line 166
    .local v1, "layout":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 164
    .end local v1    # "layout":I
    :cond_0
    const v1, 0x7f0401f7

    .restart local v1    # "layout":I
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 295
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroyView()V

    .line 296
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 540
    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    const-string v3, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 542
    .local v2, "values":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 560
    .end local v2    # "values":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 546
    .restart local v2    # "values":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 547
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    :cond_2
    const-string v3, "UiList"

    const-string/jumbo v4, "onExtrasChanged() : Cursor is closed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    .line 552
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isNotListChanged(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    const-string v3, "UiList"

    const-string/jumbo v4, "onExtrasChanged() : list is not changed"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_4
    iget v3, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v1

    .line 557
    .local v1, "orderedPosition":I
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->updateTotalCountView(II)V

    .line 558
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->updatePlayingItemAndState(J)V

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onHiddenChanged(Z)V

    .line 317
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsHidden:Z

    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->unregisterMediaChangeObserver()V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->stopScroll()V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->finishActionMode()V

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mNeedSetSelection:Z

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->turnOffItemAnimatorDuringSomeTime()V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->registerMediaChangeObserver()V

    .line 330
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 479
    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 481
    .local v6, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-nez v6, :cond_1

    .line 482
    const-string v0, "SMUSIC-UiList"

    const-string/jumbo v4, "onMetadataChanged cursor is null. "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v8

    .line 486
    .local v8, "orderedPosition":I
    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v7, v4

    .line 487
    .local v7, "count":I
    invoke-direct {p0, v8, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->updateTotalCountView(II)V

    .line 488
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsAnimatingRemoval:Z

    if-nez v0, :cond_0

    .line 489
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 490
    .local v1, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 491
    .local v2, "albumId":J
    int-to-long v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->updatePlayingAudioId(IJJ)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsAnimatingRemoval:Z

    if-nez v0, :cond_0

    .line 498
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 500
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

    const/4 v7, 0x0

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 509
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    if-eqz v0, :cond_0

    .line 512
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    invoke-direct {v1, p1, p2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 513
    .local v1, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 514
    if-nez p2, :cond_4

    .line 515
    iput v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    .line 519
    :goto_1
    iget v5, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v4

    .line 520
    .local v4, "orderedPosition":I
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v2

    .line 521
    .local v2, "count":I
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->updateTotalCountView(II)V

    .line 522
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->updatePlayingItemAndState(J)V

    .line 524
    if-lez v2, :cond_5

    move v3, v6

    .line 525
    .local v3, "hasQueue":Z
    :goto_2
    if-eqz v3, :cond_6

    .line 526
    iget-boolean v5, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mNeedSetSelection:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isActionMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 527
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->scrollToNowplayingPosition(I)V

    .line 532
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isActionMode()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    move v5, v6

    :goto_4
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setAddTrackEnabled(Z)V

    .line 533
    if-nez v3, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setEmptyViewVisibility(Z)V

    .line 534
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setListShown(Z)V

    .line 535
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->confirmCheckedPositionsById()V

    goto :goto_0

    .line 517
    .end local v2    # "count":I
    .end local v3    # "hasQueue":Z
    .end local v4    # "orderedPosition":I
    :cond_4
    const-string v5, "extra.list_position"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mCurrentPlayingPosition:I

    goto :goto_1

    .restart local v2    # "count":I
    .restart local v4    # "orderedPosition":I
    :cond_5
    move v3, v7

    .line 524
    goto :goto_2

    .line 530
    .restart local v3    # "hasQueue":Z
    :cond_6
    iput-boolean v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsAnimatingRemoval:Z

    goto :goto_3

    :cond_7
    move v5, v7

    .line 532
    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    const-string/jumbo v2, "saved_hidden_state"

    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsHidden:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isActionMode()Z

    move-result v1

    .line 282
    .local v1, "isActionMode":Z
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getActionMenuView(Landroid/app/Activity;)Landroid/widget/ActionMenuView;

    move-result-object v0

    .line 284
    .local v0, "actionMenuView":Landroid/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 285
    const-string/jumbo v2, "saved_restore_action_mode_menu_state"

    .line 286
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v3

    .line 285
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    .end local v0    # "actionMenuView":Landroid/widget/ActionMenuView;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0d04e9

    const/4 v10, 0x0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isAddTrackSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->initAddTrackView(Landroid/view/View;)V

    .line 175
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    .line 182
    .local v5, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isActivatedSmallScreenUi(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    const/4 v6, -0x1

    .line 187
    .local v6, "selectAllTextResId":I
    :goto_0
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-direct {v7, v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 188
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setChoiceMode(I)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    .line 191
    .local v4, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v7, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 192
    .local v2, "cpAttrs":I
    const v7, 0x20004

    if-ne v2, v7, :cond_4

    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$RemoteTrackActionModeOptionsMenu;

    invoke-direct {v7, p0, v10}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$RemoteTrackActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V

    :goto_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 195
    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingCheckableList;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 196
    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;

    invoke-direct {v7, p0, v10}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 197
    new-instance v7, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 198
    new-instance v7, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 199
    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;

    invoke-direct {v7, p0, v10}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 200
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setReorderEnabled(Z)V

    .line 203
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v8, 0x7f020146

    .line 204
    invoke-virtual {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v7

    .line 205
    invoke-virtual {v7, v11}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v7

    .line 206
    invoke-virtual {v7, v11}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v3

    .line 207
    .local v3, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 210
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mStreamingContentLoadHelper:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$StreamingContentLoadHelper;

    if-eqz v7, :cond_5

    .line 211
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mStreamingContentLoadHelper:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$StreamingContentLoadHelper;

    invoke-interface {v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$StreamingContentLoadHelper;->setUpLoadButton()V

    .line 216
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 217
    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;

    invoke-direct {v7, p0, v10}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getListType()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->initListLoader(I)V

    .line 220
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setListShown(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    .line 223
    .local v1, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v1, :cond_1

    .line 224
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    :cond_1
    instance-of v7, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v7, :cond_2

    .line 227
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .end local v0    # "a":Landroid/app/Activity;
    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    .line 228
    invoke-interface {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 243
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 244
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    new-instance v8, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->changeLoadingViewColor(Landroid/view/View;)V

    .line 261
    return-void

    .line 185
    .end local v1    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .end local v2    # "cpAttrs":I
    .end local v3    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .end local v4    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v6    # "selectAllTextResId":I
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_3
    const v6, 0x7f0a018c

    .restart local v6    # "selectAllTextResId":I
    goto/16 :goto_0

    .line 192
    .restart local v2    # "cpAttrs":I
    .restart local v4    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :cond_4
    new-instance v7, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;

    invoke-direct {v7, p0, v10}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V

    goto/16 :goto_1

    .line 213
    .restart local v3    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_5
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;

    const v8, 0x7f0a013a

    invoke-direct {v7, p0, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    goto :goto_2
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 301
    if-eqz p1, :cond_0

    .line 302
    const-string/jumbo v2, "saved_restore_action_mode_menu_state"

    .line 303
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 304
    .local v1, "showActionModeMenu":Z
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getActionMenuView(Landroid/app/Activity;)Landroid/widget/ActionMenuView;

    move-result-object v0

    .line 307
    .local v0, "actionMenuView":Landroid/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    .line 312
    .end local v0    # "actionMenuView":Landroid/widget/ActionMenuView;
    .end local v1    # "showActionModeMenu":Z
    :cond_0
    return-void
.end method

.method public setAlbumart(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V
    .locals 0
    .param p1, "albumart"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mAlbumArt:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .line 434
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->setUserVisibleHint(Z)V

    .line 337
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->mIsVisibleToUser:Z

    .line 338
    return-void
.end method
