.class Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "SeslHorizontalHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
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

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

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
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 65
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    .line 67
    if-nez p1, :cond_0

    .line 68
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 73
    :goto_0
    if-nez p2, :cond_1

    .line 74
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 81
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 82
    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 76
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 81
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
            "Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    .line 117
    .local v0, "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 122
    .end local v0    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
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

    .line 188
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 189
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 230
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 231
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 250
    :goto_0
    return-object v3

    .line 235
    :cond_0
    sub-int v1, p1, v2

    .line 236
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 237
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 239
    if-ge v1, v0, :cond_1

    .line 240
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 245
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 246
    const/4 v3, 0x0

    goto :goto_0

    .line 250
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 258
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 259
    sub-int v1, p1, v2

    .line 260
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 261
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 265
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
    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 312
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 313
    sub-int v1, p1, v2

    .line 314
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 315
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 316
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 320
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
    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 284
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 285
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 304
    :goto_0
    return-object v3

    .line 289
    :cond_0
    sub-int v1, p1, v2

    .line 290
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 291
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 293
    if-ge v1, v0, :cond_1

    .line 294
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 299
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 300
    const/4 v3, 0x0

    goto :goto_0

    .line 304
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

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
    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 201
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 202
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 221
    :goto_0
    return v3

    .line 206
    :cond_0
    sub-int v1, p1, v2

    .line 207
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 208
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 210
    if-ge v1, v0, :cond_1

    .line 211
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 216
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 217
    const/4 v3, 0x0

    goto :goto_0

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 340
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    .line 157
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 158
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 161
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 162
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 168
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :goto_1
    return v3

    .line 155
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 168
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;

    .line 134
    .local v1, "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 135
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 139
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 145
    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :goto_1
    return v3

    .line 132
    .restart local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 145
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 349
    :cond_0
    return-void
.end method
