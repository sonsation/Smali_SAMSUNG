.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MilkSearchStorePresetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Ljava/lang/String;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStorePresetAdapter"

.field private static final TYPE_FOOTER:I = 0x3

.field private static final TYPE_HEADER:I = 0x1

.field private static final TYPE_STRING:I = 0x2


# instance fields
.field private mHistoryCnt:I

.field private mListener:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

.field private mPresetCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "removeClickedItemListener"    # Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 43
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mListener:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mListener:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

    return-object v0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->addAll(Ljava/util/List;)V

    .line 219
    return-void
.end method

.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->clear(Z)V

    .line 214
    return-void
.end method

.method protected createSearchFooterViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected createSearchHeaderViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected createSearchStringViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getFooterSize()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected getHeaderSize()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->shouldShowPresetHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryItemPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHeaderSize()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHeaderSize()I

    move-result v0

    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getFooterSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHeaderSize()I

    move-result v0

    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getFooterSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 53
    const/4 v0, 0x3

    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getPresetCount()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    return v0
.end method

.method public getPresetItemPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->shouldShowPresetHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItemViewType(I)I

    move-result v0

    .line 203
    .local v0, "type":I
    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mHistoryCnt:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 84
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 85
    check-cast v2, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;

    .line 88
    .local v2, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;
    if-nez p2, :cond_1

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;->getHeaderTitle()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a0390

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 161
    .end local v2    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v2    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;->getHeaderTitle()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a038d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    .end local v2    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;
    :cond_2
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;

    if-eqz v4, :cond_6

    move-object v2, p1

    .line 94
    check-cast v2, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;

    .line 97
    .local v2, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;
    const/4 v4, 0x1

    if-lt p2, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    if-gt p2, v4, :cond_4

    .line 98
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getString()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getPresetItemPosition(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDeleteRecordImg()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    if-ne p2, v4, :cond_3

    .line 102
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDivider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getBlank()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDivider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getBlank()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getString()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHistoryItemPosition(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDeleteRecordImg()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDeleteRecordImg()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mHistoryCnt:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHeaderSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_5

    .line 126
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDivider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getBlank()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 130
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getDivider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->getBlank()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;
    :cond_6
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 135
    check-cast v2, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;

    .line 138
    .local v2, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->getNoRecord()Landroid/widget/TextView;

    move-result-object v3

    .line 139
    .local v3, "noRecord":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->getDeleteRecordContainer()Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "deleteRecordContainer":Landroid/view/View;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->getDeleteRecord()Landroid/widget/TextView;

    move-result-object v0

    .line 142
    .local v0, "deleteRecord":Landroid/widget/TextView;
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mHistoryCnt:I

    if-nez v4, :cond_7

    .line 143
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 146
    :cond_7
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;

    invoke-direct {v4, p0, v0, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 66
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->createSearchStringViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->createSearchHeaderViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetHeaderViewHolder;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->createSearchFooterViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHistoryCnt(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mHistoryCnt:I

    .line 198
    return-void
.end method

.method public setPresetCount(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    .line 190
    return-void
.end method

.method protected shouldShowPresetHeader()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->mPresetCnt:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
