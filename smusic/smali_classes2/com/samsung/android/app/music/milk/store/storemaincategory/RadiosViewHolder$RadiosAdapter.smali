.class Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RadiosViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadiosAdapter"
.end annotation


# instance fields
.field private mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 112
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 115
    return-void
.end method


# virtual methods
.method public getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 126
    const-string v3, "RadiosViewHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBindViewHolder : pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-nez v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 138
    .local v1, "itemData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    if-eqz v1, :cond_0

    move-object v2, p1

    .line 142
    check-cast v2, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .line 143
    .local v2, "itemViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;
    invoke-virtual {v2, p2, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 119
    const-string v0, "RadiosViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder : viewType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;->access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder;)Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosViewHolder$RadiosAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method