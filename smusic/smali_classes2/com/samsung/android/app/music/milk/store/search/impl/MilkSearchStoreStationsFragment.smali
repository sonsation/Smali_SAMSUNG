.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;
.super Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.source "MilkSearchStoreStationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;-><init>()V

    .line 36
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method protected createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->mKeyword:Ljava/lang/String;

    const-string v3, "5"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f04018c

    return v0
.end method

.method protected getLogPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, ""

    return-object v0
.end method

.method protected getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    instance-of v2, v2, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;

    if-eqz v2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;

    .line 83
    .local v0, "searchStationsAdapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;)V

    goto :goto_0
.end method

.method protected getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isSupportSearchHeaderButtons()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportSorting()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onSelected()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSelected()V

    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "967"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->primaryColorChanged(I)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->updatePrimaryColor(I)V

    .line 139
    return-void
.end method
