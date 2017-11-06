.class Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "SeslStaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
    .param p2, "index"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2422
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2417
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2418
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2419
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2423
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    .line 2424
    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2507
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2508
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 2509
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2511
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2512
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2514
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2515
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2517
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 2522
    if-eqz p1, :cond_1

    .line 2523
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 2527
    .local v0, "reference":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->clear()V

    .line 2528
    if-ne v0, v2, :cond_2

    .line 2539
    :cond_0
    :goto_1
    return-void

    .line 2525
    .end local v0    # "reference":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .restart local v0    # "reference":I
    goto :goto_0

    .line 2531
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 2532
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2535
    :cond_4
    if-eq p2, v2, :cond_5

    .line 2536
    add-int/2addr v0, p2

    .line 2538
    :cond_5
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_1
.end method

.method calculateCachedEnd()V
    .locals 5

    .prologue
    .line 2472
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2473
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2474
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2475
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    .line 2476
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    .line 2477
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 2478
    .local v1, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2479
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2482
    .end local v1    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    .prologue
    .line 2438
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2439
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2440
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2441
    iget-boolean v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    .line 2442
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    .line 2443
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2444
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2445
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2448
    .end local v0    # "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2543
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2544
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2545
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2607
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2608
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2607
    :goto_0
    return v0

    .line 2608
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2609
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2601
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2602
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2601
    :goto_0
    return v0

    .line 2602
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2603
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2619
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2620
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2619
    :goto_0
    return v0

    .line 2620
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2621
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2613
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2614
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2613
    :goto_0
    return v0

    .line 2614
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2615
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .prologue
    const/4 v7, -0x1

    .line 2625
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 2626
    .local v6, "start":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 2627
    .local v3, "end":I
    if-le p2, p1, :cond_1

    const/4 v5, 0x1

    .line 2628
    .local v5, "next":I
    :goto_0
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_0

    .line 2629
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2630
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 2631
    .local v2, "childStart":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 2632
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_3

    if-le v1, v6, :cond_3

    .line 2633
    if-eqz p3, :cond_2

    .line 2634
    if-lt v2, v6, :cond_3

    if-gt v1, v3, :cond_3

    .line 2635
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-virtual {v7, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 2642
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_0
    :goto_2
    return v7

    .end local v4    # "i":I
    .end local v5    # "next":I
    :cond_1
    move v5, v7

    .line 2627
    goto :goto_0

    .line 2638
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-virtual {v7, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    goto :goto_2

    .line 2628
    :cond_3
    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public getDeletedSize()I
    .locals 1

    .prologue
    .line 2584
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    .prologue
    .line 2486
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2487
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2490
    :goto_0
    return v0

    .line 2489
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2490
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method getEndLine(I)I
    .locals 3
    .param p1, "def"    # I

    .prologue
    .line 2460
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 2461
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2468
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 2463
    .restart local p1    # "def":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2464
    .local v0, "size":I
    if-eqz v0, :cond_0

    .line 2467
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2468
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 8
    .param p1, "referenceChildPosition"    # I
    .param p2, "layoutDir"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2649
    const/4 v0, 0x0

    .line 2650
    .local v0, "candidate":Landroid/view/View;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 2651
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2652
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2653
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2654
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 2655
    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_0

    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-ne v4, v7, :cond_4

    .line 2656
    move-object v0, v3

    .line 2652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 2655
    goto :goto_1

    .line 2662
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 2663
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2664
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 2665
    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_2

    move v4, v5

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v7, :cond_3

    move v7, v5

    :goto_4
    if-ne v4, v7, :cond_4

    .line 2666
    move-object v0, v3

    .line 2662
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    move v4, v6

    .line 2665
    goto :goto_3

    :cond_3
    move v7, v6

    goto :goto_4

    .line 2672
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    return-object v0
.end method

.method getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .locals 2

    .prologue
    .line 2452
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2453
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2456
    :goto_0
    return v0

    .line 2455
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2456
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method getStartLine(I)I
    .locals 2
    .param p1, "def"    # I

    .prologue
    .line 2427
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2428
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2434
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 2430
    .restart local p1    # "def":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2433
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2434
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method invalidateCache()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2548
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2549
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2550
    return-void
.end method

.method onOffset(I)V
    .locals 2
    .param p1, "dt"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2592
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    if-eq v0, v1, :cond_0

    .line 2593
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2595
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    .line 2596
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2598
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    .line 2557
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2558
    .local v2, "size":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2559
    .local v0, "end":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2560
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 2561
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2562
    :cond_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2564
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2565
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2567
    :cond_2
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2568
    return-void
.end method

.method popStart()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2571
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2572
    .local v1, "start":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2573
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 2574
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2575
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2577
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2578
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2580
    :cond_2
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2581
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2494
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2495
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 2496
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2497
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2498
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2499
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2501
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2502
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2504
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .prologue
    .line 2553
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2554
    return-void
.end method
