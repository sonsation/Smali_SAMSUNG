.class public Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
.source "SeslLinearLayoutManager.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;,
        Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "SeslLinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

.field mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    .line 116
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    .line 138
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 143
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutChunkResult:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 161
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setOrientation(I)V

    .line 162
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setReverseLayout(Z)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    .line 116
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    .line 138
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 143
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutChunkResult:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 176
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 177
    .local v0, "properties":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setOrientation(I)V

    .line 178
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setReverseLayout(Z)V

    .line 179
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setStackFromEnd(Z)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 181
    return-void
.end method

.method private computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1095
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    :goto_0
    return v4

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1099
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1100
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1101
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1099
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;->computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1084
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    :goto_0
    return v4

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1088
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1089
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1090
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1088
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;->computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1106
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    :goto_0
    return v4

    .line 1109
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1111
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1112
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1110
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;->computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private findFirstReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1669
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1626
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1629
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findLastReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1648
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findLastReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findLastReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1665
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 874
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 875
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 876
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 877
    neg-int v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 882
    add-int/2addr p1, v0

    .line 883
    if-eqz p4, :cond_1

    .line 885
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 886
    if-lez v1, :cond_1

    .line 887
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->offsetChildren(I)V

    .line 888
    add-int v2, v1, v0

    .line 891
    :goto_0
    return v2

    .line 879
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 891
    goto :goto_0
.end method

.method private fixLayoutStartGap(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 899
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 900
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 901
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 903
    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 907
    add-int/2addr p1, v0

    .line 908
    if-eqz p4, :cond_1

    .line 910
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 911
    if-lez v1, :cond_1

    .line 912
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->offsetChildren(I)V

    .line 913
    sub-int v2, v0, v1

    .line 916
    :goto_0
    return v2

    .line 905
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 916
    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;II)V
    .locals 13
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .prologue
    .line 668
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v11

    if-nez v11, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const/4 v8, 0x0

    .local v8, "scrapExtraStart":I
    const/4 v7, 0x0

    .line 674
    .local v7, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    .line 675
    .local v9, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 676
    .local v10, "scrapSize":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 677
    .local v3, "firstChildPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 678
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 679
    .local v6, "scrap":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 677
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 683
    .local v5, "position":I
    if-ge v5, v3, :cond_3

    const/4 v11, 0x1

    :goto_3
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v11, v12, :cond_4

    const/4 v2, -0x1

    .line 685
    .local v2, "direction":I
    :goto_4
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    .line 686
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-object v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_2

    .line 683
    .end local v2    # "direction":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 688
    .restart local v2    # "direction":I
    :cond_5
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-object v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2

    .line 696
    .end local v2    # "direction":I
    .end local v5    # "position":I
    .end local v6    # "scrap":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_6
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput-object v9, v11, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 697
    if-lez v8, :cond_7

    .line 698
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 699
    .local v1, "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 700
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v8, v11, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 701
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 702
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 703
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 706
    .end local v1    # "anchor":Landroid/view/View;
    :cond_7
    if-lez v7, :cond_8

    .line 707
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 708
    .restart local v1    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 709
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v7, v11, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 710
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 711
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 712
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 714
    .end local v1    # "anchor":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 5

    .prologue
    .line 1861
    const-string v2, "SeslLinearLayoutManager"

    const-string v3, "internal representation of views on the screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1863
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1864
    .local v0, "child":Landroid/view/View;
    const-string v2, "SeslLinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1865
    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1864
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1867
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const-string v2, "SeslLinearLayoutManager"

    const-string v3, "=============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-void
.end method

.method private recycleByLayoutState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    .prologue
    .line 1378
    iget-boolean v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1382
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleViewsFromEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0

    .line 1384
    :cond_2
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleViewsFromStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private recycleChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 1261
    if-ne p2, p3, :cond_1

    .line 1276
    :cond_0
    return-void

    .line 1267
    :cond_1
    if-le p3, p2, :cond_2

    .line 1268
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1269
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->removeAndRecycleViewAt(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1268
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1272
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_0

    .line 1273
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->removeAndRecycleViewAt(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1272
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private recycleViewsFromEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1335
    .local v1, "childCount":I
    if-gez p2, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEnd()I

    move-result v4

    sub-int v3, v4, p2

    .line 1343
    .local v3, "limit":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    .line 1344
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1345
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1346
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1347
    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1349
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1344
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1354
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 1355
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1356
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1357
    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_6

    .line 1359
    :cond_5
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1354
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1289
    if-gez p2, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    move v3, p2

    .line 1298
    .local v3, "limit":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1299
    .local v1, "childCount":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    .line 1300
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1301
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1302
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1303
    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_3

    .line 1305
    :cond_2
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1300
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1310
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 1311
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1312
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_5

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1313
    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_6

    .line 1315
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;II)V

    goto :goto_0

    .line 1310
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v3

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 752
    invoke-virtual {p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    move v3, v4

    .line 753
    goto :goto_0

    .line 755
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-ne v5, v6, :cond_0

    .line 758
    iget-boolean v5, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_5

    .line 759
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 761
    .local v2, "referenceChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {p3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 765
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 767
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 768
    invoke-virtual {v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 769
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 770
    invoke-virtual {v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 771
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_6

    :cond_3
    move v1, v4

    .line 772
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 773
    iget-boolean v3, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 774
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 775
    :goto_3
    iput v3, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .end local v1    # "notVisible":Z
    :cond_4
    move v3, v4

    .line 778
    goto :goto_0

    .line 760
    .end local v2    # "referenceChild":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "referenceChild":Landroid/view/View;
    :cond_6
    move v1, v3

    .line 771
    goto :goto_2

    .line 774
    .restart local v1    # "notVisible":Z
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 775
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_3
.end method

.method private updateAnchorFromPendingData(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)Z
    .locals 11
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 788
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v10, :cond_1

    :cond_0
    move v6, v7

    .line 866
    :goto_0
    return v6

    .line 792
    :cond_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 793
    :cond_2
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 794
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    move v6, v7

    .line 798
    goto :goto_0

    .line 803
    :cond_3
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 804
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 807
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 808
    iget-boolean v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_4

    .line 809
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 812
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 818
    :cond_5
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_e

    .line 819
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 820
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 821
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 822
    .local v1, "childSize":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v5

    if-le v1, v5, :cond_6

    .line 824
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_0

    .line 827
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 828
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v5, v8

    .line 829
    .local v4, "startGap":I
    if-gez v4, :cond_7

    .line 830
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 831
    iput-boolean v7, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 834
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 835
    invoke-virtual {v7, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v5, v7

    .line 836
    .local v2, "endGap":I
    if-gez v2, :cond_8

    .line 837
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 838
    iput-boolean v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 841
    :cond_8
    iget-boolean v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 842
    invoke-virtual {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 843
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpaceChange()I

    move-result v7

    add-int/2addr v5, v7

    .line 844
    :goto_1
    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 843
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 844
    invoke-virtual {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    goto :goto_1

    .line 846
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c

    .line 848
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 849
    .local v3, "pos":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-ge v5, v3, :cond_d

    move v5, v6

    :goto_2
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v5, v8, :cond_b

    move v7, v6

    :cond_b
    iput-boolean v7, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 852
    .end local v3    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_0

    .restart local v3    # "pos":I
    :cond_d
    move v5, v7

    .line 849
    goto :goto_2

    .line 857
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_e
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 859
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_f

    .line 860
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 863
    :cond_f
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .prologue
    .line 719
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateAnchorFromPendingData(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateAnchorFromChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 736
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 7
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1151
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1152
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getExtraLayoutSpace(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v5

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 1153
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput p1, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1155
    if-ne p1, v3, :cond_2

    .line 1156
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 1158
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1160
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_1

    :goto_0
    iput v2, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1162
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1163
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1165
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1166
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1178
    .local v1, "scrollingOffset":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput p2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1179
    if-eqz p3, :cond_0

    .line 1180
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1182
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1183
    return-void

    .end local v1    # "scrollingOffset":I
    :cond_1
    move v2, v3

    .line 1160
    goto :goto_0

    .line 1169
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1170
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 1171
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_3

    :goto_2
    iput v3, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1173
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1174
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1175
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1176
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "scrollingOffset":I
    goto :goto_1

    .end local v1    # "scrollingOffset":I
    :cond_3
    move v3, v2

    .line 1171
    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 924
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 925
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 927
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 928
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 929
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 930
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 931
    return-void

    :cond_0
    move v0, v1

    .line 925
    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .prologue
    .line 920
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 921
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 938
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 939
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 940
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 942
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 943
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 944
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 946
    return-void

    :cond_0
    move v0, v1

    .line 940
    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    .prologue
    .line 934
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 935
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1250
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1252
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

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
    .line 1065
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1055
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 441
    const/4 v2, 0x0

    .line 448
    :goto_0
    return-object v2

    .line 443
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 444
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_2

    const/4 v0, -0x1

    .line 445
    .local v0, "direction":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 446
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    move v0, v3

    .line 444
    goto :goto_1

    .line 448
    .restart local v0    # "direction":I
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 1540
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1573
    :cond_0
    :goto_0
    return v0

    .line 1542
    :sswitch_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1545
    goto :goto_0

    .line 1550
    :sswitch_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 1551
    goto :goto_0

    .line 1552
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1555
    goto :goto_0

    .line 1558
    :sswitch_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1561
    :sswitch_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1564
    :sswitch_4
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1567
    :sswitch_5
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 1540
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method createLayoutState()Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;
    .locals 1

    .prologue
    .line 967
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->createLayoutState()Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    if-nez v0, :cond_1

    .line 957
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->createOrientationHelper(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 959
    :cond_1
    return-void
.end method

.method fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    const/high16 v6, -0x80000000

    .line 1402
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1403
    .local v2, "start":I
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_1

    .line 1405
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_0

    .line 1406
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1408
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleByLayoutState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;)V

    .line 1410
    :cond_1
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    add-int v1, v3, v4

    .line 1411
    .local v1, "remainingSpace":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutChunkResult:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 1412
    .local v0, "layoutChunkResult":Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;
    :cond_2
    iget-boolean v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->hasMore(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1413
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1414
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->layoutChunk(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;)V

    .line 1415
    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_5

    .line 1446
    :cond_4
    :goto_0
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v2, v3

    return v3

    .line 1418
    :cond_5
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1425
    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_6

    .line 1426
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1427
    :cond_6
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 1429
    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v3

    .line 1432
    :cond_7
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_9

    .line 1433
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1434
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_8

    .line 1435
    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1437
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->recycleByLayoutState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;)V

    .line 1439
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1742
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1743
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1725
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1726
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1782
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1783
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1765
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1766
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1789
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 1790
    .local v7, "start":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1791
    .local v3, "end":I
    if-le p2, p1, :cond_1

    const/4 v5, 0x1

    .line 1792
    .local v5, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 1793
    .local v6, "partiallyVisible":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_4

    .line 1794
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1795
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 1796
    .local v2, "childStart":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 1797
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_3

    if-le v1, v7, :cond_3

    .line 1798
    if-eqz p3, :cond_0

    .line 1799
    if-lt v2, v7, :cond_2

    if-gt v1, v3, :cond_2

    .line 1809
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_0
    :goto_2
    return-object v0

    .line 1791
    .end local v4    # "i":I
    .end local v5    # "next":I
    .end local v6    # "partiallyVisible":Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 1801
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    .restart local v6    # "partiallyVisible":Landroid/view/View;
    :cond_2
    if-eqz p4, :cond_3

    if-nez v6, :cond_3

    .line 1802
    move-object v6, v0

    .line 1793
    :cond_3
    add-int/2addr v4, v5

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_4
    move-object v0, v6

    .line 1809
    goto :goto_2
.end method

.method findReferenceChild(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1680
    const/4 v4, 0x0

    .line 1681
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 1682
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1683
    .local v1, "boundsStart":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1684
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 1685
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_4

    .line 1686
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1687
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1688
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 1689
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1690
    if-nez v4, :cond_0

    .line 1691
    move-object v4, v7

    .line 1685
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 1684
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1693
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1694
    invoke-virtual {v8, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_5

    .line 1695
    :cond_3
    if-nez v5, :cond_0

    .line 1696
    move-object v5, v7

    goto :goto_2

    .line 1703
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_6

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v7, v5

    :cond_5
    return-object v7

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_6
    move-object v5, v4

    goto :goto_3
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 393
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 405
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 397
    .local v2, "firstChild":I
    sub-int v3, p1, v2

    .line 398
    .local v3, "viewPosition":I
    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 399
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 405
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method gatherPrefetchIndices(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;[I)I
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p4, "outIndices"    # [I

    .prologue
    const/4 v3, 0x1

    .line 1207
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    move v1, p1

    .line 1208
    .local v1, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    .line 1210
    :cond_0
    const/4 v3, 0x0

    .line 1217
    :goto_1
    return v3

    .end local v1    # "delta":I
    :cond_1
    move v1, p2

    .line 1207
    goto :goto_0

    .line 1214
    .restart local v1    # "delta":I
    :cond_2
    if-lez v1, :cond_3

    move v2, v3

    .line 1215
    .local v2, "layoutDirection":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1216
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v3, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutState(IIZLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 1217
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->gatherPrefetchIndicesForLayoutState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;[I)I

    move-result v3

    goto :goto_1

    .line 1214
    .end local v0    # "absDy":I
    .end local v2    # "layoutDirection":I
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method gatherPrefetchIndicesForLayoutState(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;[I)I
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p2, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;
    .param p3, "outIndices"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1197
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1198
    .local v0, "pos":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1199
    aput v0, p3, v1

    .line 1200
    const/4 v1, 0x1

    .line 1202
    :cond_0
    return v1
.end method

.method public generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 188
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getItemPrefetchCount()I
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x1

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 949
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;)V
    .locals 11
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1451
    invoke-virtual {p3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->next(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1452
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1458
    iput-boolean v7, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1520
    :goto_0
    return-void

    .line 1461
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 1462
    .local v6, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1463
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_3

    move v0, v7

    :goto_1
    if-ne v9, v0, :cond_4

    .line 1465
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1477
    :goto_2
    invoke-virtual {p0, v1, v8, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1480
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v0, v7, :cond_a

    .line 1481
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1482
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPaddingRight()I

    move-result v8

    sub-int v4, v0, v8

    .line 1483
    .local v4, "right":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v2, v4, v0

    .line 1488
    .local v2, "left":I
    :goto_3
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_9

    .line 1489
    iget v5, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1490
    .local v5, "bottom":I
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v3, v0, v8

    .local v3, "top":I
    :goto_4
    move-object v0, p0

    .line 1509
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1516
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1517
    :cond_1
    iput-boolean v7, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1519
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    goto :goto_0

    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_3
    move v0, v8

    .line 1463
    goto :goto_1

    .line 1467
    :cond_4
    invoke-virtual {p0, v1, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1470
    :cond_5
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_6

    move v0, v7

    :goto_5
    if-ne v9, v0, :cond_7

    .line 1472
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v8

    .line 1470
    goto :goto_5

    .line 1474
    :cond_7
    invoke-virtual {p0, v1, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_2

    .line 1485
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1486
    .restart local v2    # "left":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v2, v0

    .restart local v4    # "right":I
    goto :goto_3

    .line 1492
    :cond_9
    iget v3, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1493
    .restart local v3    # "top":I
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v5, v0, v8

    .restart local v5    # "bottom":I
    goto :goto_4

    .line 1496
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPaddingTop()I

    move-result v3

    .line 1497
    .restart local v3    # "top":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1499
    .restart local v5    # "bottom":I
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_b

    .line 1500
    iget v4, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1501
    .restart local v4    # "right":I
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v2, v0, v8

    .restart local v2    # "left":I
    goto :goto_4

    .line 1503
    .end local v2    # "left":I
    .end local v4    # "right":I
    :cond_b
    iget v2, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1504
    .restart local v2    # "left":I
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v4, v0, v8

    .restart local v4    # "right":I
    goto :goto_4
.end method

.method onAnchorReady(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;I)V
    .locals 0
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .prologue
    .line 657
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 223
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 225
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clear()V

    .line 227
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v4, 0x0

    .line 1815
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1816
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 1853
    :cond_0
    :goto_0
    return-object v2

    .line 1820
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1821
    .local v0, "layoutDir":I
    if-ne v0, v7, :cond_2

    move-object v2, v4

    .line 1822
    goto :goto_0

    .line 1824
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1826
    if-ne v0, v8, :cond_3

    .line 1827
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1831
    .local v3, "referenceChild":Landroid/view/View;
    :goto_1
    if-nez v3, :cond_4

    move-object v2, v4

    .line 1836
    goto :goto_0

    .line 1829
    .end local v3    # "referenceChild":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "referenceChild":Landroid/view/View;
    goto :goto_1

    .line 1838
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1839
    const v5, 0x3eaaaaab

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1840
    .local v1, "maxScroll":I
    invoke-direct {p0, v0, v1, v9, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutState(IIZLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 1841
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v7, v5, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1842
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput-boolean v9, v5, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1843
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v5, p4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 1845
    if-ne v0, v8, :cond_6

    .line 1846
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1850
    .local v2, "nextFocus":Landroid/view/View;
    :goto_2
    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move-object v2, v4

    .line 1851
    goto :goto_0

    .line 1848
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextFocus":Landroid/view/View;
    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 233
    move-object v0, p1

    .line 234
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 237
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 20
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 468
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 469
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 635
    :goto_0
    return-void

    .line 473
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 477
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 484
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    move/from16 v19, v0

    xor-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateAnchorInfoForLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    .line 498
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getExtraLayoutSpace(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v8

    .line 501
    .local v8, "extra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    move/from16 v17, v0

    if-ltz v17, :cond_9

    .line 502
    move v9, v8

    .line 503
    .local v9, "extraForEnd":I
    const/4 v10, 0x0

    .line 508
    .local v10, "extraForStart":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v17

    add-int v10, v10, v17

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndPadding()I

    move-result v17

    add-int v9, v9, v17

    .line 510
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 516
    .local v7, "existing":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v18, v0

    .line 521
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v18

    sub-int v5, v17, v18

    .line 522
    .local v5, "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v5, v17

    .line 528
    .local v16, "upcomingOffset":I
    :goto_2
    if-lez v16, :cond_b

    .line 529
    add-int v10, v10, v16

    .line 538
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/4 v12, 0x1

    .line 546
    .local v12, "firstLayoutDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->onAnchorReady(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;I)V

    .line 547
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->detachAndScrapAttachedViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->resolveIsInfinite()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 556
    .local v15, "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 557
    .local v11, "firstElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_6

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v9, v9, v17

    .line 561
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 567
    .local v6, "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 570
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 605
    .end local v11    # "firstElement":I
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v17

    if-lez v17, :cond_8

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    move/from16 v18, v0

    xor-int v17, v17, v18

    if-eqz v17, :cond_11

    .line 610
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fixLayoutEndGap(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    move-result v13

    .line 611
    .local v13, "fixOffset":I
    add-int/2addr v15, v13

    .line 612
    add-int/2addr v6, v13

    .line 613
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fixLayoutStartGap(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    move-result v13

    .line 614
    add-int/2addr v15, v13

    .line 615
    add-int/2addr v6, v13

    .line 625
    .end local v13    # "fixOffset":I
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->layoutForPredictiveAnimations(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;II)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v17

    if-nez v17, :cond_12

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->onLayoutComplete()V

    .line 631
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    goto/16 :goto_0

    .line 505
    .end local v6    # "endOffset":I
    .end local v9    # "extraForEnd":I
    .end local v10    # "extraForStart":I
    .end local v12    # "firstLayoutDirection":I
    .end local v15    # "startOffset":I
    :cond_9
    move v10, v8

    .line 506
    .restart local v10    # "extraForStart":I
    const/4 v9, 0x0

    .restart local v9    # "extraForEnd":I
    goto/16 :goto_1

    .line 524
    .restart local v7    # "existing":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v18, v0

    .line 525
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v18

    sub-int v5, v17, v18

    .line 526
    .restart local v5    # "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v17, v5

    .restart local v16    # "upcomingOffset":I
    goto/16 :goto_2

    .line 531
    :cond_b
    sub-int v9, v9, v16

    goto/16 :goto_3

    .line 539
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_c
    const/4 v12, -0x1

    goto/16 :goto_4

    .line 542
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/4 v12, -0x1

    .restart local v12    # "firstLayoutDirection":I
    :goto_8
    goto/16 :goto_4

    .end local v12    # "firstLayoutDirection":I
    :cond_e
    const/4 v12, 0x1

    goto :goto_8

    .line 577
    .restart local v12    # "firstLayoutDirection":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 581
    .restart local v6    # "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 582
    .local v14, "lastElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v10, v10, v17

    .line 586
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 592
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 595
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    goto/16 :goto_5

    .line 617
    .end local v14    # "lastElement":I
    :cond_11
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fixLayoutStartGap(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    move-result v13

    .line 618
    .restart local v13    # "fixOffset":I
    add-int/2addr v15, v13

    .line 619
    add-int/2addr v6, v13

    .line 620
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fixLayoutEndGap(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    move-result v13

    .line 621
    add-int/2addr v15, v13

    .line 622
    add-int/2addr v6, v13

    goto/16 :goto_6

    .line 629
    .end local v13    # "fixOffset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    goto/16 :goto_7
.end method

.method public onLayoutCompleted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 639
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    .line 641
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 642
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 643
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 644
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 268
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 277
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 241
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 242
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;)V

    .line 263
    :goto_0
    return-object v2

    .line 244
    :cond_0
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;-><init>()V

    .line 245
    .local v2, "state":Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 247
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 248
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 249
    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 252
    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 253
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 255
    .end local v1    # "refChild":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 256
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 257
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 258
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 261
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 1931
    const-string v5, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1933
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1934
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1935
    .local v1, "myPos":I
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1936
    .local v2, "targetPos":I
    if-ge v1, v2, :cond_0

    move v0, v3

    .line 1938
    .local v0, "dropDirection":I
    :goto_0
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 1939
    if-ne v0, v3, :cond_1

    .line 1940
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1941
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1942
    invoke-virtual {v4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1943
    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1940
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1958
    :goto_1
    return-void

    .end local v0    # "dropDirection":I
    :cond_0
    move v0, v4

    .line 1936
    goto :goto_0

    .line 1945
    .restart local v0    # "dropDirection":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1946
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1947
    invoke-virtual {v4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1945
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1950
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1951
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1953
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1954
    invoke-virtual {v3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1955
    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1953
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method resolveIsInfinite()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1187
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1186
    :goto_0
    return v0

    .line 1187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return v3

    .line 1224
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput-boolean v4, v5, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1226
    if-lez p1, :cond_2

    move v2, v4

    .line 1227
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1228
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->updateLayoutState(IIZLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 1229
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    .line 1230
    invoke-virtual {p0, p2, v5, p3, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)I

    move-result v5

    add-int v1, v4, v5

    .line 1231
    .local v1, "consumed":I
    if-ltz v1, :cond_0

    .line 1237
    if-le v0, v1, :cond_3

    mul-int v3, v2, v1

    .line 1238
    .local v3, "scrolled":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    neg-int v5, v3

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->offsetChildren(I)V

    .line 1242
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;

    iput v3, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1243
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    goto :goto_0

    .line 1226
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "layoutDirection":I
    .end local v3    # "scrolled":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "layoutDirection":I
    :cond_3
    move v3, p1

    .line 1237
    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1035
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1036
    const/4 v0, 0x0

    .line 1038
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 986
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 987
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 988
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 995
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1017
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 1018
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1019
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 1026
    return-void
.end method

.method public scrollVerticallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1047
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1050
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 328
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 332
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientation:I

    .line 336
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 218
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1135
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1524
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getHeightMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1525
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1524
    :goto_0
    return v0

    .line 1526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 431
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;

    .line 432
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "linearSmoothScroller":Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 434
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;->setTargetPosition(I)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->startSmoothScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V

    .line 436
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1881
    const-string v8, "SeslLinearLayoutManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validating child count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 1918
    :cond_0
    return-void

    .line 1885
    :cond_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1886
    .local v2, "lastPos":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1887
    .local v3, "lastScreenLoc":I
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    .line 1888
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1889
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1890
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1891
    .local v4, "pos":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1892
    .local v5, "screenLoc":I
    if-ge v4, v2, :cond_3

    .line 1893
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1894
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_2

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move v6, v7

    goto :goto_1

    .line 1897
    :cond_3
    if-le v5, v3, :cond_4

    .line 1898
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1899
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1888
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1903
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "screenLoc":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1904
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1905
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1906
    .restart local v4    # "pos":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1907
    .restart local v5    # "screenLoc":I
    if-ge v4, v2, :cond_7

    .line 1908
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1909
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_6

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    goto :goto_3

    .line 1912
    :cond_7
    if-ge v5, v3, :cond_8

    .line 1913
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1914
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1903
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
