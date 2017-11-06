.class Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "SeslHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 58
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mIsFilterable:Z

    .line 60
    if-nez p1, :cond_0

    .line 61
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 66
    :goto_0
    if-nez p2, :cond_1

    .line 67
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 75
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 69
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    .line 92
    .local v0, "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 97
    .end local v0    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 144
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 180
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 181
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 201
    :goto_0
    return-object v3

    .line 185
    :cond_0
    sub-int v1, p1, v2

    .line 186
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 187
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 189
    if-ge v1, v0, :cond_1

    .line 190
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 195
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 196
    const/4 v3, 0x0

    goto :goto_0

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 206
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 207
    sub-int v1, p1, v2

    .line 208
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 209
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 210
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 213
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 252
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 253
    sub-int v1, p1, v2

    .line 254
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 255
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 256
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 260
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 226
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    .line 247
    :goto_0
    return-object v3

    .line 231
    :cond_0
    sub-int v1, p1, v2

    .line 232
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 233
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 235
    if-ge v1, v0, :cond_1

    .line 236
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 241
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 242
    const/4 v3, 0x0

    goto :goto_0

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 153
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 154
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->isSelectable:Z

    .line 174
    :goto_0
    return v3

    .line 158
    :cond_0
    sub-int v1, p1, v2

    .line 159
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 160
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 162
    if-ge v1, v0, :cond_1

    .line 163
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 168
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 169
    const/4 v3, 0x0

    goto :goto_0

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 274
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    .line 120
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 121
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 125
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 131
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :goto_1
    return v3

    .line 118
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 131
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;

    .line 103
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 104
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 107
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 114
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :goto_1
    return v3

    .line 101
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 114
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 280
    :cond_0
    return-void
.end method
