.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
.super Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.source "MilkSearchStorePickTrackResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private final mOnSelectAllClickListener:Landroid/view/View$OnClickListener;

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;-><init>()V

    .line 213
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mOnSelectAllClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->onNotifySelectCountChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->setSelectAllViewEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->setItemCheckedAll(Z)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private onNotifySelectCountChanged(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 180
    .local v2, "totalCount":I
    if-lez v2, :cond_1

    if-ne p1, v2, :cond_1

    move v1, v3

    .line 182
    .local v1, "selectAll":Z
    :goto_0
    const/4 v0, 0x0

    .line 183
    .local v0, "localTrackCount":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 184
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    add-int v6, p1, v0

    invoke-interface {v4, v5, v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 190
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->setSelectAllViewEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 192
    return-void

    .line 180
    .end local v0    # "localTrackCount":I
    .end local v1    # "selectAll":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setItemCheckedAll(Z)V
    .locals 1
    .param p1, "selectall"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->selectAll()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->deselectAll()V

    goto :goto_0
.end method

.method private setSelectAllViewEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mOnSelectAllClickListener:Landroid/view/View$OnClickListener;

    .line 196
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    .line 203
    :goto_1
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public clearFragment()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->deselectAll()V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;->clearList()V

    .line 87
    :cond_0
    return-void
.end method

.method protected createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 5

    .prologue
    .line 119
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mKeyword:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    return-object v0
.end method

.method protected createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mKeyword:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f040190

    return v0
.end method

.method protected getLogPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, ""

    return-object v0
.end method

.method protected getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)V

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedItemCount >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedItems >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSelectedItems >>> empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_1:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    return-object v0
.end method

.method protected final hideKeyboardAndCursor()V
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 236
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 238
    return-void
.end method

.method protected isSupportSearchHeaderButtons()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportSorting()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method protected onViewInitializeCompleted(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onViewInitializeCompleted(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePickTrackAdapter;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v1, :cond_2

    .line 103
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .end local v0    # "a":Landroid/app/Activity;
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mMultipleItemPickerManager:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 108
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->setSelectAllViewEnabled(Z)V

    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->primaryColorChanged(I)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->updatePrimaryColor(I)V

    .line 244
    return-void
.end method

.method public bridge synthetic showContents(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->showContents(Ljava/util/ArrayList;)V

    return-void
.end method

.method public showContents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->showContents(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->onNotifySelectCountChanged(I)V

    .line 166
    return-void
.end method

.method public bridge synthetic showContents(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->showContents(Ljava/util/ArrayList;)V

    return-void
.end method
