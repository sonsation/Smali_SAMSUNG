.class public abstract Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MilkSearchBaseResultFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$BaseStaticHandler;,
        Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;,
        Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/List;",
        ">",
        "Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter",
        "<TT;>;",
        "Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;",
        "Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;"
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_SEARCH_INTERNAL_RELOAD:Ljava/lang/String; = "com.samsung.common.search.internal_reload_recommend_searchkeyword"

.field public static final INTENT_ACTION_SEARCH_RELOAD:Ljava/lang/String; = "com.samsung.common.search.reload_recommend_searchkeyword"

.field public static final INTENT_SEARCH_RECOMMEND_KEYWORD:Ljava/lang/String; = "com.samsung.common.search.recommend_searchkeyword"

.field public static final INTENT_SEARCH_RECOMMEND_KEYWORD_SET:Ljava/lang/String; = "com.samsung.common.search.recommend_searchkeyword_set"

.field protected static final KEY_KEYWORD:Ljava/lang/String; = "keyword"


# instance fields
.field private layoutResource:I

.field protected mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

.field protected mKeyword:Ljava/lang/String;

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mMainHandler:Landroid/os/Handler;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field protected mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

.field private mReloadRunnable:Ljava/lang/Runnable;

.field private mSearchButtonsView:Landroid/view/View;

.field private mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

.field protected mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

.field private mSpinner:Landroid/widget/Spinner;

.field protected mainContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 315
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->internalReload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private internalReload(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 260
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mKeyword:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->updatePrimaryColor(I)V

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->setupInitAdapter()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onViewInitializeCompleted(Landroid/view/View;)V

    .line 269
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->showLoading(Z)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mReloadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mReloadRunnable:Ljava/lang/Runnable;

    .line 275
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$CountRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mReloadRunnable:Ljava/lang/Runnable;

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mReloadRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method

.method private setupInitAdapter()V
    .locals 3

    .prologue
    .line 238
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setOnLoadMoreListener(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;

    move-result-object v0

    .line 254
    .local v0, "onItemClickListener":Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.end method

.method protected abstract createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
.end method

.method public enableSearchHeader(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 428
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isSupportSorting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isSupportSearchHeaderButtons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    if-eqz v0, :cond_0

    .line 437
    if-eqz p1, :cond_2

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->setVisibility(I)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected enableSpinnerView(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 598
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBixbyRecommendKeyword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getBixbyRecommendKeyword()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    return-object v0
.end method

.method public getCurrentKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getLayoutResource()I
.end method

.method protected abstract getLogPageName()Ljava/lang/String;
.end method

.method protected abstract getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
.end method

.method protected final hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 604
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 605
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 607
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 608
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 609
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 611
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 485
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->isInitialized()Z

    move-result v0

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowLoading()Z
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isShowLoading()Z

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportSearchHeaderButtons()Z
    .locals 1

    .prologue
    .line 357
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected isSupportSorting()Z
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mKeyword:Ljava/lang/String;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : keyword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->layoutResource:I

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mMainHandler:Landroid/os/Handler;

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mReloadRunnable:Ljava/lang/Runnable;

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
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
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 135
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->layoutResource:I

    invoke-virtual {p1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f1202b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 138
    const v4, 0x7f1202cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    .line 139
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v4, :cond_0

    .line 140
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, p0, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 143
    :cond_0
    const v4, 0x7f120370

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    .line 144
    const v4, 0x7f1202cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchButtonsView:Landroid/view/View;

    .line 146
    const v4, 0x7f120371

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .line 147
    const v4, 0x7f12027e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 148
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const v5, 0x7f120466

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 150
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v4, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->setupInitAdapter()V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isSupportSorting()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCreateView : isSupportSorting"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const v4, 0x7f12038f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    .line 157
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    instance-of v4, v4, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    if-eqz v4, :cond_2

    .line 158
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->setHideSoftKeypad(Z)V

    .line 161
    :cond_2
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;-><init>(Landroid/content/Context;[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;)V

    .line 163
    .local v2, "spinAdapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isSupportSearchHeaderButtons()Z

    move-result v4

    if-nez v4, :cond_3

    .line 193
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchButtonsView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .end local v2    # "spinAdapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onViewInitializeCompleted(Landroid/view/View;)V

    .line 208
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->showLoading(Z)V

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.common.search.internal_reload_recommend_searchkeyword"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v4, v0, v5}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 217
    return-object v3

    .line 196
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isSupportSearchHeaderButtons()Z

    move-result v4

    if-nez v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    if-eqz v4, :cond_5

    .line 199
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchHeader:Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {v4, v9}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->setVisibility(I)V

    .line 201
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .line 202
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 203
    .local v1, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1, v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    const/4 v1, 0x0

    .line 222
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->detachView()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 233
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .line 235
    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 340
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 345
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 346
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 588
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 589
    .local v0, "margin":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGlobalLayout. height is changed so change height. before - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", after - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    .line 591
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    :cond_0
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 2

    .prologue
    .line 477
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->loadSearchResult(Z)V

    .line 482
    :cond_0
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 386
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->reload(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public onSelected()V
    .locals 5

    .prologue
    .line 466
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.search.store.selectedtab"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    .line 468
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getSearchType()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelect >>> SelectTab => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.search.store.selectedtab"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    return-void
.end method

.method protected onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 361
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->sortResult()V

    .line 362
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 462
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    return-void
.end method

.method protected onViewInitializeCompleted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 350
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 615
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 280
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->internalReload(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$BaseStaticHandler;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$BaseStaticHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;-><init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Landroid/os/Handler;)V

    .line 297
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$WaitForAttachFragmentThread;->start()V

    goto :goto_0
.end method

.method public bridge synthetic showContents(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->showContents(Ljava/util/List;)V

    return-void
.end method

.method public showContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    .local p1, "data":Ljava/util/List;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mainContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->swapArray(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 446
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 419
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->showLoading(Z)V

    .line 424
    return-void

    .line 421
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMoreLoading(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 454
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->enableLoadMore(Z)V

    goto :goto_0
.end method

.method public sortResult()V
    .locals 3

    .prologue
    .line 408
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->requestSearchListClear()V

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sortResult : order : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->sortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method
