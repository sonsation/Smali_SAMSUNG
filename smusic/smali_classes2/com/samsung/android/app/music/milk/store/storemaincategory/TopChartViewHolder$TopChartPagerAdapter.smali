.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;
.source "TopChartViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopChartPagerAdapter"
.end annotation


# instance fields
.field private mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;-><init>(Landroid/content/Context;)V

    .line 206
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 207
    return-void
.end method


# virtual methods
.method public getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    return-object v0
.end method

.method public getRealItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "itemPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-nez v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v3

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 230
    .local v1, "itemData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    if-eqz v1, :cond_0

    .line 234
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 235
    invoke-static {v3, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;

    move-result-object v2

    .line 236
    .local v2, "viewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;
    invoke-virtual {v2, p2, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)V

    .line 238
    iget-object v3, v2, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->itemView:Landroid/view/View;

    goto :goto_0
.end method

.method public getRealItemCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
