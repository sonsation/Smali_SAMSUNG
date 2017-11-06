.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 8561
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8575
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    .prologue
    .line 8561
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    .prologue
    .line 8561
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    return-object p1
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9072
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 9073
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9074
    return-void
.end method

.method private clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9065
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9066
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9067
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9066
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9069
    :cond_0
    return-void
.end method

.method private getSkippedScrap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8841
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 8842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 8844
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 8951
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v1, v9

    .line 8952
    .local v1, "maxViews":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8953
    .local v8, "viewTypeCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8954
    .local v3, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 8955
    aget-object v2, v3, v0

    .line 8956
    .local v2, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8957
    .local v4, "size":I
    :goto_1
    if-le v4, v1, :cond_0

    .line 8958
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8954
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8962
    .end local v2    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "size":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8963
    .local v6, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v6, :cond_3

    .line 8964
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 8965
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 8966
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8967
    invoke-direct {p0, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8968
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8969
    add-int/lit8 v0, v0, -0x1

    .line 8964
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8974
    .end local v7    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8975
    .local v5, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v5, :cond_5

    .line 8976
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 8977
    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 8978
    .restart local v7    # "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-nez v9, :cond_4

    .line 8979
    invoke-direct {p0, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8980
    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8981
    add-int/lit8 v0, v0, -0x1

    .line 8976
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 8985
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 9077
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9078
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/view/View;Z)V

    .line 9079
    return-void
.end method

.method private retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 10
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 9037
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9038
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 9040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 9041
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9043
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 9045
    .local v1, "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 9046
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 9047
    .local v2, "id":J
    iget-wide v8, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 9048
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 9060
    .end local v0    # "i":I
    .end local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v2    # "id":J
    .end local v6    # "view":Landroid/view/View;
    :goto_1
    return-object v4

    .line 9050
    .restart local v0    # "i":I
    .restart local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .restart local v6    # "view":Landroid/view/View;
    :cond_0
    iget v7, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_1

    .line 9051
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9052
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9040
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9056
    .end local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9057
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9060
    .end local v0    # "i":I
    .end local v4    # "scrap":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 8773
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 8774
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 8838
    :cond_0
    :goto_0
    return-void

    .line 8780
    :cond_1
    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8784
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 8785
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8789
    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    .line 8790
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8795
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 8805
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8806
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 8807
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_4

    .line 8810
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_3

    .line 8811
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8813
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 8814
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v3, :cond_6

    .line 8817
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_5

    .line 8818
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8820
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 8823
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8826
    :cond_7
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 8827
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8834
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 8835
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 8829
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 8830
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 5

    .prologue
    .line 8644
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8645
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8646
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8655
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8656
    return-void

    .line 8648
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8649
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 8650
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 8651
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearTransientStateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8728
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8729
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 8730
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8731
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8732
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8734
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8737
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8738
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 8739
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8740
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8741
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8743
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 8745
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 8666
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 8667
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8669
    :cond_0
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 8672
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8673
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8674
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8675
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 8677
    .local v3, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 8680
    aput-object v1, v0, v2

    .line 8682
    add-int v4, p2, v2

    iput v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8673
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8685
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method fullyDetachScrapViews()V
    .locals 8

    .prologue
    .line 8929
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8930
    .local v5, "viewTypeCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8931
    .local v3, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 8932
    aget-object v2, v3, v0

    .line 8933
    .local v2, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_1

    .line 8934
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 8935
    .local v4, "view":Landroid/view/View;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 8936
    invoke-virtual {v4}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8937
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8933
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 8931
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8942
    .end local v1    # "j":I
    .end local v2    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 8695
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8696
    .local v1, "index":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8697
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 8698
    aget-object v2, v0, v1

    .line 8699
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 8702
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 8751
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8752
    .local v0, "whichScrap":I
    if-gez v0, :cond_1

    .line 8760
    :cond_0
    :goto_0
    return-object v1

    .line 8755
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 8756
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8757
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8758
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 8706
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 8707
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 8708
    .local v0, "id":J
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8709
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8720
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 8712
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 8713
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 8714
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 8715
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8716
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 8720
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 8606
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 8607
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8608
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8609
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 8610
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8613
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8614
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 8615
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 8616
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8617
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 8618
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8617
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8614
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8622
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 8623
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8624
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 8625
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8624
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8628
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 8629
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8630
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 8631
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8630
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8634
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8991
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 8992
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9001
    :cond_0
    return-void

    .line 8994
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8995
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8996
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 8997
    aget-object v1, v2, v0

    .line 8998
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 4

    .prologue
    .line 8851
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 8859
    :goto_0
    return-void

    .line 8854
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8855
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 8856
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8855
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8858
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 8865
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8866
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    if-eqz v13, :cond_2

    move v2, v11

    .line 8867
    .local v2, "hasListener":Z
    :goto_0
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v13, v11, :cond_3

    move v7, v11

    .line 8869
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8870
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8871
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 8872
    aget-object v9, v0, v3

    .line 8873
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 8875
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 8876
    .local v6, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    iget v10, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 8878
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 8880
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 8882
    invoke-static {v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 8884
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 8885
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 8886
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8888
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8889
    .local v4, "id":J
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8871
    .end local v4    # "id":J
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_2
    move v2, v12

    .line 8866
    goto :goto_0

    .restart local v2    # "hasListener":Z
    :cond_3
    move v7, v12

    .line 8867
    goto :goto_1

    .line 8890
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 8891
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 8892
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8894
    :cond_5
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 8895
    :cond_6
    if-eq v10, v14, :cond_1

    .line 8897
    invoke-direct {p0, v9, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 8899
    :cond_7
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 8901
    if-eq v10, v14, :cond_1

    .line 8902
    invoke-direct {p0, v9, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 8906
    :cond_8
    if-eqz v7, :cond_9

    .line 8907
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 8910
    :cond_9
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8911
    invoke-direct {p0, v9, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8912
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8914
    if-eqz v2, :cond_1

    .line 8915
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 8920
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->pruneScrapViews()V

    .line 8921
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 9009
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 9010
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9011
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9012
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 9013
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9012
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9016
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9017
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 9018
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 9019
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9020
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 9021
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9020
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9017
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9026
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9027
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9028
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 9029
    aget-object v7, v0, v2

    .line 9030
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 9031
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9028
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9034
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 8592
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 8593
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8596
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8597
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 8598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8600
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8601
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8602
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8603
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 8637
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
