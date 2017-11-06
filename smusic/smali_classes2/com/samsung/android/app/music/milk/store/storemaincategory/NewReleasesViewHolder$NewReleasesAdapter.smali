.class Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NewReleasesViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewReleasesAdapter"
.end annotation


# instance fields
.field private mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder;Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 107
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 110
    return-void
.end method


# virtual methods
.method public getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

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
    .line 121
    const-string v3, "NewReleasesViewHolder"

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

    .line 123
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-nez v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 133
    .local v1, "itemData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    if-eqz v1, :cond_0

    move-object v2, p1

    .line 137
    check-cast v2, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;

    .line 138
    .local v2, "itemViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;
    invoke-virtual {v2, p2, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 114
    const-string v0, "NewReleasesViewHolder"

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

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesViewHolder$NewReleasesAdapter;->notifyDataSetChanged()V

    .line 157
    return-void
.end method
