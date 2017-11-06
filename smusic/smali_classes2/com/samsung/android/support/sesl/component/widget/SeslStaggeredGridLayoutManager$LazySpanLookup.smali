.class Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "SeslStaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, -0x1

    .line 2823
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v6, :cond_1

    .line 2845
    :cond_0
    :goto_0
    return v5

    .line 2826
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v3

    .line 2828
    .local v3, "item":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v3, :cond_2

    .line 2829
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2831
    :cond_2
    const/4 v4, -0x1

    .line 2832
    .local v4, "nextFsiIndex":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 2833
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2834
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2835
    .local v1, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v6, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v6, p1, :cond_4

    .line 2836
    move v4, v2

    .line 2840
    .end local v1    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3
    if-eq v4, v5, :cond_0

    .line 2841
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2842
    .restart local v1    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2843
    iget v5, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_0

    .line 2833
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private offsetFullSpansForAddition(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2806
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v2, :cond_1

    .line 2816
    :cond_0
    return-void

    .line 2809
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2810
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2811
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v2, p1, :cond_2

    .line 2809
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2814
    :cond_2
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v2, p2

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_1
.end method

.method private offsetFullSpansForRemoval(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2776
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v3, :cond_1

    .line 2791
    :cond_0
    return-void

    .line 2779
    :cond_1
    add-int v0, p1, p2

    .line 2780
    .local v0, "end":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2781
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2782
    .local v1, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, p1, :cond_2

    .line 2780
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2785
    :cond_2
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, v0, :cond_3

    .line 2786
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2788
    :cond_3
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    sub-int/2addr v3, p2

    iput v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_1
.end method


# virtual methods
.method public addFullSpanItem(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .locals 5
    .param p1, "fullSpanItem"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .prologue
    .line 2849
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v3, :cond_0

    .line 2850
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2852
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2853
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 2854
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2855
    .local v1, "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, v4, :cond_1

    .line 2859
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2862
    :cond_1
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, v4, :cond_2

    .line 2863
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2869
    .end local v1    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :goto_1
    return-void

    .line 2853
    .restart local v1    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2868
    .end local v1    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 2

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2760
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2761
    return-void
.end method

.method ensureSize(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 2745
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v1, :cond_1

    .line 2746
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2747
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2748
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 2749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2750
    .local v0, "old":[I
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2751
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2752
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method forceInvalidateAfter(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2691
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 2692
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2693
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2694
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v2, p1, :cond_0

    .line 2695
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2692
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2699
    .end local v0    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v2

    return v2
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 5
    .param p1, "minPos"    # I
    .param p2, "maxPos"    # I
    .param p3, "gapDir"    # I
    .param p4, "hasUnwantedGapAfter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2893
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v4, :cond_1

    move-object v0, v3

    .line 2908
    :cond_0
    :goto_0
    return-object v0

    .line 2896
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2897
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 2898
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2899
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p2, :cond_2

    move-object v0, v3

    .line 2900
    goto :goto_0

    .line 2902
    :cond_2
    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p1, :cond_3

    if-eqz p3, :cond_0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-eq v4, p3, :cond_0

    if-eqz p4, :cond_3

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-nez v4, :cond_0

    .line 2897
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_4
    move-object v0, v3

    .line 2908
    goto :goto_0
.end method

.method public getFullSpanItem(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 2872
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 2881
    :cond_0
    :goto_0
    return-object v0

    .line 2875
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2876
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2877
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-eq v3, p1, :cond_0

    .line 2875
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_2
    move-object v0, v2

    .line 2881
    goto :goto_0
.end method

.method getSpan(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2725
    :cond_0
    const/4 v0, -0x1

    .line 2727
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method invalidateAfter(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 2706
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v2, :cond_1

    .line 2719
    :cond_0
    :goto_0
    return v1

    .line 2709
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 2712
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v0

    .line 2713
    .local v0, "endPosition":I
    if-ne v0, v1, :cond_2

    .line 2714
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2715
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    goto :goto_0

    .line 2718
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2719
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method offsetForAddition(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2797
    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2798
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2800
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 2802
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    goto :goto_0
.end method

.method offsetForRemoval(II)V
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2773
    :cond_0
    :goto_0
    return-void

    .line 2767
    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2768
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2770
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 2772
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    goto :goto_0
.end method

.method setSpan(ILcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "span"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .prologue
    .line 2732
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2733
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget v1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    aput v1, v0, p1

    .line 2734
    return-void
.end method

.method sizeForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2737
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v1

    .line 2738
    .local v0, "len":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 2739
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2741
    :cond_0
    return v0
.end method
