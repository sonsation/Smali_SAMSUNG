.class public Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SeslNestedScrollView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChild;
.implements Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent;
.implements Lcom/samsung/android/support/sesl/core/view/SeslScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;,
        Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

.field private mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 110
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    .line 111
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 125
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 141
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    .line 151
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 156
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    .line 157
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initScrollView()V

    .line 193
    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setFillViewport(Z)V

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    .line 201
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    .line 204
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 206
    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 207
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 425
    .local v1, "childHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 427
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 1799
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1815
    :cond_0
    const/4 p0, 0x0

    .line 1825
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 1817
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1823
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1282
    if-eqz p1, :cond_0

    .line 1283
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1284
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 1723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 1725
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    .line 1726
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll()V

    .line 1728
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1730
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1732
    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1753
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1754
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1755
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1756
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1757
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1763
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1761
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1030
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1031
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1040
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1042
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1043
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1044
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1045
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1046
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1048
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1054
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1056
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1058
    move-object v1, v5

    .line 1059
    move v3, v8

    .line 1043
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1061
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    .line 1062
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    .line 1063
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1065
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1066
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1072
    move-object v1, v5

    goto :goto_2

    .line 1063
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1075
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1077
    move-object v1, v5

    .line 1078
    const/4 v3, 0x1

    goto :goto_2

    .line 1079
    :cond_7
    if-eqz v7, :cond_0

    .line 1084
    move-object v1, v5

    goto :goto_2

    .line 1091
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1711
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    .line 1712
    .local v1, "scrollY":I
    if-gtz v1, :cond_0

    if-lez p1, :cond_3

    .line 1713
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1714
    .local v0, "canFling":Z
    :goto_0
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1715
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1716
    if-eqz v0, :cond_2

    .line 1717
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->fling(I)V

    .line 1720
    :cond_2
    return-void

    .line 1713
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .prologue
    .line 925
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 926
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 927
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 928
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 934
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 933
    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    .line 936
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    return v2
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    .line 570
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 571
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 576
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 581
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 358
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 360
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setFocusable(Z)V

    .line 361
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    .line 362
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setWillNotDraw(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 364
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    .line 365
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMinimumVelocity:I

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMaximumVelocity:I

    .line 367
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 589
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 591
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1261
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1683
    if-ne p0, p1, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return v1

    .line 1687
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1688
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1273
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1272
    :goto_0
    return v0

    .line 1273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 881
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 882
    .local v1, "pointerId":I
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 886
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 887
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 888
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 889
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 890
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 893
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 886
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 598
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1174
    const/4 v3, 0x1

    .line 1176
    .local v3, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v4

    .line 1177
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    .line 1178
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1179
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1181
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1182
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1183
    move-object v5, p0

    .line 1186
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1187
    const/4 v3, 0x0

    .line 1193
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1195
    :cond_1
    return v3

    .line 1179
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1189
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1190
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1189
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1460
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1462
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1464
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1465
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 1467
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1478
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1479
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1480
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1481
    if-eqz p2, :cond_2

    .line 1482
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 1487
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1479
    goto :goto_0

    .line 1484
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 376
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 385
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1208
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1210
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1212
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1214
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1215
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1216
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1217
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1218
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    .line 1219
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1241
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1242
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1248
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1249
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    .line 1250
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->requestFocus()Z

    .line 1251
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    .line 1253
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1222
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 1224
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    .line 1235
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1238
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1226
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1227
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1228
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1229
    .local v1, "daBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v9

    sub-int v5, v8, v9

    .line 1230
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1231
    sub-int v6, v1, v5

    goto :goto_1

    .line 1238
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1389
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1424
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1425
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    .line 1426
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    .line 1427
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1428
    .local v12, "x":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1430
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1431
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v6

    .line 1432
    .local v6, "range":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v11

    .line 1433
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_3

    if-lez v6, :cond_3

    .line 1436
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1439
    if-eqz v10, :cond_2

    .line 1440
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ensureGlows()V

    .line 1441
    if-gtz v13, :cond_4

    if-lez v4, :cond_4

    .line 1442
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1449
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_1
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    move v10, v5

    .line 1433
    goto :goto_0

    .line 1443
    .restart local v10    # "canOverscroll":Z
    :cond_4
    if-lt v13, v6, :cond_2

    if-ge v4, v6, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1499
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1553
    :cond_0
    :goto_0
    return v6

    .line 1501
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    .line 1502
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    .line 1503
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1505
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1508
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1509
    add-int/2addr v5, v2

    .line 1513
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1514
    sub-int/2addr v4, v2

    .line 1517
    :cond_3
    const/4 v6, 0x0

    .line 1519
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1524
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1526
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1533
    :goto_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1534
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1535
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1537
    goto :goto_0

    .line 1529
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1537
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1542
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1544
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1551
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1547
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method public computeVerticalScrollExtent()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1361
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 8
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v1

    .line 1340
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 1341
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1354
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .line 1345
    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1346
    .local v3, "scrollRange":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    .line 1347
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1348
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 1349
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1354
    goto :goto_0

    .line 1350
    :cond_2
    if-le v4, v2, :cond_1

    .line 1351
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1767
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1768
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 1769
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    .line 1770
    .local v2, "scrollY":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1772
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1774
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1775
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1776
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1777
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    .line 1779
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1781
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1782
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1783
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1784
    .restart local v3    # "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    .line 1786
    .local v0, "height":I
    neg-int v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1787
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    .line 1786
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1788
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1789
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1790
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1791
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    .line 1793
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1796
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollY":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 526
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 528
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 532
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 534
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    .line 536
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 564
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 541
    :cond_2
    const/4 v1, 0x0

    .line 542
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 543
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 564
    goto :goto_0

    .line 545
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 546
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 548
    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->fullScroll(I)Z

    move-result v1

    .line 550
    goto :goto_1

    .line 552
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 553
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 555
    :cond_5
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->fullScroll(I)Z

    move-result v1

    .line 557
    goto :goto_1

    .line 559
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1699
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1700
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 1701
    .local v12, "height":I
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1703
    .local v11, "bottom":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    sub-int v4, v11, v12

    .line 1704
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 1703
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1706
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    .line 1708
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1143
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1144
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v2

    .line 1146
    .local v2, "height":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1147
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1149
    if-eqz v1, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 1151
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1152
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1153
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1154
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1158
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1143
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 335
    const/4 v3, 0x0

    .line 345
    :goto_0
    return v3

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 339
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 340
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 341
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 342
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 345
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 353
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1004
    const/4 v1, 0x0

    .line 1005
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1006
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1008
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1007
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1010
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const/4 v2, 0x0

    .line 329
    :goto_0
    return v2

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 324
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    .line 325
    .local v1, "scrollY":I
    if-ge v1, v0, :cond_1

    .line 326
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 329
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1395
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1400
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v3

    .line 1401
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1400
    invoke-static {p2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1403
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1405
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1406
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1414
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1413
    invoke-static {p2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1416
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1419
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1420
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1654
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    .line 1657
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 921
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 899
    :pswitch_0
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 900
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 902
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 903
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 904
    .local v0, "delta":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v3

    .line 905
    .local v3, "range":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    .line 906
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 907
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 908
    const/4 v1, 0x0

    .line 912
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v5

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 914
    const/4 v5, 0x1

    goto :goto_0

    .line 909
    :cond_2
    if-le v1, v3, :cond_1

    .line 910
    move v1, v3

    goto :goto_1

    .line 897
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 623
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 717
    :goto_0
    return v0

    .line 627
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 717
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 638
    :pswitch_1
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 639
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_1

    .line 644
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 645
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_2

    .line 646
    const-string v0, "NestedScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 651
    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 652
    .local v11, "y":I
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 653
    .local v12, "yDiff":I
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 655
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 656
    iput v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 658
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 659
    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 661
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_1

    .line 662
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 669
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 670
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 671
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 672
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 680
    :cond_3
    iput v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 681
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 683
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initOrResetVelocityTracker()V

    .line 684
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 691
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 692
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 693
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    .line 700
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 701
    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 702
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    .line 703
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 704
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    .line 706
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 709
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1621
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1622
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    .line 1624
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1625
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1627
    :cond_0
    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1629
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    if-nez v3, :cond_2

    .line 1630
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    if-eqz v3, :cond_1

    .line 1631
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1632
    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    .line 1635
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1636
    .local v0, "childHeight":I
    :goto_0
    sub-int v3, p5, p3

    .line 1637
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    .line 1636
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1640
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 1641
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1648
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1649
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    .line 1650
    return-void

    :cond_3
    move v0, v2

    .line 1635
    goto :goto_0

    .line 1642
    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_2

    .line 1643
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 482
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 484
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 489
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 494
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getMeasuredHeight()I

    move-result v3

    .line 496
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 500
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 499
    invoke-static {p1, v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 501
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 503
    const/high16 v6, 0x40000000    # 2.0f

    .line 504
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 506
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 294
    if-nez p4, :cond_0

    .line 295
    float-to-int v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->flingWithNestedDispatch(I)V

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 303
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    .line 290
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    .line 281
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v6

    .line 283
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 284
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 285
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 268
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(I)Z

    .line 269
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 942
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 943
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1581
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1582
    const/16 p1, 0x82

    .line 1587
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 1588
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1592
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1600
    :cond_1
    :goto_2
    return v1

    .line 1583
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1584
    const/16 p1, 0x21

    goto :goto_0

    .line 1589
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1596
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1600
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1830
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    if-nez v1, :cond_0

    .line 1831
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1839
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1835
    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    .line 1836
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1837
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    .line 1838
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1843
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1844
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1845
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;->scrollPosition:I

    .line 1846
    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 473
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;IIII)V

    .line 478
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1661
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1663
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1664
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1672
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1673
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1674
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1675
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 262
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll()V

    .line 275
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 724
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 726
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 728
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    .line 729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 731
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 733
    packed-switch v21, :pswitch_data_0

    .line 871
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 874
    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 875
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 735
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 736
    const/4 v2, 0x0

    goto :goto_1

    .line 738
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 740
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    .line 741
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 749
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 754
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 755
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 756
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 738
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 760
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 761
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 762
    const-string v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 767
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .line 768
    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 771
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 773
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 775
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    .line 776
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 778
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 779
    if-lez v4, :cond_d

    .line 780
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 785
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v26

    .line 790
    .local v26, "oldY":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v8

    .line 791
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v27

    .line 792
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    :cond_b
    const/16 v23, 0x1

    .line 797
    .local v23, "canOverscroll":Z
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_c

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 803
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v26

    .line 804
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 805
    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 806
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 807
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 808
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 782
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_3

    .line 792
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_e
    const/16 v23, 0x0

    goto :goto_4

    .line 809
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    .restart local v23    # "canOverscroll":Z
    :cond_f
    if-eqz v23, :cond_1

    .line 810
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ensureGlows()V

    .line 811
    add-int v29, v26, v4

    .line 812
    .local v29, "pulledToY":I
    if-gez v29, :cond_12

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 814
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 813
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_10

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 826
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 827
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 828
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 818
    :cond_12
    move/from16 v0, v29

    if-le v0, v8, :cond_10

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 820
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 819
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_10

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 834
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_13

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 836
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 839
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_14

    .line 840
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->flingWithNestedDispatch(I)V

    .line 846
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_13
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->endDrag()V

    goto/16 :goto_0

    .line 841
    .restart local v25    # "initialVelocity":I
    .restart local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v20

    .line 841
    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 850
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_15

    .line 851
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v20

    .line 851
    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    .line 856
    :cond_15
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->endDrag()V

    goto/16 :goto_0

    .line 860
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 861
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 862
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 866
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 19
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v15

    .line 952
    .local v15, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    if-le v1, v4, :cond_8

    const/4 v9, 0x1

    .line 954
    .local v9, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeVerticalScrollExtent()I

    move-result v4

    if-le v1, v4, :cond_9

    const/4 v10, 0x1

    .line 955
    .local v10, "canScrollVertical":Z
    :goto_1
    if-eqz v15, :cond_0

    const/4 v1, 0x1

    if-ne v15, v1, :cond_a

    if-eqz v9, :cond_a

    :cond_0
    const/4 v14, 0x1

    .line 957
    .local v14, "overScrollHorizontal":Z
    :goto_2
    if-eqz v15, :cond_1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_b

    if-eqz v10, :cond_b

    :cond_1
    const/16 v16, 0x1

    .line 960
    .local v16, "overScrollVertical":Z
    :goto_3
    add-int v2, p3, p1

    .line 961
    .local v2, "newScrollX":I
    if-nez v14, :cond_2

    .line 962
    const/16 p7, 0x0

    .line 965
    :cond_2
    add-int v3, p4, p2

    .line 966
    .local v3, "newScrollY":I
    if-nez v16, :cond_3

    .line 967
    const/16 p8, 0x0

    .line 971
    :cond_3
    move/from16 v0, p7

    neg-int v13, v0

    .line 972
    .local v13, "left":I
    add-int v17, p7, p5

    .line 973
    .local v17, "right":I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v18, v0

    .line 974
    .local v18, "top":I
    add-int v8, p8, p6

    .line 976
    .local v8, "bottom":I
    const/4 v11, 0x0

    .line 977
    .local v11, "clampedX":Z
    move/from16 v0, v17

    if-le v2, v0, :cond_c

    .line 978
    move/from16 v2, v17

    .line 979
    const/4 v11, 0x1

    .line 985
    :cond_4
    :goto_4
    const/4 v12, 0x0

    .line 986
    .local v12, "clampedY":Z
    if-le v3, v8, :cond_d

    .line 987
    move v3, v8

    .line 988
    const/4 v12, 0x1

    .line 994
    :cond_5
    :goto_5
    if-eqz v12, :cond_6

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 998
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->onOverScrolled(IIZZ)V

    .line 1000
    if-nez v11, :cond_7

    if-eqz v12, :cond_e

    :cond_7
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 952
    .end local v2    # "newScrollX":I
    .end local v3    # "newScrollY":I
    .end local v8    # "bottom":I
    .end local v9    # "canScrollHorizontal":Z
    .end local v10    # "canScrollVertical":Z
    .end local v11    # "clampedX":Z
    .end local v12    # "clampedY":Z
    .end local v13    # "left":I
    .end local v14    # "overScrollHorizontal":Z
    .end local v16    # "overScrollVertical":Z
    .end local v17    # "right":I
    .end local v18    # "top":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_0

    .line 954
    .restart local v9    # "canScrollHorizontal":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 955
    .restart local v10    # "canScrollVertical":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    .line 957
    .restart local v14    # "overScrollHorizontal":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_3

    .line 980
    .restart local v2    # "newScrollX":I
    .restart local v3    # "newScrollY":I
    .restart local v8    # "bottom":I
    .restart local v11    # "clampedX":Z
    .restart local v13    # "left":I
    .restart local v16    # "overScrollVertical":Z
    .restart local v17    # "right":I
    .restart local v18    # "top":I
    :cond_c
    if-ge v2, v13, :cond_4

    .line 981
    move v2, v13

    .line 982
    const/4 v11, 0x1

    goto :goto_4

    .line 989
    .restart local v12    # "clampedY":Z
    :cond_d
    move/from16 v0, v18

    if-ge v3, v0, :cond_5

    .line 990
    move/from16 v3, v18

    .line 991
    const/4 v12, 0x1

    goto :goto_5

    .line 1000
    :cond_e
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1107
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1108
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v2

    .line 1110
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1111
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1112
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 1113
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1114
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1115
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1116
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1125
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1127
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1107
    goto :goto_0

    .line 1120
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1121
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1122
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1559
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1564
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1565
    return-void

    .line 1562
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1607
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1607
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1610
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    .line 605
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 606
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    .line 1616
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1617
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1743
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1744
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->clamp(III)I

    move-result p1

    .line 1745
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->clamp(III)I

    move-result p2

    .line 1746
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1747
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1750
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 451
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->requestLayout()V

    .line 454
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 214
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    .line 416
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    .line 469
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1298
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1302
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1303
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1304
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 1305
    .local v1, "height":I
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1306
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1307
    .local v4, "maxY":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    .line 1308
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1310
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1311
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    .line 1318
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScroll:J

    goto :goto_0

    .line 1313
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1314
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1316
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    .line 1329
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll()V

    .line 229
    return-void
.end method
