.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MilkSearchStorePresetFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;
.implements Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStorePresetFragment"

.field public static final MAX_HISTORY_CNT:I = 0x14

.field public static final MAX_PRESET_CNT:I = 0x4


# instance fields
.field private initialize:Z

.field private isResumed:Z

.field private mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

.field private mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

.field private mCurrentSearchPresetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentShownSearchPresetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

.field private mainContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentSearchPresetList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    return-object v0
.end method

.method private convertPresetAndPreWrittenType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 513
    const-string v0, "1"

    .line 514
    .local v0, "tempContentType":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const-string v0, "1"

    .line 521
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    const-string v0, "3"

    goto :goto_0

    .line 518
    :cond_2
    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string v0, "5"

    goto :goto_0
.end method

.method private loadSearchPresets()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->loadSearchPresets()V

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;
    .locals 2

    .prologue
    .line 81
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method


# virtual methods
.method public finishLoad()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;->onPreSetLoadFinished()V

    .line 446
    :cond_0
    return-void
.end method

.method public getPresetContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentSearchPresetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    .line 503
    .local v0, "preset":Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->convertPresetAndPreWrittenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .end local v0    # "preset":Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 525
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    .line 537
    .local v0, "lateExecution":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 547
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 548
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v0, v2, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->initialize:Z

    .line 105
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "963"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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
    const/4 v5, 0x0

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 113
    const v2, 0x7f040189

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;)V

    .line 119
    :cond_0
    const v2, 0x7f1202b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 120
    const v2, 0x7f1202cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mainContent:Landroid/view/View;

    .line 121
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v2, :cond_1

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mainContent:Landroid/view/View;

    invoke-virtual {v3, v2, p0, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 124
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setClickable(Z)V

    .line 126
    :cond_1
    const v2, 0x7f120371

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 127
    const v2, 0x7f12027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 189
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->initialize:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    .line 190
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "backupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->showContents(Ljava/util/List;)V

    .line 196
    .end local v0    # "backupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    :cond_2
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    if-eqz v0, :cond_1

    .line 238
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 242
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    if-eqz v0, :cond_3

    .line 246
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-eqz v0, :cond_4

    .line 250
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    .line 252
    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->detachView()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 226
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 227
    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 452
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->initialize:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->initialize:Z

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->loadSearchPresets()V

    .line 456
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->isResumed:Z

    .line 208
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onPause()V

    .line 209
    return-void
.end method

.method public onRemoveAllItemViewClicked()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->removeAllSearchHistory(Ljava/util/List;)V

    .line 492
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "963"

    const-string v2, "9615"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRemoveItemViewClicked(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->removeSearchHistory(Ljava/util/List;I)V

    .line 481
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "963"

    const-string v2, "9614"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onResume()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->isResumed:Z

    .line 203
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->loadSearchPresets()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStop()V

    .line 214
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->updatePrimaryColor(I)V

    .line 97
    return-void
.end method

.method public saveSearchHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 406
    if-eqz p1, :cond_4

    .line 407
    const-string v5, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "historyCnt":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {p1, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_0
    const/4 v4, 0x0

    .line 416
    .local v4, "isDuplicate":Z
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 418
    .local v3, "index":I
    const/4 v4, 0x1

    .line 423
    :goto_1
    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_2

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p1, v6, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 420
    .end local v3    # "index":I
    :cond_1
    move v3, v0

    .restart local v3    # "index":I
    goto :goto_1

    .line 426
    :cond_2
    const-string v5, "com.samsung.radio.search.HISTORY0"

    invoke-static {p1, v5, p2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-nez v4, :cond_3

    .line 429
    const/16 v5, 0x14

    if-ge v0, v5, :cond_3

    .line 430
    const-string v5, "com.samsung.radio.search.HISTORY_COUNT"

    add-int/lit8 v6, v0, 0x1

    invoke-static {p1, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 434
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    if-nez v5, :cond_5

    .line 439
    .end local v0    # "historyCnt":I
    .end local v1    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "isDuplicate":Z
    :cond_4
    :goto_3
    return-void

    .line 437
    .restart local v0    # "historyCnt":I
    .restart local v1    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "isDuplicate":Z
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mSearchPresetPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->refreshSearchHistory(Ljava/util/List;)V

    goto :goto_3
.end method

.method public setCallback(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    .line 498
    return-void
.end method

.method public showContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mainContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show()V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mainContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentSearchPresetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentSearchPresetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->showPreset(Ljava/util/List;)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->showHistory()V

    goto :goto_0
.end method

.method public showContentsListChanged(Ljava/util/List;I)V
    .locals 1
    .param p2, "remainHistoryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->setHistoryCnt(I)V

    .line 384
    if-eqz p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->swapArray(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showHistory()V
    .locals 7

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 364
    .local v0, "context":Landroid/content/Context;
    const-string v5, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 365
    .local v1, "historyCnt":I
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->setHistoryCnt(I)V

    .line 366
    if-nez v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v0, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "record":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    .end local v4    # "record":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->addAll(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getLogTag()Ljava/lang/String;

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

    .line 393
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 395
    :cond_0
    return-void

    .line 393
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPreWritten(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    const/4 v6, 0x0

    .line 278
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 279
    :cond_0
    const-string v3, "MilkSearchStorePresetFragment"

    const-string/jumbo v4, "showPreWritten : list is null or size is 0"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    .local v0, "context":Landroid/content/Context;
    const-string v3, "com.samsung.radio.search.PREWRITTEN_LAST_INDEX"

    invoke-static {v0, v3, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 286
    .local v2, "lastIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 287
    const/4 v2, 0x0

    .line 290
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 291
    if-ne v1, v2, :cond_6

    .line 292
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    if-eqz v3, :cond_4

    .line 293
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;->hasPrewritten()Z

    move-result v3

    if-nez v3, :cond_4

    .line 294
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-interface {v4, v5, v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;->fillSearchPrewrittenText(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_5

    .line 300
    const-string v3, "com.samsung.radio.search.PREWRITTEN_LAST_INDEX"

    invoke-static {v0, v3, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 302
    :cond_5
    const-string v3, "com.samsung.radio.search.PREWRITTEN_LAST_INDEX"

    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 290
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public showPreset(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    const/4 v9, 0x0

    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v7, "MilkSearchStorePresetFragment"

    const-string/jumbo v8, "showPreset : list is null"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 318
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 320
    .local v6, "totalPresetCount":I
    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    .line 321
    const/4 v6, 0x4

    .line 324
    :cond_1
    const-string v7, "com.samsung.radio.search.PRESET_LAST_INDEX"

    invoke-static {v0, v7, v9}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 325
    .local v3, "lastIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 326
    const/4 v3, 0x0

    .line 329
    :cond_2
    const/4 v2, 0x0

    .line 330
    .local v2, "insertCnt":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v5, "presetTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 334
    if-lt v1, v3, :cond_5

    .line 335
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v2, v2, 0x1

    .line 338
    if-ne v2, v6, :cond_5

    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_4

    .line 340
    const-string v7, "com.samsung.radio.search.PRESET_LAST_INDEX"

    invoke-static {v0, v7, v9}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 349
    :cond_3
    :goto_2
    if-eq v2, v6, :cond_7

    .line 351
    const/4 v1, 0x0

    :goto_3
    sub-int v7, v6, v2

    if-ge v1, v7, :cond_6

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    rem-int v7, v1, v7

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    .line 353
    .local v4, "preset":Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mCurrentShownSearchPresetList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 342
    .end local v4    # "preset":Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;
    :cond_4
    const-string v7, "com.samsung.radio.search.PRESET_LAST_INDEX"

    add-int/lit8 v8, v1, 0x1

    invoke-static {v0, v7, v8}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 333
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    :cond_6
    const-string v7, "com.samsung.radio.search.PRESET_LAST_INDEX"

    invoke-static {v0, v7, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 358
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->setPresetCount(I)V

    .line 359
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->swapArray(Ljava/util/List;)V

    goto/16 :goto_0
.end method
