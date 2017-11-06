.class public Lcom/samsung/android/app/music/milk/store/StoreFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "StoreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;
.implements Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;
.implements Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StoreMainFragment"

.field private static sFragmentManager:Landroid/app/FragmentManager;

.field public static sIsStoreActivated:Z


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

.field private mBannerViewHolder:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

.field private mContentContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mIsLoadFinished:Z

.field private mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private final mNetworkStateListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPageTypeToLaunch:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sIsStoreActivated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNetworkStateListener:Ljava/util/ArrayList;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mIsLoadFinished:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    return-void
.end method

.method private createBannerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 294
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mBannerViewHolder:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    .line 295
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mBannerViewHolder:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mBannerViewHolder:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->onCreateView(Landroid/view/ViewGroup;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mBannerViewHolder:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->itemView:Landroid/view/View;

    return-object v1
.end method

.method private getGroupTypeFromPageType(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 3
    .param p1, "pageType"    # Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "groupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreFragment$2;->$SwitchMap$com$samsung$android$app$music$milk$store$StorePageLauncher$StorePageType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 553
    :goto_0
    return-object v0

    .line 534
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 535
    goto :goto_0

    .line 537
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 538
    goto :goto_0

    .line 540
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 541
    goto :goto_0

    .line 543
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 544
    goto :goto_0

    .line 546
    :pswitch_4
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 547
    goto :goto_0

    .line 549
    :pswitch_5
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getStoreFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private initCategoryViews()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setHasFixedSize(Z)V

    .line 258
    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

    .line 259
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->setExtraLayoutSpace(I)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 262
    .local v0, "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    instance-of v1, v0, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    .end local v0    # "animator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 266
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/StoreFragment;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 288
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setItemViewCacheSize(I)V

    .line 289
    return-void
.end method

.method private updateMenuBadgeLaunchSetting(Landroid/view/Menu;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 242
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/view/SemMenuItem;

    .line 243
    .local v1, "item":Landroid/view/SemMenuItem;
    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_player_pref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 248
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    .local v0, "badge":Z
    if-eqz v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a04af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBannerViewHolder()Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 454
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    if-nez v8, :cond_1

    .line 455
    :cond_0
    const-string v8, "StoreMainFragment"

    const-string v9, "getBannerViewHolder : Banner not found => Some widget is null"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 493
    :goto_0
    return-object v5

    .line 459
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getItemCount()I

    move-result v3

    .line 460
    .local v3, "size":I
    if-nez v3, :cond_2

    .line 461
    const-string v8, "StoreMainFragment"

    const-string v9, "getBannerViewHolder : Banner not found => No item exist"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 462
    goto :goto_0

    .line 465
    :cond_2
    const/4 v0, 0x0

    .line 466
    .local v0, "bannerPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 467
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v8, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getItemViewType(I)I

    move-result v6

    .line 469
    .local v6, "viewType":I
    invoke-static {v6}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->fromValue(I)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v4

    .line 470
    .local v4, "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    sget-object v8, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    if-ne v4, v8, :cond_4

    .line 471
    move v0, v2

    .line 476
    .end local v4    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .end local v6    # "viewType":I
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 477
    .local v1, "childView":Landroid/view/View;
    if-nez v1, :cond_5

    .line 478
    const-string v8, "StoreMainFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBannerViewHolder : Banner not found => BannerPos:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 479
    goto :goto_0

    .line 466
    .end local v1    # "childView":Landroid/view/View;
    .restart local v4    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .restart local v6    # "viewType":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    .end local v4    # "storeMainGroupType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .end local v6    # "viewType":I
    .restart local v1    # "childView":Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    invoke-virtual {v8, v1}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 483
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v5, :cond_6

    .line 484
    const-string v8, "StoreMainFragment"

    const-string v9, "getBannerViewHolder : Banner not found => no view"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 485
    goto :goto_0

    .line 488
    :cond_6
    instance-of v8, v5, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    if-nez v8, :cond_7

    .line 489
    const-string v8, "StoreMainFragment"

    const-string v9, "getBannerViewHolder : Invalid Banner"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 490
    goto :goto_0

    .line 493
    :cond_7
    check-cast v5, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMusicCategoryGenreList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v1, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v4

    .line 614
    .local v4, "mainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    if-eqz v4, :cond_1

    .line 615
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 616
    .local v3, "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 617
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getGroupTypeFromPageType(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 618
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getCategoryGenreList()Ljava/util/List;

    move-result-object v2

    .line 619
    .local v2, "genreList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;

    .line 620
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    .end local v2    # "genreList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;>;"
    .end local v3    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_1
    return-object v1
.end method

.method public getStoreMaingGroup(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .locals 6
    .param p1, "pageType"    # Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 593
    .local v2, "retValue":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 594
    .local v1, "mainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    if-eqz v1, :cond_1

    .line 595
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 596
    .local v0, "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getGroupTypeFromPageType(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 597
    const-string v4, "StoreMainFragment"

    const-string v5, "launchSubPage : MainGroup found"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    if-eq p1, v4, :cond_0

    .line 599
    move-object v2, v0

    .line 606
    .end local v0    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_1
    return-object v2
.end method

.method public hideError()V
    .locals 2

    .prologue
    .line 389
    const-string v0, "StoreMainFragment"

    const-string v1, "hideError : in "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 392
    const-string v0, "StoreMainFragment"

    const-string v1, "hideError : NoNetworkLayout is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    goto :goto_0
.end method

.method public hideMainGroups()V
    .locals 2

    .prologue
    .line 365
    const-string v0, "StoreMainFragment"

    const-string v1, "hideMainGroups : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "StoreMainFragment"

    const-string v1, "hideProgress : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 321
    const-string v0, "StoreMainFragment"

    const-string v1, "hideProgress : Progressbar is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mIsLoadFinished:Z

    return v0
.end method

.method public isViewCached()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getMode()Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchSubPage(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)V
    .locals 8
    .param p1, "pageType"    # Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .prologue
    .line 500
    const-string v5, "StoreMainFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchSubPage : PageType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v4

    .line 503
    .local v4, "mainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    if-eqz v4, :cond_4

    .line 505
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 506
    .local v3, "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getGroupTypeFromPageType(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 507
    const-string v5, "StoreMainFragment"

    const-string v6, "launchSubPage : MainGroup found"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v5, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    if-eq p1, v5, :cond_2

    .line 509
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    .line 526
    .end local v3    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_1
    :goto_0
    return-void

    .line 511
    .restart local v3    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getCategoryGenreList()Ljava/util/List;

    move-result-object v2

    .line 512
    .local v2, "genreList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v1, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;

    .line 514
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;->getGenreId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveMusicCategory(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 523
    .end local v1    # "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "genreList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainCategoryGenre;>;"
    .end local v3    # "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_4
    const-string v5, "StoreMainFragment"

    const-string v6, "launchSubPage : No data exist, check later"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPageTypeToLaunch:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->setHasOptionsMenu(Z)V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sFragmentManager:Landroid/app/FragmentManager;

    .line 111
    new-instance v1, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->onAttachView(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 115
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 116
    const-string v1, "Music"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v5, p0}, Lcom/samsung/android/app/music/bixby/executor/store/LaunchStoreMainGroupExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;)V

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 201
    const v0, 0x7f130021

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 203
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 129
    const v0, 0x7f0400e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->initialize(Landroid/app/Activity;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mContentContainer:Landroid/widget/RelativeLayout;

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->initCategoryViews()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->onDetachView()V

    .line 193
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    .line 194
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRootView:Landroid/view/ViewGroup;

    .line 195
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    .line 196
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mBannerViewHolder:Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    .line 197
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 183
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sFragmentManager:Landroid/app/FragmentManager;

    .line 184
    return-void
.end method

.method public onFeatureChanged(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 558
    const-string/jumbo v1, "user_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 559
    .local v0, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    if-eqz v1, :cond_0

    .line 560
    const-string v1, "StoreMainFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFeatureChanged : User info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->loadStoreMainGroups()V

    .line 563
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 238
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 218
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "0003"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/milk/help/HelpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "0055"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->launchContactUs(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string/jumbo v1, "web_url"

    const-string v2, "http://samsungmusic.kr/html/ssmusic_qa_bridge.php"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v1, "web_for_notice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->startActivity(Landroid/content/Intent;)V

    .line 235
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "0004"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x7f1205b5 -> :sswitch_0
        0x7f1205c7 -> :sswitch_1
        0x7f1205c8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->onPause()V

    .line 174
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 209
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v0, :cond_0

    .line 210
    const v0, 0x7f1205b5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->updateMenuBadgeLaunchSetting(Landroid/view/Menu;I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/app/Activity;
    return-void
.end method

.method public onRetry()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "StoreMainFragment"

    const-string v1, "onRetry : in "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->retryLoad()V

    .line 409
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStart()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->loadStoreMainGroups()V

    .line 159
    return-void
.end method

.method public onTabActivated()V
    .locals 3

    .prologue
    .line 425
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sIsStoreActivated:Z

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getBannerViewHolder()Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    move-result-object v0

    .line 428
    .local v0, "bannerViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;
    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    const-string v1, "StoreMainFragment"

    const-string v2, "onTabActivated : in "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->startAutoScroll()V

    goto :goto_0
.end method

.method public onTabDeactivated()V
    .locals 3

    .prologue
    .line 437
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/app/music/milk/store/StoreFragment;->sIsStoreActivated:Z

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getBannerViewHolder()Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;

    move-result-object v0

    .line 440
    .local v0, "bannerViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;
    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    const-string v1, "StoreMainFragment"

    const-string v2, "onTabDeactivated : in "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->stopAutoScroll()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 567
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 568
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 153
    return-void
.end method

.method public setLoadFinished(Z)V
    .locals 1
    .param p1, "loadFinished"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mIsLoadFinished:Z

    .line 579
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mIsLoadFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 582
    :cond_0
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 587
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->setUserVisibleHint(Z)V

    .line 415
    const-string v0, "StoreMainFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserVisibleHint : isVisibleToUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->onTabActivated()V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->onTabDeactivated()V

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 3
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 376
    const-string v0, "StoreMainFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showError : in rsp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->hideProgress()V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 380
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "showError : NoNetworkLayout is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showMainGroups()V
    .locals 2

    .prologue
    .line 330
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "showMainGroups : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    if-nez v0, :cond_0

    .line 333
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "showMainGroups : Recyclerview is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "showProgress : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 309
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "showProgress : Progressbar is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->setLoadFinished(Z)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMainGroups(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "storeMainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    const/4 v2, 0x0

    .line 342
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "updateMainGroups : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "updateMainGroups : Recyclerview is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    .line 352
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->getItemCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->scrollToPosition(I)V

    .line 354
    const-string v0, "StoreMainFragment"

    const-string/jumbo v1, "updateMainGroups : Scroll position 0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter;->setData(Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->setLoadFinished(Z)V

    goto :goto_0
.end method
