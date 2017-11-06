.class public Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "PickListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/Pick;",
        "Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickListAdapter"


# instance fields
.field private final MAX_VISIBLE_PICK:I

.field private lastVisibleItem:I

.field private loadMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

.field private loading:Z

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private totalItemCount:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pickListView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->visibleThreshold:I

    .line 34
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->MAX_VISIBLE_PICK:I

    .line 40
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 44
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 46
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 69
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->loadMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->totalItemCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->totalItemCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->lastVisibleItem:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->loading:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->loading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->visibleThreshold:I

    return v0
.end method


# virtual methods
.method public appendItem(Lcom/samsung/android/app/music/common/model/Pick;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/Pick;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->notifyItemChanged(I)V

    .line 149
    return-void
.end method

.method public appendList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Pick;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Pick;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Pick;

    .line 159
    .local v0, "pick":Lcom/samsung/android/app/music/common/model/Pick;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->appendItem(Lcom/samsung/android/app/music/common/model/Pick;)V

    goto :goto_0

    .line 161
    .end local v0    # "pick":Lcom/samsung/android/app/music/common/model/Pick;
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public loadComplete()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->loading:Z

    .line 135
    return-void
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 83
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Pick;

    .line 85
    .local v1, "pick":Lcom/samsung/android/app/music/common/model/Pick;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->getPickImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v0

    .line 87
    .local v0, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    if-nez v1, :cond_1

    .line 88
    const-string v2, "PickListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onBindItemViewHolder] pick is null. current position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .end local v1    # "pick":Lcom/samsung/android/app/music/common/model/Pick;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0    # "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .restart local v1    # "pick":Lcom/samsung/android/app/music/common/model/Pick;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Pick;->getPickImageUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    const v4, 0x7f0200d9

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->getPickTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Pick;->getPickTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->getPickDescription()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Pick;->getPickDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->getPickView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Lcom/samsung/android/app/music/common/model/Pick;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Pick;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Pick;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->loadMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    .line 144
    return-void
.end method
