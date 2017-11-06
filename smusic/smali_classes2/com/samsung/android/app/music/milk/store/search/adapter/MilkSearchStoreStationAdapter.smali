.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "MilkSearchStoreStationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 38
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->clear(Z)V

    .line 77
    return-void
.end method

.method protected createSearchStationsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 52
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;

    .line 56
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    .line 57
    .local v1, "station":Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;->getStationTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v2

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110044

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;->getStationTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;->getStationTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;->getStationTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 62
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;
    :cond_0
    return-void
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->createSearchStationsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
