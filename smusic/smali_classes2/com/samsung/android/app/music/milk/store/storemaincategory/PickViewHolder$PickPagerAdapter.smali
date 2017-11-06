.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;
.source "PickViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickPagerAdapter"
.end annotation


# instance fields
.field private mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 99
    return-void
.end method


# virtual methods
.method public getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    return-object v0
.end method

.method public getRealItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-nez v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v3

    .line 107
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 113
    .local v1, "itemData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    if-eqz v1, :cond_0

    .line 117
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v4, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;

    move-result-object v2

    .line 118
    .local v2, "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;
    invoke-virtual {v2, p2, v1, v3}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;)V

    .line 120
    iget-object v3, v2, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->itemView:Landroid/view/View;

    goto :goto_0
.end method

.method public getRealItemCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickViewHolder$PickPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
