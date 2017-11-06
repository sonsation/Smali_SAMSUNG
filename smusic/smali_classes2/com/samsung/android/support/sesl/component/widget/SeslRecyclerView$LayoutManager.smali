.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8141
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 8143
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8145
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 8151
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8153
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method static synthetic access$6000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .prologue
    .line 8134
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 8928
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 8929
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez p3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8931
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 8940
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 8941
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8942
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8943
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->unScrap()V

    .line 8947
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8972
    :cond_2
    :goto_2
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_3

    .line 8976
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 8977
    iput-boolean v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8979
    :cond_3
    return-void

    .line 8938
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->removeFromDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8945
    .restart local v2    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 8951
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-ne v3, v4, :cond_9

    .line 8953
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8954
    .local v0, "currentIndex":I
    if-ne p2, v6, :cond_7

    .line 8955
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result p2

    .line 8957
    :cond_7
    if-ne v0, v6, :cond_8

    .line 8958
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 8960
    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8962
    :cond_8
    if-eq v0, p2, :cond_2

    .line 8963
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->moveView(II)V

    goto :goto_2

    .line 8966
    .end local v0    # "currentIndex":I
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->addView(Landroid/view/View;IZ)V

    .line 8967
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8968
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8969
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2
.end method

.method public static chooseSize(III)I
    .locals 3
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .prologue
    .line 8305
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8306
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8307
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 8314
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v1    # "size":I
    :goto_0
    :sswitch_0
    return v1

    .line 8311
    .restart local v1    # "size":I
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 8307
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 9155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->detachViewFromParent(I)V

    .line 9156
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 7
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 9787
    const/4 v3, 0x0

    sub-int v4, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 9788
    .local v2, "size":I
    const/4 v1, 0x0

    .line 9789
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 9790
    .local v0, "resultMode":I
    if-ltz p3, :cond_1

    .line 9791
    move v1, p3

    .line 9792
    const/high16 v0, 0x40000000    # 2.0f

    .line 9825
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 9793
    :cond_1
    if-eqz p4, :cond_3

    .line 9794
    if-ne p3, v6, :cond_2

    .line 9795
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 9798
    :sswitch_0
    move v1, v2

    .line 9799
    move v0, p1

    .line 9800
    goto :goto_0

    .line 9802
    :sswitch_1
    const/4 v1, 0x0

    .line 9803
    const/4 v0, 0x0

    goto :goto_0

    .line 9806
    :cond_2
    if-ne p3, v5, :cond_0

    .line 9807
    const/4 v1, 0x0

    .line 9808
    const/4 v0, 0x0

    goto :goto_0

    .line 9811
    :cond_3
    if-ne p3, v6, :cond_4

    .line 9812
    move v1, v2

    .line 9813
    move v0, p1

    goto :goto_0

    .line 9814
    :cond_4
    if-ne p3, v5, :cond_0

    .line 9815
    move v1, v2

    .line 9816
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_5

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_6

    .line 9817
    :cond_5
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 9819
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 9795
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9744
    const/4 v3, 0x0

    sub-int v4, p0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 9745
    .local v2, "size":I
    const/4 v1, 0x0

    .line 9746
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 9747
    .local v0, "resultMode":I
    if-eqz p3, :cond_2

    .line 9748
    if-ltz p2, :cond_1

    .line 9749
    move v1, p2

    .line 9750
    const/high16 v0, 0x40000000    # 2.0f

    .line 9770
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 9754
    :cond_1
    const/4 v1, 0x0

    .line 9755
    const/4 v0, 0x0

    goto :goto_0

    .line 9758
    :cond_2
    if-ltz p2, :cond_3

    .line 9759
    move v1, p2

    .line 9760
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 9761
    :cond_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 9762
    move v1, v2

    .line 9764
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 9765
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 9766
    move v1, v2

    .line 9767
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10842
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;-><init>()V

    .line 10843
    .local v1, "properties":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10845
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView_android_orientation:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->orientation:I

    .line 10846
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView_seslSpanCount:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->spanCount:I

    .line 10847
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView_seslReverseLayout:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 10848
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView_seslStackFromEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 10849
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10850
    return-object v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9681
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9682
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 9683
    .local v1, "specSize":I
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v2, v3

    .line 9694
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 9686
    :cond_1
    sparse-switch v0, :sswitch_data_0

    move v2, v3

    .line 9694
    goto :goto_0

    .line 9690
    :sswitch_1
    if-ge v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 9692
    :sswitch_2
    if-eq v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 9686
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .prologue
    .line 10521
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 10522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .line 10524
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 9541
    invoke-static {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9542
    .local v0, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9557
    :goto_0
    return-void

    .line 9548
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 9549
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9550
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeViewAt(I)V

    .line 9551
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 9553
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->detachViewAt(I)V

    .line 9554
    invoke-virtual {p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 9555
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->onViewDetached(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8883
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 8884
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 8901
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 8902
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8912
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 8913
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 8924
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 8925
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8289
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 8292
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 8329
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9200
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 9201
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 9189
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V

    .line 9190
    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 9168
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9169
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9170
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 9174
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 9178
    return-void

    .line 9172
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->removeFromDisappearedInLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 10044
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v1, :cond_0

    .line 10045
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10050
    :goto_0
    return-void

    .line 10048
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 10049
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 8784
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 8794
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 8699
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10375
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10390
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10405
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10420
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10435
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10450
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 9533
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 9534
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 9535
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9536
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V

    .line 9534
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9538
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 9239
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 9240
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V

    .line 9241
    return-void
.end method

.method public detachAndScrapViewAt(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 9253
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9254
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V

    .line 9255
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9126
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 9127
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 9128
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 9130
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9148
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 9149
    return-void
.end method

.method dispatchAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 8482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8483
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 8484
    return-void
.end method

.method dispatchDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 8487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8488
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 8489
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8864
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 8865
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->endAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 8867
    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 9068
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 9078
    :cond_0
    :goto_0
    return-object v0

    .line 9071
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 9072
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 9073
    goto :goto_0

    .line 9075
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 9076
    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 9095
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 9096
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 9097
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9098
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 9099
    .local v3, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 9096
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9102
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 9103
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9107
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method gatherPrefetchIndices(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;[I)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p4, "outIndices"    # [I

    .prologue
    .line 8478
    const/4 v0, 0x0

    return v0
.end method

.method public abstract generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8740
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8716
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 8717
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V

    .line 8721
    :goto_0
    return-object v0

    .line 8718
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8719
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 8721
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 9027
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10079
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 9296
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 9287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 8599
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 10737
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 10740
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10023
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 9975
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9976
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9987
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9853
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9838
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9839
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10011
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9999
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9433
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 9440
    :cond_0
    :goto_0
    return-object v0

    .line 9436
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 9437
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 9438
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 9350
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .prologue
    .line 9332
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 9454
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 9455
    .local v0, "a":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_1
    return v1

    .line 9454
    .end local v0    # "a":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 9455
    .restart local v0    # "a":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getItemPrefetchCount()I
    .locals 1

    .prologue
    .line 8475
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9048
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 8854
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10094
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 10493
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 10486
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 9386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 1

    .prologue
    .line 9404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 9359
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 9377
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 1

    .prologue
    .line 9395
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 9368
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9038
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10109
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 10718
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 10721
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionModeForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10702
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10064
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 9942
    if-eqz p2, :cond_1

    .line 9943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v1, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9944
    .local v1, "insets":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    .line 9945
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 9944
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 9950
    .end local v1    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v3, :cond_0

    .line 9951
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 9952
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9953
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9954
    .local v2, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9955
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9956
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    .line 9957
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    .line 9958
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    .line 9959
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    .line 9960
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 9956
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 9964
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v2    # "tempRectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 9965
    return-void

    .line 9947
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 9341
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .prologue
    .line 9314
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .prologue
    .line 10875
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 10876
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10877
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10878
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10879
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 10880
    const/4 v4, 0x1

    .line 10883
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return v4

    .line 10876
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10883
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 9424
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9499
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 9502
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9504
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9505
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9506
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->removeViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 9507
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 8499
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .prologue
    .line 8408
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 9414
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 8472
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 10754
    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    .prologue
    .line 9665
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .prologue
    .line 8841
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 9887
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9888
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 9890
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 9923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 9924
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9925
    .local v0, "insets":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 9928
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 9611
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 9613
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9614
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 9615
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 9616
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    .line 9617
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->width:I

    .line 9618
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    .line 9616
    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 9619
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    .line 9620
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->height:I

    .line 9621
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    .line 9619
    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 9622
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9623
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 9625
    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 9710
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 9712
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9713
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 9714
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 9716
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    .line 9717
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->width:I

    .line 9719
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    .line 9716
    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 9720
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    .line 9721
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->height:I

    .line 9723
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    .line 9720
    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 9724
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9725
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 9727
    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 9220
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9221
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 9222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->detachViewAt(I)V

    .line 9226
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 9227
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 9465
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 9466
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetChildrenHorizontal(I)V

    .line 9468
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 9477
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 9478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetChildrenVertical(I)V

    .line 9480
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .prologue
    .line 10258
    return-void
.end method

.method public onAddFocusables(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 10286
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 8554
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8563
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 8590
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 8591
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 10608
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10609
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 10624
    move-object v0, p3

    .line 10625
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 10636
    :cond_0
    :goto_0
    return-void

    .line 10628
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 10629
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 10630
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 10631
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10628
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 10633
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 10634
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    goto :goto_0

    .line 10631
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 10557
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10558
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 10587
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 10588
    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10589
    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10590
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 10592
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 10593
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10594
    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10595
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 10599
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v1

    .line 10600
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v2

    .line 10601
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z

    move-result v3

    .line 10602
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v4

    .line 10599
    invoke-static {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 10603
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 10604
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 10640
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 10642
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10643
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10646
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 10664
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 10665
    .local v0, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .local v2, "columnIndexGuess":I
    :goto_1
    move v3, v1

    move v5, v4

    .line 10667
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 10669
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 10670
    return-void

    .end local v0    # "rowIndexGuess":I
    .end local v2    # "columnIndexGuess":I
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v0, v4

    .line 10664
    goto :goto_0

    .restart local v0    # "rowIndexGuess":I
    :cond_1
    move v2, v4

    .line 10665
    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 10152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 10308
    return-void
.end method

.method public onItemsChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 10296
    return-void
.end method

.method public onItemsMoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 10360
    return-void
.end method

.method public onItemsRemoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 10318
    return-void
.end method

.method public onItemsUpdated(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 10330
    return-void
.end method

.method public onItemsUpdated(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 10343
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onItemsUpdated(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 10344
    return-void
.end method

.method public onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 8654
    const-string v0, "SeslRecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8655
    return-void
.end method

.method public onLayoutCompleted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 8669
    return-void
.end method

.method public onMeasure(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 10468
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->defaultOnMeasure(II)V

    .line 10469
    return-void
.end method

.method public onRequestChildFocus(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10220
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

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

.method public onRequestChildFocus(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .prologue
    .line 10242
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 10512
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 10506
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 10532
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 10759
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->performAccessibilityAction(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 10775
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v4, :cond_1

    .line 10801
    :cond_0
    :goto_0
    return v2

    .line 10778
    :cond_1
    const/4 v1, 0x0

    .local v1, "vScroll":I
    const/4 v0, 0x0

    .line 10779
    .local v0, "hScroll":I
    sparse-switch p3, :sswitch_data_0

    .line 10797
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    .line 10800
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollBy(II)V

    move v2, v3

    .line 10801
    goto :goto_0

    .line 10781
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10782
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    .line 10784
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10785
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_1

    .line 10789
    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10790
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 10792
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10793
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1

    .line 10779
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 10806
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 10827
    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8513
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8514
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8516
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 9014
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 9015
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 9016
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->removeViewAt(I)V

    .line 9015
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9018
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 10547
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 10548
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10549
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10550
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 10547
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10553
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    const/4 v5, 0x0

    .line 9569
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getScrapCount()I

    move-result v2

    .line 9571
    .local v2, "scrapCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 9572
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 9573
    .local v1, "scrap":Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 9574
    .local v3, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9571
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9582
    :cond_0
    invoke-virtual {v3, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9583
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9584
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9586
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 9587
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->endAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 9589
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9590
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 9592
    .end local v1    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clearScrap()V

    .line 9593
    if-lez v2, :cond_4

    .line 9594
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 9596
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 9264
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 9265
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 9266
    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 9275
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9276
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeViewAt(I)V

    .line 9277
    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 9278
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8533
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8534
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 8536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9211
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8990
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->removeView(Landroid/view/View;)V

    .line 8991
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 9002
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9003
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 9004
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->removeViewAt(I)V

    .line 9006
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 10172
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    .line 10173
    .local v12, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    .line 10174
    .local v14, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    .line 10175
    .local v13, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    .line 10176
    .local v11, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v2, v15, v16

    .line 10177
    .local v2, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v4, v15, v16

    .line 10178
    .local v4, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    .line 10179
    .local v3, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    .line 10181
    .local v1, "childBottom":I
    const/4 v15, 0x0

    sub-int v16, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 10182
    .local v8, "offScreenLeft":I
    const/4 v15, 0x0

    sub-int v16, v4, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 10183
    .local v10, "offScreenTop":I
    const/4 v15, 0x0

    sub-int v16, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 10184
    .local v9, "offScreenRight":I
    const/4 v15, 0x0

    sub-int v16, v1, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 10190
    .local v7, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 10191
    if-eqz v9, :cond_1

    move v5, v9

    .line 10200
    .local v5, "dx":I
    :goto_0
    if-eqz v10, :cond_4

    move v6, v10

    .line 10203
    .local v6, "dy":I
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    .line 10204
    :cond_0
    if-eqz p4, :cond_5

    .line 10205
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollBy(II)V

    .line 10209
    :goto_2
    const/4 v15, 0x1

    .line 10211
    :goto_3
    return v15

    .line 10191
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_1
    sub-int v15, v3, v13

    .line 10192
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 10194
    :cond_2
    if-eqz v8, :cond_3

    move v5, v8

    .line 10195
    .restart local v5    # "dx":I
    :goto_4
    goto :goto_0

    .line 10194
    .end local v5    # "dx":I
    :cond_3
    sub-int v15, v2, v12

    .line 10195
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    .line 10200
    .restart local v5    # "dx":I
    :cond_4
    sub-int v15, v4, v14

    .line 10201
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 10207
    .restart local v6    # "dy":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 10211
    :cond_6
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 8276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8277
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 8279
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    .prologue
    .line 10683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 10684
    return-void
.end method

.method public scrollHorizontallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 8757
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 8807
    return-void
.end method

.method public scrollVerticallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 8774
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 8396
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 8397
    return-void
.end method

.method setExactMeasureSpecsFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 10854
    .line 10855
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10856
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10854
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 10858
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 8455
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 8456
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 8457
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 8461
    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 8186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    .line 8188
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 8189
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8192
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    .line 8193
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    .line 8194
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 8195
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    .line 8197
    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .prologue
    .line 10479
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$5700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 10480
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 8265
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .line 8266
    .local v2, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    .line 8267
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 8268
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 8269
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 8270
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 10
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 8213
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    .line 8214
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 8215
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v9, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->defaultOnMeasure(II)V

    .line 8243
    :goto_0
    return-void

    .line 8218
    :cond_0
    const v7, 0x7fffffff

    .line 8219
    .local v7, "minX":I
    const v8, 0x7fffffff

    .line 8220
    .local v8, "minY":I
    const/high16 v5, -0x80000000

    .line 8221
    .local v5, "maxX":I
    const/high16 v6, -0x80000000

    .line 8223
    .local v6, "maxY":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 8224
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8225
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 8226
    .local v4, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 8227
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8228
    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-ge v9, v7, :cond_1

    .line 8229
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 8231
    :cond_1
    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v9, v5, :cond_2

    .line 8232
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 8234
    :cond_2
    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-ge v9, v8, :cond_3

    .line 8235
    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 8237
    :cond_3
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v9, v6, :cond_4

    .line 8238
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 8223
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8241
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8242
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0
    .param p1, "measurementCacheEnabled"    # Z

    .prologue
    .line 9677
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 9678
    return-void
.end method

.method setRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 8170
    if-nez p1, :cond_0

    .line 8171
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 8172
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    .line 8173
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8174
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    .line 8181
    :goto_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    .line 8182
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    .line 8183
    return-void

    .line 8176
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 8177
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    .line 8178
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8179
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 9648
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 9650
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9651
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9648
    :goto_0
    return v0

    .line 9651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .prologue
    .line 10871
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 9634
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 9635
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9636
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9634
    :goto_0
    return v0

    .line 9636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 8820
    const-string v0, "SeslRecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8821
    return-void
.end method

.method public startSmoothScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .prologue
    .line 8829
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .line 8830
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8831
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 8833
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .line 8834
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->start(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 8835
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9519
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9520
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->stopIgnoring()V

    .line 9521
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->resetInternal()V

    .line 9522
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9523
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .prologue
    .line 10515
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 10516
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 10518
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 8432
    const/4 v0, 0x0

    return v0
.end method
