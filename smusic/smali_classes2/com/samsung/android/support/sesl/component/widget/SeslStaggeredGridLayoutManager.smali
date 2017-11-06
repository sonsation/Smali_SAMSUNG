.class public Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
.source "SeslStaggeredGridLayoutManager.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;,
        Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;,
        Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "SeslStaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 110
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 149
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 155
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 161
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    .line 166
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .line 205
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 211
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 213
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 244
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    .line 245
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setSpanCount(I)V

    .line 246
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 247
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 249
    return-void

    :cond_0
    move v0, v1

    .line 246
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 110
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 133
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    .line 138
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 149
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 155
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 161
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    .line 166
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    .line 192
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .line 205
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 211
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 213
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 227
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 228
    .local v0, "properties":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;
    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setOrientation(I)V

    .line 229
    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setSpanCount(I)V

    .line 230
    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 231
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 232
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 234
    return-void

    :cond_0
    move v1, v2

    .line 231
    goto :goto_0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1764
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1764
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1767
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)V
    .locals 4
    .param p1, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 779
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v2, :cond_3

    .line 780
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_2

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_3

    .line 782
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->clear()V

    .line 783
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v2, v0

    .line 784
    .local v1, "line":I
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    .line 786
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 791
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->setLine(I)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 794
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 795
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 798
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 799
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 800
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 802
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 803
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 804
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 808
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 809
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 810
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 812
    :cond_4
    return-void

    .line 806
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2
.end method

.method private attachViewToSpans(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .param p3, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    .prologue
    .line 1708
    iget v0, p3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1709
    iget-boolean v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    .line 1710
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1721
    :goto_0
    return-void

    .line 1712
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1715
    :cond_1
    iget-boolean v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    .line 1716
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1718
    :cond_2
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 2001
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2002
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 2005
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2002
    goto :goto_0

    .line 2004
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 2005
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_2

    move v3, v1

    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method private checkSpanForGap(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;)Z
    .locals 7
    .param p1, "span"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 395
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 396
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 398
    iget-object v5, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 399
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 400
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v5, :cond_1

    .line 408
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "endView":Landroid/view/View;
    .restart local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_1
    move v3, v4

    .line 400
    goto :goto_0

    .line 402
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 404
    iget-object v5, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 405
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 406
    .restart local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .end local v2    # "startView":Landroid/view/View;
    :cond_3
    move v3, v4

    .line 408
    goto :goto_0
.end method

.method private computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1085
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1089
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1090
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1088
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;->computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1089
    goto :goto_2
.end method

.method private computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1065
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1069
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1070
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1068
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;->computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1069
    goto :goto_2
.end method

.method private computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1105
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1109
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1110
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1108
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;->computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1109
    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 2299
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2332
    :cond_0
    :goto_0
    return v0

    .line 2301
    :sswitch_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 2303
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 2304
    goto :goto_0

    .line 2309
    :sswitch_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 2310
    goto :goto_0

    .line 2311
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2314
    goto :goto_0

    .line 2317
    :sswitch_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2320
    :sswitch_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2323
    :sswitch_4
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2326
    :sswitch_5
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 2299
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

.method private createFullSpanItemFromEnd(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemTop"    # I

    .prologue
    .line 1690
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1691
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1693
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    .line 1692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1695
    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemBottom"    # I

    .prologue
    .line 1699
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1700
    .local v0, "fsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1701
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1702
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    .line 1701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1704
    :cond_0
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->createOrientationHelper(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 253
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 254
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->createOrientationHelper(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 255
    return-void
.end method

.method private fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 28
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Ljava/util/BitSet;->set(IIZ)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mInfinite:Z

    if-eqz v3, :cond_5

    .line 1539
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    .line 1540
    const v27, 0x7fffffff

    .line 1552
    .local v27, "targetLine":I
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1559
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1560
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v18

    .line 1562
    .local v18, "defaultNewViewLine":I
    :goto_1
    const/4 v15, 0x0

    .line 1563
    .local v15, "added":Z
    :goto_2
    invoke-virtual/range {p2 .. p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->hasMore(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mInfinite:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1564
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1565
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->next(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    .line 1566
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 1567
    .local v22, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v25

    .line 1568
    .local v25, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v26

    .line 1570
    .local v26, "spanIndex":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_8

    const/16 v16, 0x1

    .line 1571
    .local v16, "assignSpan":Z
    :goto_3
    if-eqz v16, :cond_a

    .line 1572
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    const/4 v9, 0x0

    aget-object v17, v3, v9

    .line 1573
    .local v17, "currentSpan":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;)V

    .line 1584
    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 1585
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    .line 1586
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1590
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1594
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_d

    .line 1595
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v6

    .line 1597
    .local v6, "start":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v8, v6, v3

    .line 1598
    .local v8, "end":I
    if-eqz v16, :cond_1

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1

    .line 1600
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1601
    .local v20, "fullSpanItem":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1602
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1619
    .end local v20    # "fullSpanItem":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_1
    :goto_8
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 1620
    if-eqz v16, :cond_f

    .line 1621
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1639
    :cond_2
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)V

    .line 1642
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_15

    .line 1643
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 1646
    .local v7, "otherEnd":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v5, v7, v3

    .line 1654
    .local v5, "otherStart":I
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_17

    move-object/from16 v3, p0

    .line 1655
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1660
    :goto_c
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_18

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1665
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycle(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStopInFocusable:Z

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1667
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_19

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 1673
    :cond_3
    :goto_e
    const/4 v15, 0x1

    .line 1674
    goto/16 :goto_2

    .line 1542
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v15    # "added":Z
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .end local v18    # "defaultNewViewLine":I
    .end local v22    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    .end local v27    # "targetLine":I
    :cond_4
    const/high16 v27, -0x80000000

    .restart local v27    # "targetLine":I
    goto/16 :goto_0

    .line 1545
    .end local v27    # "targetLine":I
    :cond_5
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    .line 1546
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    add-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto/16 :goto_0

    .line 1548
    .end local v27    # "targetLine":I
    :cond_6
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    sub-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto/16 :goto_0

    .line 1560
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1561
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v18

    goto/16 :goto_1

    .line 1570
    .restart local v4    # "view":Landroid/view/View;
    .restart local v15    # "added":Z
    .restart local v18    # "defaultNewViewLine":I
    .restart local v22    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .restart local v25    # "position":I
    .restart local v26    # "spanIndex":I
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1572
    .restart local v16    # "assignSpan":Z
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getNextSpan(Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    move-result-object v17

    goto/16 :goto_4

    .line 1581
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v17, v3, v26

    .restart local v17    # "currentSpan":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    goto/16 :goto_5

    .line 1588
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1596
    :cond_c
    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    goto/16 :goto_7

    .line 1606
    :cond_d
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinStart(I)I

    move-result v8

    .line 1608
    .restart local v8    # "end":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v6, v8, v3

    .line 1609
    .restart local v6    # "start":I
    if-eqz v16, :cond_1

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1

    .line 1611
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1612
    .restart local v20    # "fullSpanItem":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1613
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    .line 1607
    .end local v6    # "start":I
    .end local v8    # "end":I
    .end local v20    # "fullSpanItem":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_e
    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v8

    goto :goto_f

    .line 1624
    .restart local v6    # "start":I
    .restart local v8    # "end":I
    :cond_f
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_12

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v21, 0x1

    .line 1629
    .local v21, "hasInvalidGap":Z
    :goto_10
    if-eqz v21, :cond_2

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    .line 1631
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1632
    .restart local v20    # "fullSpanItem":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v20, :cond_10

    .line 1633
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1635
    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1625
    .end local v20    # "fullSpanItem":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v21    # "hasInvalidGap":Z
    :cond_11
    const/16 v21, 0x0

    goto :goto_10

    .line 1627
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v3

    if-nez v3, :cond_13

    const/16 v21, 0x1

    .restart local v21    # "hasInvalidGap":Z
    :goto_11
    goto :goto_10

    .end local v21    # "hasInvalidGap":Z
    :cond_13
    const/16 v21, 0x0

    goto :goto_11

    .line 1643
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1644
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v9, v10

    sub-int v7, v3, v9

    goto/16 :goto_a

    .line 1648
    :cond_15
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 1651
    .restart local v5    # "otherStart":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v7, v5, v3

    .restart local v7    # "otherEnd":I
    goto/16 :goto_b

    .line 1648
    .end local v5    # "otherStart":I
    .end local v7    # "otherEnd":I
    :cond_16
    move-object/from16 v0, v17

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1650
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int v5, v3, v9

    goto :goto_12

    .restart local v5    # "otherStart":I
    .restart local v7    # "otherEnd":I
    :cond_17
    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v6

    move v12, v5

    move v13, v8

    move v14, v7

    .line 1657
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1663
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateRemainingSpans(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    .line 1670
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1675
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .end local v22    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    :cond_1a
    if-nez v15, :cond_1b

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycle(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)V

    .line 1679
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_1c

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinStart(I)I

    move-result v24

    .line 1681
    .local v24, "minStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v19, v3, v24

    .line 1686
    .end local v24    # "minStart":I
    .local v19, "diff":I
    :goto_13
    if-lez v19, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_14
    return v3

    .line 1683
    .end local v19    # "diff":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v23

    .line 1684
    .local v23, "maxEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v19, v23, v3

    .restart local v19    # "diff":I
    goto :goto_13

    .line 1686
    .end local v23    # "maxEnd":I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 2165
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2166
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2167
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2168
    .local v2, "position":I
    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    .line 2172
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return v2

    .line 2165
    .restart local v2    # "position":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2172
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .prologue
    .line 2181
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2182
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2183
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2184
    .local v1, "position":I
    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    .line 2188
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return v1

    .line 2181
    .restart local v1    # "position":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2188
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private fixEndGap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V
    .locals 4
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    const/high16 v3, -0x80000000

    .line 1369
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    .line 1370
    .local v2, "maxEndLine":I
    if-ne v2, v3, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v3, v2

    .line 1375
    .local v1, "gap":I
    if-lez v1, :cond_0

    .line 1376
    neg-int v3, v1

    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v3

    neg-int v0, v3

    .line 1380
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1381
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1382
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private fixStartGap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    const v3, 0x7fffffff

    .line 1388
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    .line 1389
    .local v2, "minStartLine":I
    if-ne v2, v3, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1394
    .local v1, "gap":I
    if-lez v1, :cond_0

    .line 1395
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 1399
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1400
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1401
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private getFirstChildPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2154
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2155
    .local v0, "childCount":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getLastChildPosition()I
    .locals 2

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2150
    .local v0, "childCount":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1843
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1844
    .local v1, "maxEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1845
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1846
    .local v2, "spanEnd":I
    if-le v2, v1, :cond_0

    .line 1847
    move v1, v2

    .line 1844
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1850
    .end local v2    # "spanEnd":I
    :cond_1
    return v1
.end method

.method private getMaxStart(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1801
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1802
    .local v1, "maxStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1803
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1804
    .local v2, "spanStart":I
    if-le v2, v1, :cond_0

    .line 1805
    move v1, v2

    .line 1802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1808
    .end local v2    # "spanStart":I
    :cond_1
    return v1
.end method

.method private getMinEnd(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1854
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1855
    .local v1, "minEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1856
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1857
    .local v2, "spanEnd":I
    if-ge v2, v1, :cond_0

    .line 1858
    move v1, v2

    .line 1855
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1861
    .end local v2    # "spanEnd":I
    :cond_1
    return v1
.end method

.method private getMinStart(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1812
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1813
    .local v1, "minStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1814
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1815
    .local v2, "spanStart":I
    if-ge v2, v1, :cond_0

    .line 1816
    move v1, v2

    .line 1813
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1819
    .end local v2    # "spanStart":I
    :cond_1
    return v1
.end method

.method private getNextSpan(Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .locals 14
    .param p1, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    .prologue
    .line 1938
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    invoke-direct {p0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v10

    .line 1940
    .local v10, "preferLastSpan":Z
    if-eqz v10, :cond_1

    .line 1941
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v12, -0x1

    .line 1942
    .local v11, "startIndex":I
    const/4 v2, -0x1

    .line 1943
    .local v2, "endIndex":I
    const/4 v1, -0x1

    .line 1949
    .local v1, "diff":I
    :goto_0
    iget v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 1950
    const/4 v6, 0x0

    .line 1951
    .local v6, "min":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    const v7, 0x7fffffff

    .line 1952
    .local v7, "minLine":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1953
    .local v0, "defaultLine":I
    move v3, v11

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_5

    .line 1954
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    .line 1955
    .local v8, "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    .line 1956
    .local v9, "otherLine":I
    if-ge v9, v7, :cond_0

    .line 1957
    move-object v6, v8

    .line 1958
    move v7, v9

    .line 1953
    :cond_0
    add-int/2addr v3, v1

    goto :goto_1

    .line 1945
    .end local v0    # "defaultLine":I
    .end local v1    # "diff":I
    .end local v2    # "endIndex":I
    .end local v3    # "i":I
    .end local v6    # "min":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .end local v7    # "minLine":I
    .end local v8    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    .end local v11    # "startIndex":I
    :cond_1
    const/4 v11, 0x0

    .line 1946
    .restart local v11    # "startIndex":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 1947
    .restart local v2    # "endIndex":I
    const/4 v1, 0x1

    .restart local v1    # "diff":I
    goto :goto_0

    .line 1963
    :cond_2
    const/4 v4, 0x0

    .line 1964
    .local v4, "max":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    const/high16 v5, -0x80000000

    .line 1965
    .local v5, "maxLine":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1966
    .restart local v0    # "defaultLine":I
    move v3, v11

    .restart local v3    # "i":I
    :goto_2
    if-eq v3, v2, :cond_4

    .line 1967
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    .line 1968
    .restart local v8    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    .line 1969
    .restart local v9    # "otherLine":I
    if-le v9, v5, :cond_3

    .line 1970
    move-object v4, v8

    .line 1971
    move v5, v9

    .line 1966
    :cond_3
    add-int/2addr v3, v1

    goto :goto_2

    .end local v8    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_4
    move-object v6, v4

    .line 1974
    .end local v4    # "max":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .end local v5    # "maxLine":I
    :cond_5
    return-object v6
.end method

.method private handleUpdate(III)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCountOrToPosition"    # I
    .param p3, "cmd"    # I

    .prologue
    const/4 v5, 0x1

    .line 1489
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1493
    .local v3, "minPosition":I
    :goto_0
    const/16 v4, 0x8

    if-ne p3, v4, :cond_3

    .line 1494
    if-ge p1, p2, :cond_2

    .line 1495
    add-int/lit8 v0, p2, 0x1

    .line 1496
    .local v0, "affectedRangeEnd":I
    move v1, p1

    .line 1506
    .local v1, "affectedRangeStart":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    .line 1507
    sparse-switch p3, :sswitch_data_0

    .line 1521
    :goto_2
    if-gt v0, v3, :cond_4

    .line 1529
    :cond_0
    :goto_3
    return-void

    .line 1489
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    .end local v3    # "minPosition":I
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_0

    .line 1498
    .restart local v3    # "minPosition":I
    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 1499
    .restart local v0    # "affectedRangeEnd":I
    move v1, p2

    .restart local v1    # "affectedRangeStart":I
    goto :goto_1

    .line 1502
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    :cond_3
    move v1, p1

    .line 1503
    .restart local v1    # "affectedRangeStart":I
    add-int v0, p1, p2

    .restart local v0    # "affectedRangeEnd":I
    goto :goto_1

    .line 1509
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1512
    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_2

    .line 1516
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1517
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1525
    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .line 1526
    .local v2, "maxPosition":I
    :goto_4
    if-gt v1, v2, :cond_0

    .line 1527
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    goto :goto_3

    .line 1525
    .end local v2    # "maxPosition":I
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    goto :goto_4

    .line 1507
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 1150
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1152
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 1154
    if-eqz p4, :cond_1

    .line 1155
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v1

    .line 1157
    .local v1, "measure":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1158
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1161
    :cond_0
    return-void

    .line 1156
    .end local v1    # "measure":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v1

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1121
    iget-boolean v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1

    .line 1122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_0

    .line 1123
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1124
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1123
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1144
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1127
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1132
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_2

    .line 1133
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1135
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1133
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1139
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1140
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1138
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V
    .locals 11
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "shouldCheckForGaps"    # Z

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 604
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .line 605
    .local v0, "anchorInfo":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_0

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v7, v10, :cond_2

    .line 606
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 607
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 608
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 715
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    iget-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v10, :cond_3

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_9

    :cond_3
    move v4, v3

    .line 615
    .local v4, "recalculateAnchor":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 616
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 617
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_a

    .line 618
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->applyPendingSavedState(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)V

    .line 623
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)V

    .line 624
    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 626
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_6

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v10, :cond_6

    .line 627
    iget-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v7, v8, :cond_5

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v7, v8, :cond_6

    .line 629
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 630
    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 634
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_e

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v7, v3, :cond_e

    .line 636
    :cond_7
    iget-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v7, :cond_b

    .line 637
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v7, :cond_e

    .line 639
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->clear()V

    .line 640
    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_8

    .line 641
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v7, v7, v2

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->setLine(I)V

    .line 637
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v4    # "recalculateAnchor":Z
    :cond_9
    move v4, v6

    .line 613
    goto :goto_1

    .line 620
    .restart local v4    # "recalculateAnchor":Z
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 621
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    .line 645
    :cond_b
    if-nez v4, :cond_c

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v7, :cond_13

    .line 646
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v7, :cond_d

    .line 647
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v7, v7, v2

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 650
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;)V

    .line 660
    .end local v2    # "i":I
    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->detachAndScrapAttachedViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 661
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput-boolean v6, v7, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mRecycle:Z

    .line 662
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 663
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 664
    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v7, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateLayoutState(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 665
    iget-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_14

    .line 667
    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 668
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p1, v7, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    .line 670
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 671
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 672
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p1, v7, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    .line 683
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 685
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_f

    .line 686
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_15

    .line 687
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fixEndGap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V

    .line 688
    invoke-direct {p0, p1, p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fixStartGap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V

    .line 694
    :cond_f
    :goto_6
    const/4 v1, 0x0

    .line 695
    .local v1, "hasGaps":Z
    if-eqz p3, :cond_11

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_11

    .line 696
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v7, :cond_16

    .line 697
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_16

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v7, :cond_10

    .line 698
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 699
    .local v3, "needToCheckForGaps":Z
    :cond_10
    :goto_7
    if-eqz v3, :cond_11

    .line 700
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 701
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->checkForGaps()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 702
    const/4 v1, 0x1

    .line 706
    .end local v3    # "needToCheckForGaps":Z
    :cond_11
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 707
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 709
    :cond_12
    iget-boolean v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 711
    if-eqz v1, :cond_1

    .line 712
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 713
    invoke-direct {p0, p1, p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V

    goto/16 :goto_0

    .line 652
    .end local v1    # "hasGaps":Z
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v7, :cond_e

    .line 653
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v5, v7, v2

    .line 654
    .local v5, "span":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->clear()V

    .line 655
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->setLine(I)V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 675
    .end local v2    # "i":I
    .end local v5    # "span":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    :cond_14
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 676
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p1, v7, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    .line 678
    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 679
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 680
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p1, v7, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    goto/16 :goto_5

    .line 690
    :cond_15
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fixStartGap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V

    .line 691
    invoke-direct {p0, p1, p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fixEndGap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V

    goto/16 :goto_6

    .restart local v1    # "hasGaps":Z
    :cond_16
    move v3, v6

    .line 698
    goto :goto_7
.end method

.method private preferLastSpan(I)Z
    .locals 4
    .param p1, "layoutDir"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1928
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    .line 1929
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    .line 1931
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1929
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1931
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1771
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1772
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1771
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1774
    :cond_0
    return-void
.end method

.method private recycle(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)V
    .locals 4
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    .prologue
    const/4 v3, -0x1

    .line 1724
    iget-boolean v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mRecycle:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mInfinite:Z

    if-eqz v2, :cond_1

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    if-nez v2, :cond_3

    .line 1729
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_2

    .line 1730
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycleFromEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0

    .line 1732
    :cond_2
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycleFromStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0

    .line 1737
    :cond_3
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_5

    .line 1739
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 1741
    .local v1, "scrolled":I
    if-gez v1, :cond_4

    .line 1742
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    .line 1746
    .local v0, "line":I
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycleFromEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0

    .line 1744
    .end local v0    # "line":I
    :cond_4
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_1

    .line 1749
    .end local v0    # "line":I
    .end local v1    # "scrolled":I
    :cond_5
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v2

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    sub-int v1, v2, v3

    .line 1751
    .restart local v1    # "scrolled":I
    if-gez v1, :cond_6

    .line 1752
    iget v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    .line 1756
    .restart local v0    # "line":I
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycleFromStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0

    .line 1754
    .end local v0    # "line":I
    :cond_6
    iget v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    iget v3, p2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_2
.end method

.method private recycleFromEnd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "line"    # I

    .prologue
    const/4 v6, 0x1

    .line 1894
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 1896
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1897
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1898
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1899
    invoke-virtual {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_0

    .line 1900
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 1902
    .local v4, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_3

    .line 1903
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_2

    .line 1904
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1922
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "j":I
    .end local v4    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void

    .line 1903
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "j":I
    .restart local v4    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1908
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_4

    .line 1909
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->popEnd()V

    .line 1908
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1912
    .end local v3    # "j":I
    :cond_3
    iget-object v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 1915
    iget-object v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->popEnd()V

    .line 1917
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1896
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private recycleFromStart(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "line"    # I

    .prologue
    const/4 v4, 0x1

    .line 1865
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1866
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1867
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1868
    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 1869
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 1871
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    .line 1872
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_2

    .line 1873
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1891
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "j":I
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void

    .line 1872
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "j":I
    .restart local v2    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1877
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_4

    .line 1878
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->popStart()V

    .line 1877
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1881
    .end local v1    # "j":I
    :cond_3
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1884
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->popStart()V

    .line 1886
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    goto :goto_0
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 727
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getMode()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_1

    .line 773
    :cond_0
    return-void

    .line 730
    :cond_1
    const/4 v7, 0x0

    .line 731
    .local v7, "maxSize":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    .line 732
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 733
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 734
    .local v1, "child":Landroid/view/View;
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v11, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    int-to-float v10, v11

    .line 735
    .local v10, "size":F
    cmpg-float v11, v10, v7

    if-gez v11, :cond_2

    .line 732
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 738
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 739
    .local v5, "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 740
    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v11, v10

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 742
    :cond_3
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_1

    .line 744
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "layoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .end local v10    # "size":F
    :cond_4
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    .line 745
    .local v0, "before":I
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 746
    .local v3, "desired":I
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getMode()I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_5

    .line 747
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 749
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 750
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    if-eq v11, v0, :cond_0

    .line 753
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    .line 754
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 755
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 756
    .local v6, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-boolean v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v11, :cond_6

    .line 753
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 759
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v11, v13, :cond_7

    .line 760
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int v8, v11, v12

    .line 761
    .local v8, "newOffset":I
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    mul-int v9, v11, v0

    .line 762
    .local v9, "prevOffset":I
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    .line 764
    .end local v8    # "newOffset":I
    .end local v9    # "prevOffset":I
    :cond_7
    iget-object v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int v8, v11, v12

    .line 765
    .restart local v8    # "newOffset":I
    iget-object v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iget v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    mul-int v9, v11, v0

    .line 766
    .restart local v9    # "prevOffset":I
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v11, v13, :cond_8

    .line 767
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    .line 769
    :cond_8
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_3
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 553
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1437
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput p1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mLayoutDirection:I

    .line 1438
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    .line 1440
    return-void

    .line 1438
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2
    .param p1, "layoutDir"    # I
    .param p2, "targetLine"    # I

    .prologue
    .line 1777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1778
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1777
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateRemainingSpans(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1783
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    .line 835
    :goto_0
    iput v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 836
    const/high16 v0, -0x80000000

    iput v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 837
    const/4 v0, 0x1

    return v0

    .line 835
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLayoutState(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 8
    .param p1, "anchorPosition"    # I
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1406
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput v5, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    .line 1407
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput p1, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 1408
    const/4 v2, 0x0

    .line 1409
    .local v2, "startExtra":I
    const/4 v1, 0x0

    .line 1410
    .local v1, "endExtra":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1411
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getTargetScrollPosition()I

    move-result v3

    .line 1412
    .local v3, "targetPos":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1413
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_1

    move v6, v4

    :goto_0
    if-ne v7, v6, :cond_2

    .line 1414
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v1

    .line 1422
    .end local v3    # "targetPos":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    .line 1423
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_3

    .line 1424
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    .line 1425
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    .line 1430
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput-boolean v5, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStopInFocusable:Z

    .line 1431
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput-boolean v4, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mRecycle:Z

    .line 1432
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getMode()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 1433
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEnd()I

    move-result v7

    if-nez v7, :cond_4

    :goto_3
    iput-boolean v4, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mInfinite:Z

    .line 1434
    return-void

    .end local v0    # "clipToPadding":Z
    .restart local v3    # "targetPos":I
    :cond_1
    move v6, v5

    .line 1413
    goto :goto_0

    .line 1416
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v2

    goto :goto_1

    .line 1427
    .end local v3    # "targetPos":I
    .restart local v0    # "clipToPadding":Z
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEnd()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mEndLine:I

    .line 1428
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    neg-int v7, v2

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStartLine:I

    goto :goto_2

    :cond_4
    move v4, v5

    .line 1433
    goto :goto_3
.end method

.method private updateRemainingSpans(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;II)V
    .locals 5
    .param p1, "span"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    .param p2, "layoutDir"    # I
    .param p3, "targetLine"    # I

    .prologue
    const/4 v4, 0x0

    .line 1786
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    .line 1787
    .local v0, "deletedSize":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1788
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v1

    .line 1789
    .local v1, "line":I
    add-int v2, v1, v0

    if-gt v2, p3, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1793
    .end local v1    # "line":I
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v1

    .line 1794
    .restart local v1    # "line":I
    sub-int v2, v1, v0

    if-lt v2, p3, :cond_0

    .line 1795
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 3
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .prologue
    .line 1164
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1172
    .end local p1    # "spec":I
    :cond_0
    :goto_0
    return p1

    .line 1167
    .restart local p1    # "spec":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1168
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1169
    :cond_2
    const/4 v1, 0x0

    .line 1170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1169
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 1823
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1824
    .local v0, "end":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 1825
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 1829
    :goto_1
    return v2

    .line 1824
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1829
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 1833
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1834
    .local v1, "start":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1835
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1839
    :goto_1
    return v2

    .line 1834
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1839
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 522
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

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

    .line 1980
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkForGaps()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    .line 305
    :goto_0
    return v6

    .line 268
    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    .line 270
    .local v4, "minPos":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    .line 275
    .local v3, "maxPos":I
    :goto_1
    if-nez v4, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "gapView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 278
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    .line 272
    .end local v0    # "gapView":Landroid/view/View;
    .end local v3    # "maxPos":I
    .end local v4    # "minPos":I
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    .line 273
    .restart local v4    # "minPos":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .restart local v3    # "maxPos":I
    goto :goto_1

    .line 284
    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v8, :cond_4

    move v6, v7

    .line 285
    goto :goto_0

    .line 287
    :cond_4
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    const/4 v2, -0x1

    .line 288
    .local v2, "invalidGapDir":I
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v9, v3, 0x1

    .line 289
    invoke-virtual {v8, v4, v9, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 290
    .local v1, "invalidFsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v1, :cond_6

    .line 291
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 292
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move v6, v7

    .line 293
    goto :goto_0

    .end local v1    # "invalidFsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v2    # "invalidGapDir":I
    :cond_5
    move v2, v6

    .line 287
    goto :goto_2

    .line 295
    .restart local v1    # "invalidFsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .restart local v2    # "invalidGapDir":I
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v9, v2, -0x1

    .line 296
    invoke-virtual {v7, v4, v8, v9, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 298
    .local v5, "validFsi":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v5, :cond_7

    .line 299
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 303
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    .line 301
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v5, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_3
.end method

.method public checkLayoutParams(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 2219
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public computeHorizontalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1081
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1101
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 2010
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v0

    .line 2011
    .local v0, "direction":I
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 2012
    .local v1, "outVector":Landroid/graphics/PointF;
    if-nez v0, :cond_0

    .line 2013
    const/4 v1, 0x0

    .line 2022
    .end local v1    # "outVector":Landroid/graphics/PointF;
    :goto_0
    return-object v1

    .line 2015
    .restart local v1    # "outVector":Landroid/graphics/PointF;
    :cond_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    .line 2016
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 2017
    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2019
    :cond_1
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 2020
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 983
    if-nez p1, :cond_1

    .line 984
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 989
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 986
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 992
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 8
    .param p1, "fullyVisible"    # Z

    .prologue
    .line 1345
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1346
    .local v1, "boundsStart":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1347
    .local v0, "boundsEnd":I
    const/4 v6, 0x0

    .line 1348
    .local v6, "partiallyVisible":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 1349
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1350
    .local v2, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1351
    .local v4, "childStart":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1352
    .local v3, "childEnd":I
    if-le v3, v1, :cond_0

    if-lt v4, v0, :cond_1

    .line 1348
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1355
    :cond_1
    if-le v3, v0, :cond_2

    if-nez p1, :cond_3

    .line 1364
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_2
    :goto_2
    return-object v2

    .line 1360
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childEnd":I
    .restart local v4    # "childStart":I
    :cond_3
    if-nez v6, :cond_0

    .line 1361
    move-object v6, v2

    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_4
    move-object v2, v6

    .line 1364
    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 9
    .param p1, "fullyVisible"    # Z

    .prologue
    .line 1315
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1316
    .local v1, "boundsStart":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1317
    .local v0, "boundsEnd":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    .line 1318
    .local v6, "limit":I
    const/4 v7, 0x0

    .line 1319
    .local v7, "partiallyVisible":Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 1320
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1321
    .local v2, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1322
    .local v4, "childStart":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v8, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1323
    .local v3, "childEnd":I
    if-le v3, v1, :cond_0

    if-lt v4, v0, :cond_1

    .line 1319
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1326
    :cond_1
    if-ge v4, v1, :cond_2

    if-nez p1, :cond_3

    .line 1335
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_2
    :goto_2
    return-object v2

    .line 1331
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childEnd":I
    .restart local v4    # "childStart":I
    :cond_3
    if-nez v7, :cond_0

    .line 1332
    move-object v7, v2

    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_4
    move-object v2, v7

    .line 1335
    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1285
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1287
    .local v0, "first":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1286
    .end local v0    # "first":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1287
    .restart local v0    # "first":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 951
    if-nez p1, :cond_1

    .line 952
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 957
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 958
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 954
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 1047
    if-nez p1, :cond_1

    .line 1048
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 1053
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 1054
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1050
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1056
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 1015
    if-nez p1, :cond_1

    .line 1016
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 1021
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1018
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method gatherPrefetchIndices(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;[I)I
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p4, "outIndices"    # [I

    .prologue
    .line 2081
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v4, :cond_2

    move v1, p1

    .line 2082
    .local v1, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_3

    .line 2084
    :cond_0
    const/4 v0, 0x0

    .line 2096
    :cond_1
    return v0

    .end local v1    # "delta":I
    :cond_2
    move v1, p2

    .line 2081
    goto :goto_0

    .line 2086
    .restart local v1    # "delta":I
    :cond_3
    invoke-virtual {p0, v1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 2087
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 2088
    .local v3, "remainingSpan":I
    const/4 v0, 0x0

    .line 2089
    .local v0, "count":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-virtual {v4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->hasMore(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    .line 2090
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v2, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 2091
    .local v2, "pos":I
    aput v2, p4, v0

    .line 2092
    add-int/lit8 v3, v3, -0x1

    .line 2093
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 2094
    add-int/lit8 v0, v0, 0x1

    .line 2095
    goto :goto_1
.end method

.method public generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2194
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 2195
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 2198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2205
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2210
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2211
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2213
    :goto_0
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1302
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1303
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 1305
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method getItemPrefetchCount()I
    .locals 1

    .prologue
    .line 2076
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1293
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1294
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 1296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 23

    .prologue
    .line 331
    const/16 v19, 0x0

    .line 332
    .local v19, "startChildIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    .line 333
    .local v6, "endChildIndex":I
    new-instance v10, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 334
    .local v10, "mSpansToCheck":Ljava/util/BitSet;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    .line 339
    .local v18, "preferredSpanDir":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 340
    move v7, v6

    .line 341
    .local v7, "firstChildIndex":I
    add-int/lit8 v4, v19, -0x1

    .line 346
    .local v4, "childLimit":I
    :goto_1
    if-ge v7, v4, :cond_3

    const/4 v14, 0x1

    .line 347
    .local v14, "nextChildDiff":I
    :goto_2
    move v8, v7

    .local v8, "i":I
    :goto_3
    if-eq v8, v4, :cond_c

    .line 348
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 349
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 350
    .local v9, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-object v0, v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 351
    iget-object v0, v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->checkSpanForGap(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 391
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_0
    :goto_4
    return-object v3

    .line 337
    .end local v4    # "childLimit":I
    .end local v7    # "firstChildIndex":I
    .end local v8    # "i":I
    .end local v14    # "nextChildDiff":I
    .end local v18    # "preferredSpanDir":I
    :cond_1
    const/16 v18, -0x1

    goto :goto_0

    .line 343
    .restart local v18    # "preferredSpanDir":I
    :cond_2
    move/from16 v7, v19

    .line 344
    .restart local v7    # "firstChildIndex":I
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "childLimit":I
    goto :goto_1

    .line 346
    :cond_3
    const/4 v14, -0x1

    goto :goto_2

    .line 354
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v9    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .restart local v14    # "nextChildDiff":I
    :cond_4
    iget-object v0, v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->clear(I)V

    .line 356
    :cond_5
    iget-boolean v0, v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 347
    :cond_6
    add-int/2addr v8, v14

    goto :goto_3

    .line 360
    :cond_7
    add-int v20, v8, v14

    move/from16 v0, v20

    if-eq v0, v4, :cond_6

    .line 361
    add-int v20, v8, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 362
    .local v13, "nextChild":Landroid/view/View;
    const/4 v5, 0x0

    .line 363
    .local v5, "compareSpans":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 366
    .local v11, "myEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 367
    .local v15, "nextEnd":I
    if-lt v11, v15, :cond_0

    .line 369
    if-ne v11, v15, :cond_8

    .line 370
    const/4 v5, 0x1

    .line 381
    .end local v11    # "myEnd":I
    .end local v15    # "nextEnd":I
    :cond_8
    :goto_5
    if-eqz v5, :cond_6

    .line 383
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 384
    .local v16, "nextLp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-object v0, v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    if-gez v20, :cond_a

    const/16 v20, 0x1

    move/from16 v21, v20

    :goto_6
    if-gez v18, :cond_b

    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    goto/16 :goto_4

    .line 373
    .end local v16    # "nextLp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 374
    .local v12, "myStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    .line 375
    .local v17, "nextStart":I
    move/from16 v0, v17

    if-gt v12, v0, :cond_0

    .line 377
    move/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 378
    const/4 v5, 0x1

    goto :goto_5

    .line 384
    .end local v12    # "myStart":I
    .end local v17    # "nextStart":I
    .restart local v16    # "nextLp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_a
    const/16 v20, 0x0

    move/from16 v21, v20

    goto :goto_6

    :cond_b
    const/16 v20, 0x0

    goto :goto_7

    .line 391
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "compareSpans":Z
    .end local v9    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v16    # "nextLp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 544
    return-void
.end method

.method isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 1444
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2
    .param p1, "dy"    # I

    .prologue
    .line 1452
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->clear()V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 323
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2230
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 2231
    const/4 v7, 0x0

    .line 2285
    :cond_0
    :goto_0
    return-object v7

    .line 2234
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2235
    .local v0, "directChild":Landroid/view/View;
    if-nez v0, :cond_2

    .line 2236
    const/4 v7, 0x0

    goto :goto_0

    .line 2239
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2240
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 2241
    .local v2, "layoutDir":I
    const/high16 v8, -0x80000000

    if-ne v2, v8, :cond_3

    .line 2242
    const/4 v7, 0x0

    goto :goto_0

    .line 2244
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 2245
    .local v4, "prevFocusLayoutParams":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget-boolean v3, v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2246
    .local v3, "prevFocusFullSpan":Z
    iget-object v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 2248
    .local v5, "prevFocusSpan":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;
    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    .line 2249
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    .line 2253
    .local v6, "referenceChildPosition":I
    :goto_1
    invoke-direct {p0, v6, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateLayoutState(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 2254
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2256
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    add-int/2addr v9, v6

    iput v9, v8, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 2257
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    const v9, 0x3eaaaaab

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    .line 2258
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mStopInFocusable:Z

    .line 2259
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mRecycle:Z

    .line 2260
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p3, v8, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    .line 2261
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2262
    if-nez v3, :cond_4

    .line 2263
    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    .line 2264
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_4

    if-ne v7, v0, :cond_0

    .line 2270
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2271
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_9

    .line 2272
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    .line 2273
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_5

    if-ne v7, v0, :cond_0

    .line 2271
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2251
    .end local v1    # "i":I
    .end local v6    # "referenceChildPosition":I
    .end local v7    # "view":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    .restart local v6    # "referenceChildPosition":I
    goto :goto_1

    .line 2278
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v8, :cond_9

    .line 2279
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    .line 2280
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_8

    if-ne v7, v0, :cond_0

    .line 2278
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2285
    .end local v7    # "view":Landroid/view/View;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x0

    .line 1259
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1260
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1261
    move-object v2, p1

    .line 1262
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v3

    .line 1263
    .local v3, "start":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1264
    .local v0, "end":Landroid/view/View;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1277
    .end local v0    # "end":Landroid/view/View;
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v3    # "start":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1267
    .restart local v0    # "end":Landroid/view/View;
    .restart local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .restart local v3    # "start":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1268
    .local v4, "startPos":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1269
    .local v1, "endPos":I
    if-ge v4, v1, :cond_2

    .line 1270
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1271
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0

    .line 1273
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1274
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1238
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1239
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v6, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    .line 1240
    invoke-super {p0, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1255
    :goto_0
    return-void

    :cond_0
    move-object v7, v6

    .line 1243
    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;

    .line 1244
    .local v7, "sglp":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 1246
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean v1, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1245
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1250
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1252
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean v3, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    :goto_2
    iget-boolean v4, v7, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1250
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    .line 1252
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onItemsAdded(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1465
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1466
    return-void
.end method

.method public onItemsChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1471
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 1472
    return-void
.end method

.method public onItemsMoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 1476
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1477
    return-void
.end method

.method public onItemsRemoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1460
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1461
    return-void
.end method

.method public onItemsUpdated(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1482
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1483
    return-void
.end method

.method public onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Z)V

    .line 599
    return-void
.end method

.method public onLayoutCompleted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 719
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 720
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 721
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    .line 723
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 724
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1177
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1178
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    .line 1179
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 1183
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    .line 1187
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_1

    .line 1188
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;)V

    .line 1232
    :cond_0
    :goto_0
    return-object v2

    .line 1190
    :cond_1
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1191
    .local v2, "state":Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1192
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1193
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1195
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_3

    .line 1196
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1197
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1198
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1203
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 1204
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1205
    :goto_2
    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1206
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1207
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1208
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_0

    .line 1211
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_5

    .line 1212
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1213
    .local v1, "line":I
    if-eq v1, v4, :cond_2

    .line 1214
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1222
    :cond_2
    :goto_4
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    .line 1209
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1200
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_3
    iput v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1205
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_2

    .line 1217
    .restart local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1218
    .restart local v1    # "line":I
    if-eq v1, v4, :cond_2

    .line 1219
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1225
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_6
    iput v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1226
    iput v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1227
    iput v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->checkForGaps()Z

    .line 313
    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 5
    .param p1, "delta"    # I
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 2102
    if-lez p1, :cond_0

    .line 2103
    const/4 v1, 0x1

    .line 2104
    .local v1, "layoutDir":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    .line 2109
    .local v2, "referenceChildPosition":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mRecycle:Z

    .line 2110
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateLayoutState(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 2111
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2112
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mItemDirection:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mCurrentPosition:I

    .line 2113
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2114
    .local v0, "absDt":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput v0, v3, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    .line 2115
    return-void

    .line 2106
    .end local v0    # "absDt":I
    .end local v1    # "layoutDir":I
    .end local v2    # "referenceChildPosition":I
    :cond_0
    const/4 v1, -0x1

    .line 2107
    .restart local v1    # "layoutDir":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .restart local v2    # "referenceChildPosition":I
    goto :goto_0
.end method

.method scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "dt"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v3, 0x0

    .line 2118
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v3

    .line 2145
    :goto_0
    return v2

    .line 2122
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 2123
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p2, v4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->fill(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v1

    .line 2124
    .local v1, "consumed":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iget v0, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    .line 2126
    .local v0, "available":I
    if-ge v0, v1, :cond_3

    .line 2127
    move v2, p1

    .line 2137
    .local v2, "totalScroll":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->offsetChildren(I)V

    .line 2139
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2140
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v4, :cond_2

    .line 2141
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 2143
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    iput v3, v4, Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;->mAvailable:I

    .line 2144
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->recycle(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslLayoutState;)V

    goto :goto_0

    .line 2128
    .end local v2    # "totalScroll":I
    :cond_3
    if-gez p1, :cond_4

    .line 2129
    neg-int v2, v1

    .restart local v2    # "totalScroll":I
    goto :goto_1

    .line 2131
    .end local v2    # "totalScroll":I
    :cond_4
    move v2, v1

    .restart local v2    # "totalScroll":I
    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1991
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2041
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2042
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2043
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_1

    .line 2044
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 2046
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 2047
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2066
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2067
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2068
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_1

    .line 2069
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 2071
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 2072
    return-void
.end method

.method public scrollVerticallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1997
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 2
    .param p1, "gapStrategy"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 506
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 509
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    .line 515
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 581
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 582
    .local v4, "verticalPadding":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 584
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 585
    .local v0, "height":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v7

    .line 585
    invoke-static {p2, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 593
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 594
    return-void

    .line 588
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 589
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 590
    .restart local v5    # "width":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v4

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v7

    .line 590
    invoke-static {p3, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 441
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid orientation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 445
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mOrientation:I

    .line 449
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 450
    .local v0, "tmp":Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 451
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 473
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mReverseLayout:Z

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 475
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .prologue
    .line 421
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 422
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v1, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 424
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    .line 425
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 426
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->requestLayout()V

    .line 432
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 2028
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 2029
    .local v0, "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
    if-eqz p1, :cond_0

    .line 2030
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    .line 2032
    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;->setTargetPosition(I)V

    .line 2033
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->startSmoothScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V

    .line 2034
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 12
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/high16 v10, -0x80000000

    const/4 v7, 0x1

    .line 842
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v11, :cond_1

    :cond_0
    move v7, v6

    .line 916
    :goto_0
    return v7

    .line 846
    :cond_1
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 847
    :cond_2
    iput v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 848
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    move v7, v6

    .line 849
    goto :goto_0

    .line 852
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v8, v11, :cond_4

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v8, v7, :cond_f

    .line 855
    :cond_4
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 856
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_c

    .line 859
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    .line 860
    :goto_1
    iput v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 861
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v6, v10, :cond_7

    .line 862
    iget-boolean v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_6

    .line 863
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v5, v6, v8

    .line 865
    .local v5, "target":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    .line 860
    .end local v5    # "target":I
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    goto :goto_1

    .line 867
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v6

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int v5, v6, v8

    .line 869
    .restart local v5    # "target":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    .line 875
    .end local v5    # "target":I
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 876
    .local v1, "childSize":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v6

    if-le v1, v6, :cond_9

    .line 878
    iget-boolean v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 879
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 880
    :goto_2
    iput v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 879
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 880
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_2

    .line 884
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 885
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v6, v8

    .line 886
    .local v4, "startGap":I
    if-gez v4, :cond_a

    .line 887
    neg-int v6, v4

    iput v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 890
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 891
    invoke-virtual {v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int v2, v6, v8

    .line 892
    .local v2, "endGap":I
    if-gez v2, :cond_b

    .line 893
    iput v2, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 897
    :cond_b
    iput v10, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    .line 901
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_c
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 902
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v8, v10, :cond_e

    .line 903
    iget v8, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v3

    .line 905
    .local v3, "position":I
    if-ne v3, v7, :cond_d

    move v6, v7

    :cond_d
    iput-boolean v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 906
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 910
    .end local v3    # "position":I
    :goto_3
    iput-boolean v7, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto/16 :goto_0

    .line 908
    :cond_e
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_3

    .line 913
    .end local v0    # "child":Landroid/view/View;
    :cond_f
    iput v10, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 914
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v6, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_0
.end method

.method updateAnchorInfoForLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateAnchorFromPendingData(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->updateAnchorFromChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 825
    const/4 v0, 0x0

    iput v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 1
    .param p1, "totalSpace"    # I

    .prologue
    .line 920
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSizePerSpan:I

    .line 922
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 923
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getMode()I

    move-result v0

    .line 922
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 924
    return-void
.end method
