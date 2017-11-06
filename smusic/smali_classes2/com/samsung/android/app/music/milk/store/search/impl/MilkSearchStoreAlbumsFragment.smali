.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;
.super Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.source "MilkSearchStoreAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;-><init>()V

    .line 35
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method protected createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->mKeyword:Ljava/lang/String;

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f04018c

    return v0
.end method

.method protected getLogPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, ""

    return-object v0
.end method

.method protected getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    instance-of v2, v2, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    if-eqz v2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    .line 105
    .local v0, "MilkSearchStoreAlbumsAdapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;)V

    goto :goto_0
.end method

.method protected getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_1:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    return-object v0
.end method

.method protected isSupportSearchHeaderButtons()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onSelected()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSelected()V

    .line 45
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "965"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V

    .line 52
    const-string v0, "0"

    .line 53
    .local v0, "detail":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->order:Ljava/lang/String;

    .line 56
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "965"

    const-string v3, "9661"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->primaryColorChanged(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->updatePrimaryColor(I)V

    .line 131
    return-void
.end method
