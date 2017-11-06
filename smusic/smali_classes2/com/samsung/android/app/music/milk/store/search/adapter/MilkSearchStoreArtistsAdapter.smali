.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "MilkSearchStoreArtistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;",
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
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->clear(Z)V

    .line 83
    return-void
.end method

.method protected createSearchArtistsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->isEnableLoadMore()Z

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_0

    .line 72
    :goto_0
    return v2

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;

    .line 72
    .local v0, "searchArtist":Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->isVariousArtists()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 50
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 51
    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;

    .line 53
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;

    .line 54
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    const v4, 0x7f0201da

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->getArtistName()Landroid/widget/TextView;

    move-result-object v3

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110044

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 57
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->getArtistName()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 60
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->getArtistName()Landroid/widget/TextView;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 62
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->createSearchArtistsViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method
