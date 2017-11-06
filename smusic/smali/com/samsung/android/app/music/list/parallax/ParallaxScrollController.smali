.class public Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
    }
.end annotation


# static fields
.field private static final STATUS_BAR_ENABLED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActionBarHeight:I

.field private final mActionBarTitleView:Landroid/widget/TextView;

.field private mCurrentPagePosition:I

.field private final mDefaultParallaxThumbnailContainerHeight:I

.field private final mExpendedParallaxThumbnailContainerHeight:I

.field private mIsParallaxViewExpended:Z

.field private final mMovableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mParallaxHolderHeight:I

.field private final mParallaxHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mParallaxThumbnailContainer:Landroid/view/View;

.field private final mParallaxView:Landroid/view/View;

.field private final mRecyclerViewTopMargin:I

.field private final mRecyclerViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizeAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mStatusBarHeight:I

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->STATUS_BAR_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mResizeAnimators:Ljava/util/List;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViews:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolders:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mMovableViews:Ljava/util/List;

    .line 271
    new-instance v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 86
    sget-object v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParallaxScrollController() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "music_player_pref"

    .line 88
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_full_thumbnail"

    .line 90
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mIsParallaxViewExpended:Z

    .line 92
    iput-object p2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 93
    const v0, 0x7f1204ed

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxView:Landroid/view/View;

    .line 94
    const v0, 0x7f1204ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->calcParallaxThumbnailContainerHeight(Landroid/app/Activity;Z)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mExpendedParallaxThumbnailContainerHeight:I

    .line 99
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->calcParallaxThumbnailContainerHeight(Landroid/app/Activity;Z)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mDefaultParallaxThumbnailContainerHeight:I

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarHeight:I

    .line 102
    invoke-static {p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mStatusBarHeight:I

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->calcRecyclerViewTopMargin(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViewTopMargin:I

    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mIsParallaxViewExpended:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->calcParallaxHolderHeight(Z)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    .line 107
    iput-object p3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 110
    invoke-static {p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->getActionBarTitleView(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->initExpandableView()V

    .line 126
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_2
    iput-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolders:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->setGoToTop(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mResizeAnimators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mIsParallaxViewExpended:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mIsParallaxViewExpended:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->calcParallaxHolderHeight(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mDefaultParallaxThumbnailContainerHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mExpendedParallaxThumbnailContainerHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
    .param p1, "x1"    # Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->scrollParallaxView(Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarHeight:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->STATUS_BAR_ENABLED:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mMovableViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViewTopMargin:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mCurrentPagePosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mCurrentPagePosition:I

    return p1
.end method

.method private calcParallaxHolderHeight(Z)I
    .locals 4
    .param p1, "isExpanded"    # Z

    .prologue
    .line 431
    if-eqz p1, :cond_1

    .line 432
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mExpendedParallaxThumbnailContainerHeight:I

    .line 436
    .local v0, "height":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarHeight:I

    sub-int/2addr v0, v1

    .line 437
    sget-boolean v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->STATUS_BAR_ENABLED:Z

    if-eqz v1, :cond_0

    .line 438
    iget v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 440
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcParallaxHolderHeight() - height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | isExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return v0

    .line 434
    .end local v0    # "height":I
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mDefaultParallaxThumbnailContainerHeight:I

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private calcParallaxThumbnailContainerHeight(Landroid/app/Activity;Z)I
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "expand"    # Z

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 447
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 449
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 450
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 451
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 453
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return v3

    :cond_0
    const v3, 0x7f0d034f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0
.end method

.method private calcRecyclerViewTopMargin(Landroid/app/Activity;)I
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 463
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_1

    .line 464
    const v5, 0x7f0d02c3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 465
    .local v4, "tabHeight":I
    const v5, 0x7f0d0404

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 471
    .local v1, "dividerHeight":I
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 472
    .local v0, "actionBarHeight":I
    add-int v5, v4, v1

    add-int v3, v5, v0

    .line 473
    .local v3, "result":I
    sget-boolean v5, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->STATUS_BAR_ENABLED:Z

    if-eqz v5, :cond_0

    .line 474
    invoke-static {p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v5

    add-int/2addr v3, v5

    .line 476
    :cond_0
    sget-object v5, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcRecyclerViewTopMargin() - tabHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dividerHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", actionBarHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return v3

    .line 467
    .end local v0    # "actionBarHeight":I
    .end local v1    # "dividerHeight":I
    .end local v3    # "result":I
    .end local v4    # "tabHeight":I
    :cond_1
    const/4 v4, 0x0

    .line 468
    .restart local v4    # "tabHeight":I
    const/4 v1, 0x0

    .restart local v1    # "dividerHeight":I
    goto :goto_0
.end method

.method private static getActionBarTitleView(Landroid/app/Activity;)Landroid/widget/TextView;
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 484
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 486
    .local v1, "decor":Landroid/view/View;
    const-string v2, "dummy_key_to_find_action_bar_title_view"

    .line 487
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 490
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 491
    .local v3, "titleView":Landroid/view/View;
    instance-of v6, v3, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 492
    check-cast v3, Landroid/widget/TextView;

    .line 496
    .end local v1    # "decor":Landroid/view/View;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "titleView":Landroid/view/View;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 6
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 420
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 421
    .local v0, "height":I
    const-string/jumbo v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 422
    .local v2, "resourceId":I
    if-lez v2, :cond_0

    .line 423
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 425
    :cond_0
    return v0
.end method

.method private initExpandableView()V
    .locals 3

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mIsParallaxViewExpended:Z

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mExpendedParallaxThumbnailContainerHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 336
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    new-instance v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$6;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;)V

    .line 345
    .local v0, "animator":Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
    new-instance v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mResizeAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$8;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void
.end method

.method private scrollParallaxView(Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .locals 10
    .param p1, "parallaxHolder"    # Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 214
    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 215
    invoke-interface {p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->getPositionY()I

    move-result v2

    .line 216
    .local v2, "positionY":I
    sget-object v3, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollParallaxView() | positionY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 269
    .end local v2    # "positionY":I
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v2    # "positionY":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxView:Landroid/view/View;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 222
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mMovableViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 223
    .local v1, "movableView":Landroid/view/View;
    iget v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViewTopMargin:I

    iget v5, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 224
    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 228
    .end local v1    # "movableView":Landroid/view/View;
    :cond_2
    int-to-float v3, v2

    iget v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v0, v8, v3

    .line 229
    .local v0, "alpha":F
    cmpg-float v3, v0, v8

    if-gtz v3, :cond_4

    .line 230
    cmpg-float v3, v0, v7

    if-gez v3, :cond_3

    .line 231
    const/4 v0, 0x0

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 235
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 237
    cmpg-float v3, v0, v9

    if-gtz v3, :cond_5

    .line 238
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    sub-float v4, v9, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 240
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 243
    :cond_6
    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_7

    .line 244
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    .end local v0    # "alpha":F
    .end local v2    # "positionY":I
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 252
    sget-object v3, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollParallaxView() | parallaxHolder is invisible. parallaxView is translated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    neg-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 256
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mMovableViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 257
    .restart local v1    # "movableView":Landroid/view/View;
    iget v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViewTopMargin:I

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 259
    .end local v1    # "movableView":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxThumbnailContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 260
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    .line 262
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBarTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 264
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setGoToTop(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 320
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 321
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 322
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViews:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 323
    .local v1, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->stopScroll()V

    .line 324
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->enableGoToTop(Z)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs addMovableView([Landroid/view/View;)V
    .locals 7
    .param p1, "views"    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 204
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 205
    .local v0, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mMovableViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    sget-object v4, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMovableView() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mMovableViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    iget v5, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViewTopMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setParallaxHolder(ILcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parallaxHolder"    # Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    sget-object v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParallaxHolder() | parallaxHolder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | recyclerView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 139
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mRecyclerViewTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 140
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setOnChildrenOffsetChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;)V

    .line 153
    new-instance v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$2;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 166
    iget v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mParallaxHolderHeight:I

    invoke-interface {p3, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->setHeight(I)V

    .line 168
    new-instance v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;ILcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 185
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->mResizeAnimators:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    new-instance v3, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;

    invoke-direct {v3, p0, p3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method
