.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SeedResultListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SeedResultListAdapter"


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderId:I

.field private mShowCoverArt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;",
            "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mShowCoverArt:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mLoaderId:I

    return v0
.end method


# virtual methods
.method public addAll(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "loaderId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mLoaderId:I

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .line 54
    .local v0, "seed":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->isSeedResultType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 55
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setIsArtistSeed(Z)V

    .line 57
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mShowCoverArt:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSeedCoverArt(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->isExplicit()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setIsExplicitSeed(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedResultSubName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    .line 64
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;->getAppPrimaryColor()I

    move-result v3

    .line 63
    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSubSeedText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedResultName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    .line 66
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;->getAppPrimaryColor()I

    move-result v3

    .line 65
    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setSeedText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setDeleteActionEnable(Z)V

    .line 68
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->registerItemView(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->disableSeedCoverArt(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040117

    const/4 v4, 0x0

    .line 46
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    .local v1, "ret":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
    return-object v1
.end method

.method public setCoverArtVisible(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mShowCoverArt:Z

    .line 110
    return-void
.end method

.method public swapList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->mList:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
