.class Landroid/widget/SemHorizontalAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
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

.field private mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

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

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method static synthetic -get0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    return-object p1
.end method

.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 9399
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9413
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9399
    return-void
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9911
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9912
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9914
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9910
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
    .line 9904
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9905
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9906
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9903
    :cond_0
    return-void
.end method

.method private pruneScrapViews()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 9782
    iget-object v12, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v12

    .line 9783
    .local v3, "maxViews":I
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9784
    .local v11, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9785
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 9786
    aget-object v4, v5, v1

    .line 9787
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9788
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 9789
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 9790
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 9791
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-direct {p0, v12, v13}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9790
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 9785
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9795
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9796
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_3

    .line 9797
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 9798
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9799
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_2

    .line 9800
    invoke-direct {p0, v10, v13}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9801
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9802
    add-int/lit8 v1, v1, -0x1

    .line 9797
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9807
    .end local v10    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9808
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_5

    .line 9809
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 9810
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9811
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_4

    .line 9812
    invoke-direct {p0, v10, v13}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9813
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 9814
    add-int/lit8 v1, v1, -0x1

    .line 9809
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9781
    .end local v10    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 9918
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9919
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->-wrap8(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V

    .line 9917
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
    .line 9876
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9877
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 9879
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 9880
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9882
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9884
    .local v1, "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v7, v7, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 9885
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v7, v7, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 9886
    .local v2, "id":J
    iget-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 9887
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    return-object v7

    .line 9889
    .end local v2    # "id":J
    :cond_0
    iget v7, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_1

    .line 9890
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9891
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    .line 9892
    return-object v4

    .line 9879
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9895
    .end local v1    # "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9896
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    .line 9897
    return-object v4

    .line 9899
    .end local v0    # "i":I
    .end local v4    # "scrap":Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    return-object v7
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 9634
    if-nez p1, :cond_0

    return-void

    .line 9636
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9637
    .local v0, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 9638
    return-void

    .line 9641
    :cond_1
    iput p2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 9645
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 9646
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9647
    return-void

    .line 9650
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9656
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v4}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 9660
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 9661
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_9

    .line 9662
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v3, v3, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_5

    .line 9665
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_3

    .line 9666
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9668
    :cond_3
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9633
    :cond_4
    :goto_0
    return-void

    .line 9669
    :cond_5
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v3, v3, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_7

    .line 9672
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_6

    .line 9673
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9675
    :cond_6
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 9678
    :cond_7
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 9679
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 9681
    :cond_8
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9684
    :cond_9
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_b

    .line 9685
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9692
    :cond_a
    :goto_1
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    if-eqz v3, :cond_4

    .line 9693
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 9687
    :cond_b
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 9688
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addScrapView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "ignoreRetainView"    # Z

    .prologue
    .line 9621
    return-void
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 9429
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    .line 9503
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 9504
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9505
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 9514
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 9502
    return-void

    .line 9507
    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9508
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 9509
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 9510
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 9508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearShouldRetainView()V
    .locals 0

    .prologue
    .line 9432
    return-void
.end method

.method clearTransientStateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 9584
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9585
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 9586
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 9587
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9588
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9590
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 9593
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9594
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 9595
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 9596
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 9597
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9596
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9599
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 9583
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
    .line 9525
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 9526
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9528
    :cond_0
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 9530
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9531
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 9532
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9533
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9535
    .local v3, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 9538
    aput-object v1, v0, v2

    .line 9531
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9524
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 9551
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 9552
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9553
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 9554
    aget-object v2, v0, v1

    .line 9555
    .local v2, "match":Landroid/view/View;
    aput-object v4, v0, v1

    .line 9556
    return-object v2

    .line 9558
    .end local v2    # "match":Landroid/view/View;
    :cond_0
    return-object v4
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9439
    const/4 v0, 0x0

    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 9607
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 9608
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 9610
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 9611
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 9612
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 9615
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 9447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldRetainViewCount()I
    .locals 1

    .prologue
    .line 9443
    const/4 v0, 0x0

    return v0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 9562
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v4, v4, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 9563
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 9564
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 9565
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 9566
    return-object v3

    .line 9568
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 9569
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 9570
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 9571
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 9572
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9573
    return-object v3

    .line 9576
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    return-object v5
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 9465
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 9466
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9467
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9468
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 9469
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 9468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9472
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9473
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 9474
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 9475
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9476
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 9477
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 9476
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9481
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 9482
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 9483
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 9484
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 9483
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9487
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 9488
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 9489
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 9490
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 9489
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9464
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
    .line 9824
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 9825
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9823
    :cond_0
    return-void

    .line 9827
    :cond_1
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9828
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9829
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 9830
    aget-object v1, v2, v0

    .line 9831
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9829
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeShouldRetainView(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 9435
    return-void
.end method

.method removeSkippedScrap()V
    .locals 4

    .prologue
    .line 9702
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 9703
    return-void

    .line 9705
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9706
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9707
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9709
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9701
    return-void
.end method

.method scrapActiveViews()V
    .locals 13

    .prologue
    .line 9716
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9717
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    if-eqz v11, :cond_2

    const/4 v2, 0x1

    .line 9718
    .local v2, "hasListener":Z
    :goto_0
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    const/4 v7, 0x1

    .line 9720
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9721
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 9722
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 9723
    aget-object v9, v0, v3

    .line 9724
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 9726
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9727
    .local v6, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v10, v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 9729
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 9731
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 9733
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9735
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v11, v11, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v11, v11, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 9736
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 9737
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9739
    :cond_0
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v11, v11, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    invoke-interface {v11, v12}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 9740
    .local v4, "id":J
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9722
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 9717
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "hasListener":Z
    goto :goto_0

    .line 9718
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "multipleScraps":Z
    goto :goto_1

    .line 9741
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v11, v11, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 9742
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 9743
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9745
    :cond_5
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 9746
    :cond_6
    const/4 v11, -0x2

    if-eq v10, v11, :cond_1

    .line 9748
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 9750
    :cond_7
    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 9752
    const/4 v11, -0x2

    if-eq v10, v11, :cond_1

    .line 9753
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 9757
    :cond_8
    if-eqz v7, :cond_9

    .line 9758
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 9761
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9762
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 9763
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9765
    if-eqz v2, :cond_1

    .line 9766
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 9772
    .end local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->pruneScrapViews()V

    .line 9715
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 9842
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 9843
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9844
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9845
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 9846
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9845
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9849
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9850
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 9851
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 9852
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9853
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 9854
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9853
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9850
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9859
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9860
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9861
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 9862
    aget-object v7, v0, v2

    .line 9863
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 9864
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9861
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9841
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 9451
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 9452
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9455
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 9456
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 9457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 9456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9459
    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9460
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9461
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9450
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    const/4 v0, 0x0

    .line 9496
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
