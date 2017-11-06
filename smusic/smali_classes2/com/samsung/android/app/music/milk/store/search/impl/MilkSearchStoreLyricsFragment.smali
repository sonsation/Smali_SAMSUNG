.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;
.super Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.source "MilkSearchStoreLyricsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;-><init>()V

    .line 33
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method protected createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->mKeyword:Ljava/lang/String;

    const-string v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f04018c

    return v0
.end method

.method protected getLogPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, ""

    return-object v0
.end method

.method protected getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_1:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    return-object v0
.end method

.method protected isSupportSearchHeaderButtons()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onSelected()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSelected()V

    .line 43
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "969"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V

    .line 49
    const-string v0, "0"

    .line 50
    .local v0, "detail":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->order:Ljava/lang/String;

    .line 53
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "969"

    const-string v3, "9701"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->primaryColorChanged(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->updatePrimaryColor(I)V

    .line 108
    return-void
.end method

.method public bridge synthetic showContents(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->showContents(Ljava/util/ArrayList;)V

    return-void
.end method

.method public showContents(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->showContents(Ljava/util/List;)V

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public bridge synthetic showContents(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreLyricsFragment;->showContents(Ljava/util/ArrayList;)V

    return-void
.end method
