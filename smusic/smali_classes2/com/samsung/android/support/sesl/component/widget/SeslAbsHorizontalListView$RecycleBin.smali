.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
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

.field private mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

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

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 8544
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8558
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    .prologue
    .line 8544
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    .prologue
    .line 8544
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9076
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9078
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 9080
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9081
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
    .line 9069
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9070
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9071
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9073
    :cond_0
    return-void
.end method

.method private pruneScrapViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 8949
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v1, v9

    .line 8950
    .local v1, "maxViews":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8951
    .local v8, "viewTypeCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8952
    .local v3, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 8953
    aget-object v2, v3, v0

    .line 8954
    .local v2, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8955
    .local v4, "size":I
    :goto_1
    if-le v4, v1, :cond_0

    .line 8956
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8952
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8960
    .end local v2    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "size":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8961
    .local v6, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v6, :cond_3

    .line 8962
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 8963
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 8964
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8965
    invoke-direct {p0, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8966
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8967
    add-int/lit8 v0, v0, -0x1

    .line 8962
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8972
    .end local v7    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8973
    .local v5, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v5, :cond_5

    .line 8974
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 8975
    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 8976
    .restart local v7    # "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-nez v9, :cond_4

    .line 8977
    invoke-direct {p0, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8978
    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8979
    add-int/lit8 v0, v0, -0x1

    .line 8974
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 8983
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 9084
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9085
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/view/View;Z)V

    .line 9086
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
    .line 9041
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9042
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 9044
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 9045
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9047
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 9049
    .local v1, "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 9050
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 9051
    .local v2, "id":J
    iget-wide v8, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 9052
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 9064
    .end local v0    # "i":I
    .end local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v2    # "id":J
    .end local v6    # "view":Landroid/view/View;
    :goto_1
    return-object v4

    .line 9054
    .restart local v0    # "i":I
    .restart local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .restart local v6    # "view":Landroid/view/View;
    :cond_0
    iget v7, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_1

    .line 9055
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9056
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9044
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9060
    .end local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9061
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9064
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
    .line 8779
    if-nez p1, :cond_1

    .line 8842
    :cond_0
    :goto_0
    return-void

    .line 8781
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 8782
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-eqz v0, :cond_0

    .line 8786
    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 8790
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 8791
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8796
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 8806
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8807
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 8808
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 8811
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 8812
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8814
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 8815
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 8818
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 8819
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8821
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 8824
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 8825
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 8827
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8830
    :cond_7
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 8831
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8838
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 8839
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 8833
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 8834
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addScrapView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "ignoreRetainView"    # Z

    .prologue
    .line 8767
    return-void
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 8575
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    .line 8648
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8649
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8650
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8659
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    .line 8660
    return-void

    .line 8652
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8653
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 8654
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 8655
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearShouldRetainView()V
    .locals 0

    .prologue
    .line 8578
    return-void
.end method

.method clearTransientStateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8729
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8730
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 8731
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8732
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8733
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8735
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8738
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8739
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 8740
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8741
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8742
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8741
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8744
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 8746
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
    .line 8670
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 8671
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8673
    :cond_0
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    .line 8675
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8676
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8677
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8678
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 8680
    .local v3, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 8683
    aput-object v1, v0, v2

    .line 8676
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8686
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_2
    return-void
.end method

.method fullyDetachScrapViews()V
    .locals 8

    .prologue
    .line 8927
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8928
    .local v5, "viewTypeCount":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8929
    .local v3, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 8930
    aget-object v2, v3, v0

    .line 8931
    .local v2, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_1

    .line 8932
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 8933
    .local v4, "view":Landroid/view/View;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 8934
    invoke-virtual {v4}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8935
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8931
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 8929
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8940
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

    .line 8696
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8697
    .local v1, "index":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8698
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 8699
    aget-object v2, v0, v1

    .line 8700
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 8703
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8584
    const/4 v0, 0x0

    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 8752
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8753
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8760
    :goto_0
    return-object v1

    .line 8755
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8756
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8757
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8760
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 8592
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldRetainViewCount()I
    .locals 1

    .prologue
    .line 8588
    const/4 v0, 0x0

    return v0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 8707
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 8708
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 8709
    .local v0, "id":J
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8710
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8721
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 8713
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 8714
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 8715
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 8716
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8717
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 8721
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 8610
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 8611
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8612
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8613
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 8614
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8617
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8618
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 8619
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 8620
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8621
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 8622
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8621
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8618
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8626
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 8627
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8628
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 8629
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8628
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8632
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 8633
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8634
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 8635
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8634
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8638
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
    .line 8989
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 8990
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8999
    :cond_0
    return-void

    .line 8992
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8993
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8994
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 8995
    aget-object v1, v2, v0

    .line 8996
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8994
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeShouldRetainView(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 8581
    return-void
.end method

.method removeSkippedScrap()V
    .locals 4

    .prologue
    .line 8848
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 8856
    :goto_0
    return-void

    .line 8851
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8852
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 8853
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8852
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8855
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 8862
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8863
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    if-eqz v13, :cond_2

    move v2, v11

    .line 8864
    .local v2, "hasListener":Z
    :goto_0
    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-le v13, v11, :cond_3

    move v7, v11

    .line 8866
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8867
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8868
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 8869
    aget-object v9, v0, v3

    .line 8870
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 8872
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 8873
    .local v6, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget v10, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 8875
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 8877
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 8880
    invoke-static {v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 8882
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 8883
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 8884
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8886
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8887
    .local v4, "id":J
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8868
    .end local v4    # "id":J
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
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

    .line 8863
    goto :goto_0

    .restart local v2    # "hasListener":Z
    :cond_3
    move v7, v12

    .line 8864
    goto :goto_1

    .line 8888
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 8889
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 8890
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8892
    :cond_5
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 8893
    :cond_6
    if-eq v10, v14, :cond_1

    .line 8895
    invoke-direct {p0, v9, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 8897
    :cond_7
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 8899
    if-eq v10, v14, :cond_1

    .line 8900
    invoke-direct {p0, v9, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 8904
    :cond_8
    if-eqz v7, :cond_9

    .line 8905
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 8908
    :cond_9
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 8909
    invoke-direct {p0, v9, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8910
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8912
    if-eqz v2, :cond_1

    .line 8913
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    invoke-interface {v11, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 8918
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->pruneScrapViews()V

    .line 8919
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 9007
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 9008
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9009
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9010
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 9011
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9010
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9014
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 9015
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 9016
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 9017
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9018
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 9019
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9018
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9015
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9024
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9025
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9026
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 9027
    aget-object v7, v0, v2

    .line 9028
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 9029
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9026
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9032
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 8596
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 8597
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8600
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8601
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 8602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8604
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8605
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8606
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8607
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 8641
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
