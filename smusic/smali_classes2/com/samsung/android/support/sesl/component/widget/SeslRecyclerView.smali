.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.super Landroid/view/ViewGroup;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChild;
.implements Lcom/samsung/android/support/sesl/core/view/SeslScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SimpleOnItemTouchListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field public static final EXPANDABLE_VIEW_TYPE_CHILD:I = 0x2

.field public static final EXPANDABLE_VIEW_TYPE_GROUP:I = 0x1

.field private static final FOCUS_MOVE_DOWN:I = 0x1

.field private static final FOCUS_MOVE_FULL_DOWN:I = 0x3

.field private static final FOCUS_MOVE_FULL_UP:I = 0x2

.field private static final FOCUS_MOVE_UP:I = 0x0

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final MIN_PREFETCH_TIME_NANOS:J

.field private static final MOTION_EVENT_ACTION_PEN_DOWN:I = 0xd3

.field private static final MOTION_EVENT_ACTION_PEN_MOVE:I = 0xd5

.field private static final MOTION_EVENT_ACTION_PEN_UP:I = 0xd4

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslRecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field static sFrameIntervalNanos:J

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

.field mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

.field mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private final mAutoHide:Ljava/lang/Runnable;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

.field mClipToPadding:Z

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

.field private mFastScrollerEnabled:Z

.field private mFastScrollerEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutStart:Z

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopLastState:I

.field private mGoToTopMoved:Z

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field private mGoToToping:Z

.field mHasFixedSize:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/os/Handler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveringEnabled:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlKeyPressed:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenMoveEvent:Z

.field private mIsGoToTopShown:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenDragBlockEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsPenSelectionEnabled:Z

.field private mIsSendHoverScrollState:Z

.field mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private mNeedsHoverScroll:Z

.field private final mNestedOffsets:[I

.field private mNewTextViewHoverState:Z

.field private final mObserver:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;

.field private mOldHoverScrollDirection:I

.field private mOldTextViewHoverState:Z

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

.field private mPenDistanceFromTrackedChildTop:I

.field private mPenDragBlockBottom:I

.field private mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mPenDragBlockLeft:I

.field private mPenDragBlockRect:Landroid/graphics/Rect;

.field private mPenDragBlockRight:I

.field private mPenDragBlockTop:I

.field private mPenDragEndX:I

.field private mPenDragEndY:I

.field private mPenDragScrollTimeInterval:J

.field private mPenDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDragSelectedViewPosition:I

.field private mPenDragStartX:I

.field private mPenDragStartY:I

.field private mPenTrackedChild:Landroid/view/View;

.field private mPenTrackedChildPosition:I

.field private final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

.field mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSizeChnage:Z

.field final mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

.field mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    new-array v0, v1, [I

    const v3, 0x1010436

    aput v3, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 181
    new-array v0, v1, [I

    const v3, 0x10100eb

    aput v3, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 276
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 435
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->MIN_PREFETCH_TIME_NANOS:J

    .line 436
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sFrameIntervalNanos:J

    .line 826
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$4;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$4;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_0
    move v0, v2

    .line 188
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 873
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 874
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 878
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 881
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mObserver:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;

    .line 281
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    .line 300
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    .line 314
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 336
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    .line 389
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 430
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollFactor:F

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    .line 433
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    .line 437
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    .line 439
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsChanged:Z

    .line 447
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimatorListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollConsumed:[I

    .line 460
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectionEnabled:Z

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 489
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSizeChnage:Z

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToping:Z

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 524
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowGTPAtFirstTime:Z

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    .line 532
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->GO_TO_TOP_HIDE:I

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutStart:Z

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsGoToTopShown:Z

    .line 545
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->HOVERSCROLL_SPEED:F

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoveringEnabled:Z

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenHovered:Z

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoveredByMouse:Z

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAlwaysDisableHoverHighlight:Z

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOldTextViewHoverState:Z

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollSpeed:I

    .line 579
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionDurationTime:J

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionCurrentTime:J

    .line 581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 582
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollTimeInterval:J

    .line 583
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragScrollTimeInterval:J

    .line 585
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 586
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->HOVERSCROLL_DELAY:I

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollEnable:Z

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    .line 632
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mExtraPaddingInBottomHoverArea:I

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCloseChildSetted:Z

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOldHoverScrollDirection:I

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildByTop:Landroid/view/View;

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildPositionByTop:I

    .line 641
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDistanceFromCloseChildTop:I

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildByBottom:Landroid/view/View;

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildPositionByBottom:I

    .line 644
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDistanceFromCloseChildBottom:I

    .line 649
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 816
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 837
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoProcessCallback:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;

    .line 3006
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$11;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 3012
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$12;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 3018
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$13;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    .line 882
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    .line 884
    if-eqz p2, :cond_3

    .line 885
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->CLIP_TO_PADDING_ATTR:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 886
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    .line 887
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 891
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollContainer(Z)V

    .line 892
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setFocusableInTouchMode(Z)V

    .line 894
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    .line 895
    .local v10, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    .line 896
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinFlingVelocity:I

    .line 897
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setWillNotDraw(Z)V

    .line 900
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimatorListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->setListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->setHostView(Landroid/view/View;)V

    .line 903
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->initAdapterManager()V

    .line 904
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->initChildrenHelper()V

    .line 906
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 908
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setImportantForAccessibility(I)V

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 912
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 913
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAccessibilityDelegateCompat(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;)V

    .line 916
    const/4 v8, 0x1

    .line 918
    .local v8, "nestedScrollingEnabled":Z
    if-eqz p2, :cond_5

    .line 919
    const/4 v5, 0x0

    .line 920
    .local v5, "defStyleRes":I
    sget-object v0, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 922
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView_seslLayoutManager:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "layoutManagerName":Ljava/lang/String;
    sget v0, Lcom/samsung/android/support/sesl/R$styleable;->SeslRecyclerView_android_descendantFocusability:I

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 925
    .local v7, "descendantFocusability":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 926
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setDescendantFocusability(I)V

    .line 928
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 929
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 931
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 932
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 934
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 935
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 942
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "descendantFocusability":I
    :cond_2
    :goto_2
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 946
    .local v9, "r":Landroid/content/res/Resources;
    sget v0, Lcom/samsung/android/support/sesl/R$drawable;->sesl_pen_block_selection:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 947
    sget v0, Lcom/samsung/android/support/sesl/R$drawable;->sesl_list_go_to_top:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 954
    const/4 v0, 0x1

    const/high16 v1, 0x41c80000    # 25.0f

    .line 956
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 954
    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    .line 957
    const/4 v0, 0x1

    const/high16 v1, 0x41c80000    # 25.0f

    .line 959
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 957
    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    .line 960
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_go_to_top_scrollable_view_gap:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    .line 961
    sget v0, Lcom/samsung/android/support/sesl/R$dimen;->sesl_go_to_top_scrollable_view_size:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopSize:I

    .line 963
    return-void

    .line 889
    .end local v8    # "nestedScrollingEnabled":Z
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    goto/16 :goto_0

    .line 898
    .restart local v10    # "vc":Landroid/view/ViewConfiguration;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 938
    .restart local v8    # "nestedScrollingEnabled":Z
    :cond_5
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setDescendantFocusability(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->HOVERSCROLL_SPEED:F

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildByBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOldHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOldHoverScrollDirection:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCloseChildSetted:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCloseChildSetted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDistanceFromCloseChildBottom:I

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildPositionByBottom:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildByTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDistanceFromCloseChildTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mCloseChildPositionByTop:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenHovered:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->updateLongPressMultiSelection(IIZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->autoHide(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$4500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$4700()J
    .locals 2

    .prologue
    .line 172
    sget-wide v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->MIN_PREFETCH_TIME_NANOS:J

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToping:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToping:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showTopEdge()V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setGroupViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    return-object v0
.end method

.method private addAnimatingView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 1613
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1614
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 1615
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1616
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1618
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1624
    :goto_1
    return-void

    .line 1614
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1619
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 1620
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1622
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4945
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4946
    if-eqz p5, :cond_0

    .line 4947
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 4949
    :cond_0
    if-eq p1, p2, :cond_2

    .line 4950
    if-eqz p6, :cond_1

    .line 4951
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 4953
    :cond_1
    iput-object p2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 4955
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 4956
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 4957
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4958
    iput-object p1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 4960
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4961
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postAnimationRunner()V

    .line 4963
    :cond_3
    return-void
.end method

.method private autoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    .line 3048
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_1

    .line 3061
    :cond_0
    :goto_0
    return-void

    .line 3052
    :cond_1
    if-nez p1, :cond_2

    .line 3053
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isFastScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3054
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3055
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3057
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3059
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private canScrollDown()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 13778
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    .line 13780
    .local v2, "count":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v5, :cond_0

    .line 13781
    const-string v3, "SeslRecyclerView"

    const-string v5, "No adapter attached; skipping canScrollDown"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13793
    :goto_0
    return v4

    .line 13785
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v0, v3

    .line 13788
    .local v0, "canScrollDown":Z
    :goto_1
    if-nez v0, :cond_1

    if-lez v2, :cond_1

    .line 13789
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 13790
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    move v0, v3

    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_2
    move v4, v0

    .line 13793
    goto :goto_0

    .end local v0    # "canScrollDown":Z
    :cond_2
    move v0, v4

    .line 13785
    goto :goto_1

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    move v0, v4

    .line 13790
    goto :goto_2
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 13763
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 13766
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 13767
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 13768
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 13769
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v0, v2

    .line 13773
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1
    move v0, v3

    .line 13763
    goto :goto_0

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v3

    .line 13769
    goto :goto_1
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 4129
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resetTouch()V

    .line 4130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 4131
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    .line 13680
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 13683
    :cond_0
    :goto_0
    return v1

    .line 13681
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 13683
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    .line 13684
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 998
    if-eqz p2, :cond_0

    .line 999
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1000
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1004
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1006
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1011
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 1013
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 1015
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 1016
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1017
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 1027
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1028
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 1047
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 1008
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 1018
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v4

    .line 1020
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 1021
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v5

    .line 1022
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1023
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1029
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v4

    .line 1030
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1032
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 1033
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1035
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 1036
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1038
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 1039
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1041
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 1042
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private didChildRangeChange(II)Z
    .locals 3
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4897
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4898
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-eq v2, p2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    .line 4344
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 4345
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 4346
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4347
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 4348
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4349
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4350
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4352
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    .prologue
    .line 4615
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->assertLayoutStep(I)V

    .line 4616
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 4617
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 4618
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->clear()V

    .line 4619
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 4620
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->saveFocusInfo()V

    .line 4621
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 4622
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsChanged:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, v12, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    .line 4623
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsChanged:Z

    iput-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 4624
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 4625
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    .line 4626
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4628
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_3

    .line 4630
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v2

    .line 4631
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 4632
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v11, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v5

    .line 4633
    .local v5, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-nez v11, :cond_2

    .line 4631
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4622
    .end local v2    # "count":I
    .end local v5    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v6    # "i":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 4636
    .restart local v2    # "count":I
    .restart local v5    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v6    # "i":I
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 4638
    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v13

    .line 4639
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    .line 4637
    invoke-virtual {v11, v12, v5, v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 4640
    .local v0, "animationInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v11, v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4641
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4642
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4643
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v8

    .line 4651
    .local v8, "key":J
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToOldChangeHolders(JLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_2

    .line 4655
    .end local v0    # "animationInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v2    # "count":I
    .end local v5    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v6    # "i":I
    .end local v8    # "key":J
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v11, :cond_9

    .line 4662
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->saveOldPositions()V

    .line 4663
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v3, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4664
    .local v3, "didStructureChange":Z
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4666
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 4667
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v3, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4669
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 4670
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v11, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4671
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v7

    .line 4672
    .local v7, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4669
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4675
    :cond_5
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v11, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->isInPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 4676
    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v4

    .line 4677
    .local v4, "flags":I
    const/16 v11, 0x2000

    .line 4678
    invoke-virtual {v7, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    .line 4679
    .local v10, "wasHidden":Z
    if-nez v10, :cond_6

    .line 4680
    or-int/lit16 v4, v4, 0x1000

    .line 4682
    :cond_6
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 4683
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    .line 4682
    invoke-virtual {v11, v12, v7, v4, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 4684
    .restart local v0    # "animationInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v10, :cond_7

    .line 4685
    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 4687
    :cond_7
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v11, v7, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 4692
    .end local v0    # "animationInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "flags":I
    .end local v7    # "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v10    # "wasHidden":Z
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->clearOldPositions()V

    .line 4696
    .end local v3    # "didStructureChange":Z
    .end local v6    # "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 4697
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 4698
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v12, 0x2

    iput v12, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 4699
    return-void

    .line 4694
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4706
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 4707
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 4708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->assertLayoutStep(I)V

    .line 4709
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->consumeUpdatesInOnePass()V

    .line 4710
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    .line 4711
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 4714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 4715
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onLayoutChildren(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 4717
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    .line 4721
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 4722
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 4723
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 4724
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 4725
    return-void

    :cond_0
    move v0, v1

    .line 4721
    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4732
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->assertLayoutStep(I)V

    .line 4733
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 4734
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 4735
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 4736
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 4740
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 4741
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 4742
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4740
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 4745
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 4746
    .local v10, "key":J
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .line 4747
    invoke-virtual {v0, v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 4748
    .local v7, "animationInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->getFromOldChangeHolders(J)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 4749
    .local v1, "oldChangeViewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4760
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->isDisappearing(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v5

    .line 4762
    .local v5, "oldDisappearing":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->isDisappearing(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v6

    .line 4763
    .local v6, "newDisappearing":Z
    if-eqz v5, :cond_1

    if-ne v1, v2, :cond_1

    .line 4765
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToPostLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 4767
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->popFromPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    .line 4770
    .local v3, "preInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToPostLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4771
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->popFromPostLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 4772
    .local v4, "postInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v3, :cond_2

    .line 4773
    invoke-direct {p0, v10, v11, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->handleMissingPreInfoForChangeError(JLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 4775
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 4780
    .end local v3    # "preInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v4    # "postInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToPostLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 4785
    .end local v1    # "oldChangeViewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v7    # "animationInfo":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v10    # "key":J
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoProcessCallback:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->process(Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore$ProcessCallback;)V

    .line 4788
    .end local v8    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 4789
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    .line 4790
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4791
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 4793
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    .line 4794
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iput-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 4795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 4796
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4798
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 4799
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 4800
    invoke-virtual {p0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 4801
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->clear()V

    .line 4802
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4803
    invoke-virtual {p0, v12, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchOnScrolled(II)V

    .line 4805
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->recoverFocusFromState()V

    .line 4806
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resetFocusInfo()V

    .line 4807
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 3239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3240
    .local v0, "action":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    .line 3241
    if-nez v0, :cond_2

    .line 3243
    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3256
    :cond_0
    if-eqz v0, :cond_5

    .line 3257
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3258
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 3259
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3260
    .local v2, "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3261
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3266
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 3245
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V

    .line 3246
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 3248
    :cond_3
    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    goto :goto_1

    .line 3258
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3266
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 3222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3223
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 3224
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3227
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3228
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3229
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3230
    .local v2, "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 3231
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3232
    const/4 v4, 0x1

    .line 3235
    .end local v2    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    :goto_1
    return v4

    .line 3228
    .restart local v2    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3235
    .end local v2    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 5740
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5741
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    add-int v1, v0, v2

    .line 5742
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 5743
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 5744
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3155
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollY()I

    move-result v1

    .line 3156
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3158
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3160
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3161
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 3164
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3165
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3166
    return-void
.end method

.method private findFirstChildPosition()I
    .locals 3

    .prologue
    .line 13797
    const/4 v0, 0x0

    .line 13798
    .local v0, "firstPosition":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v1, :cond_2

    .line 13799
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 13803
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 13804
    const/4 v0, 0x0

    .line 13806
    :cond_1
    return v0

    .line 13800
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    .line 13801
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v1, v2

    goto :goto_0
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 10
    .param p1, "into"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 4871
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 4872
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 4873
    aput v7, p1, v8

    .line 4874
    aput v7, p1, v9

    .line 4894
    :goto_0
    return-void

    .line 4877
    :cond_0
    const v4, 0x7fffffff

    .line 4878
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 4879
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 4880
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 4881
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4879
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4884
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 4885
    .local v5, "pos":I
    if-ge v5, v4, :cond_3

    .line 4886
    move v4, v5

    .line 4888
    :cond_3
    if-le v5, v3, :cond_1

    .line 4889
    move v3, v5

    goto :goto_2

    .line 4892
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_4
    aput v4, p1, v8

    .line 4893
    aput v3, p1, v9

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 5430
    if-nez p0, :cond_0

    .line 5431
    const/4 v0, 0x0

    .line 5433
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    goto :goto_0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5824
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 5825
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 5826
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 5827
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 5828
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 5829
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 5826
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 5830
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4597
    .local v1, "lastKnownId":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4598
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 4599
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 4600
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 4601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    .line 4604
    .end local v0    # "id":I
    :cond_1
    return v1
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1056
    .end local p2    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 1053
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 4181
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 4182
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4183
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4186
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4185
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollFactor:F

    .line 4191
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollFactor:F

    :goto_0
    return v1

    .line 4188
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;
    .locals 1

    .prologue
    .line 13574
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 13575
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    .line 13577
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 9
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 4827
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 4828
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4829
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4830
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 4831
    .local v2, "other":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-ne v2, p3, :cond_1

    .line 4828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4834
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 4835
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 4836
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4837
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4841
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4849
    .end local v2    # "other":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "otherKey":J
    :cond_3
    const-string v6, "SeslRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    .prologue
    .line 2002
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 2003
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2004
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 2005
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2003
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2008
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2009
    const/4 v3, 0x1

    .line 2012
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    .line 1157
    return-void
.end method

.method private isInDialog()Z
    .locals 4

    .prologue
    .line 13688
    const/4 v1, 0x0

    .line 13689
    .local v1, "isInDialog":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v2, :cond_1

    .line 13690
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 13691
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v2, :cond_0

    .line 13692
    const/4 v2, 0x0

    .line 13702
    :goto_0
    return v2

    .line 13694
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 13695
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 13696
    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 13697
    const/4 v1, 0x0

    :cond_1
    :goto_1
    move v2, v1

    .line 13702
    goto :goto_0

    .line 13699
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2717
    if-eqz p2, :cond_0

    if-ne p2, p0, :cond_2

    :cond_0
    move v2, v3

    .line 2737
    :cond_1
    :goto_0
    return v2

    .line 2720
    :cond_2
    if-eqz p1, :cond_1

    .line 2724
    if-eq p3, v5, :cond_3

    if-ne p3, v2, :cond_8

    .line 2725
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 2726
    .local v1, "rtl":Z
    :goto_1
    if-ne p3, v5, :cond_4

    move v3, v2

    :cond_4
    xor-int/2addr v3, v1

    if-eqz v3, :cond_6

    const/16 v0, 0x42

    .line 2728
    .local v0, "absHorizontal":I
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2731
    if-ne p3, v5, :cond_7

    .line 2732
    const/16 v2, 0x82

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0

    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_5
    move v1, v3

    .line 2725
    goto :goto_1

    .line 2726
    .restart local v1    # "rtl":Z
    :cond_6
    const/16 v0, 0x11

    goto :goto_2

    .line 2734
    .restart local v0    # "absHorizontal":I
    :cond_7
    const/16 v2, 0x21

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0

    .line 2737
    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2746
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2747
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2748
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2749
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2750
    sparse-switch p3, :sswitch_data_0

    .line 2768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2752
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    .line 2764
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2752
    goto :goto_0

    .line 2756
    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 2760
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    .line 2764
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    .line 2750
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private isSupportGotoTop()Z
    .locals 1

    .prologue
    .line 3003
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkBackIsRunning()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2994
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2995
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2996
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2997
    .local v1, "enabledServices":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "(?i).*TalkBackService.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2999
    .end local v1    # "enabledServices":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private multiSelection(IIIIZ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "contentTop"    # I
    .param p4, "contentBottom"    # I
    .param p5, "needToScroll"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3451
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    if-eqz v0, :cond_7

    .line 3454
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    if-eqz v0, :cond_3

    .line 3455
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 3456
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3457
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 3459
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3460
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3461
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3463
    const-string v0, "SeslRecyclerView"

    const-string v1, "multiSelection, mPenTrackedChild is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 3465
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 3596
    :cond_0
    :goto_0
    return-void

    .line 3470
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    if-eqz v0, :cond_2

    .line 3471
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 3474
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 3475
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 3476
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 3479
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    if-nez v0, :cond_5

    .line 3480
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 3481
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3482
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    if-eqz v0, :cond_4

    .line 3483
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 3485
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 3488
    :cond_5
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 3489
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3491
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-gez v0, :cond_a

    .line 3492
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3497
    :cond_6
    :goto_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    :goto_2
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 3498
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_c

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    :goto_3
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 3499
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    if-le v0, v1, :cond_d

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    :goto_4
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 3500
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    if-le v0, v1, :cond_e

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    :goto_5
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 3542
    const/4 p5, 0x1

    .line 3544
    :cond_7
    if-eqz p5, :cond_0

    .line 3545
    if-lt p2, p3, :cond_f

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v0, p3

    if-gt p2, v0, :cond_f

    .line 3546
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_8

    .line 3547
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_8

    .line 3551
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3555
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3557
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3558
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3592
    :cond_9
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_0

    .line 3593
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 3493
    :cond_a
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-le v0, p4, :cond_6

    .line 3494
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_1

    .line 3497
    :cond_b
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    goto :goto_2

    .line 3498
    :cond_c
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_3

    .line 3499
    :cond_d
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    goto :goto_4

    .line 3500
    :cond_e
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    goto :goto_5

    .line 3560
    :cond_f
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v0, p4, v0

    if-lt p2, v0, :cond_11

    if-gt p2, p4, :cond_11

    .line 3561
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_10

    .line 3562
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3565
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_10

    .line 3566
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3570
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3572
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3573
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 3576
    :cond_11
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_12

    .line 3577
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3580
    :cond_12
    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3581
    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3582
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3585
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3586
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3589
    :cond_13
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    goto :goto_6
.end method

.method private multiSelectionEnd(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 3599
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 3600
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;->onMultiSelectStop(II)V

    .line 3602
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 3603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 3604
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3605
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3607
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 3608
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3609
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 3610
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3612
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 3613
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 3614
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 3615
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 3617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3618
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 3620
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_1

    .line 3621
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 3625
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3628
    :cond_2
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 13718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 13719
    .local v0, "action":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 13722
    .local v1, "toolType":I
    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 13723
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenHovered:Z

    .line 13729
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_5

    .line 13730
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoveredByMouse:Z

    .line 13753
    :cond_2
    :goto_2
    return-void

    .line 13724
    :cond_3
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 13725
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenHovered:Z

    goto :goto_0

    :cond_4
    move v2, v3

    .line 13730
    goto :goto_1

    .line 13733
    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoveredByMouse:Z

    .line 13736
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAlwaysDisableHoverHighlight:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-eq v3, v2, :cond_2

    .line 13741
    if-ne v0, v5, :cond_6

    .line 13742
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    .line 13743
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 13748
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isInDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13749
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 13750
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 4134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 4135
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 4137
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 4138
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 4139
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 4140
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 4142
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 4137
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13846
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v4, :cond_1

    .line 13847
    const-string v3, "SeslRecyclerView"

    const-string v4, "No adapter attached; skipping pageScroll"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13884
    :cond_0
    :goto_0
    return v2

    .line 13850
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 13851
    .local v0, "itemCount":I
    if-lez v0, :cond_0

    .line 13855
    const/4 v1, -0x1

    .line 13856
    .local v1, "pos":I
    if-nez p1, :cond_3

    .line 13857
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    sub-int v1, v2, v4

    .line 13868
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_6

    .line 13869
    add-int/lit8 v1, v0, -0x1

    .line 13874
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 13875
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$16;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$16;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 13884
    goto :goto_0

    .line 13858
    :cond_3
    if-ne p1, v3, :cond_4

    .line 13859
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findLastVisibleItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    add-int v1, v2, v4

    goto :goto_1

    .line 13860
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 13861
    const/4 v1, 0x0

    goto :goto_1

    .line 13862
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 13863
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 13870
    :cond_6
    if-gez v1, :cond_2

    .line 13871
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private playGotoToFadeIn()V
    .locals 4

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3045
    :goto_0
    return-void

    .line 3040
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3041
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3043
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3044
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3026
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3034
    :goto_0
    return-void

    .line 3029
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3030
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3032
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3033
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4443
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 4446
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->reset()V

    .line 4447
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->markKnownViewsInvalid()V

    .line 4448
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onItemsChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 4453
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4454
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->preProcess()V

    .line 4458
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_5

    :cond_1
    move v0, v2

    .line 4459
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 4462
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 4463
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    .line 4465
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    iput-boolean v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    .line 4466
    return-void

    .line 4456
    .end local v0    # "animationTypeSupported":Z
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 4458
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_6
    move v3, v1

    .line 4462
    goto :goto_2

    :cond_7
    move v2, v1

    .line 4465
    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2447
    const/4 v0, 0x0

    .line 2448
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 2449
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureLeftGlow()V

    .line 2450
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2451
    const/4 v0, 0x1

    .line 2458
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 2459
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 2460
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2461
    const/4 v0, 0x1

    .line 2468
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    .line 2469
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postInvalidateOnAnimation()V

    .line 2471
    :cond_3
    return-void

    .line 2452
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 2453
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureRightGlow()V

    .line 2454
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2455
    const/4 v0, 0x1

    goto :goto_0

    .line 2462
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 2463
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureBottomGlow()V

    .line 2464
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2465
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private recoverFocusFromState()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 4562
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4593
    :cond_0
    :goto_0
    return-void

    .line 4566
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4567
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 4568
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4572
    .end local v2    # "focusedChild":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .line 4573
    .local v1, "focusTarget":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 4574
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findViewHolderForAdapterPosition(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 4576
    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-wide v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4577
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-wide v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findViewHolderForItemId(J)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 4579
    :cond_4
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4580
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4585
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4586
    .local v3, "viewToFocus":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 4587
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4588
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4589
    move-object v3, v0

    .line 4592
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 2474
    const/4 v0, 0x0

    .line 2475
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2476
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2477
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 2480
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 2481
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2482
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2485
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 2486
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2487
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2490
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 2491
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2492
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2495
    :cond_3
    if-eqz v0, :cond_4

    .line 2496
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postInvalidateOnAnimation()V

    .line 2498
    :cond_4
    return-void
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 4556
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemId:J

    .line 4557
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    .line 4558
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    .line 4559
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4124
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopNestedScroll()V

    .line 4125
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->releaseGlows()V

    .line 4126
    return-void
.end method

.method private saveFocusInfo()V
    .locals 5

    .prologue
    .line 4539
    const/4 v0, 0x0

    .line 4540
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 4541
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 4544
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 4545
    .local v1, "focusedVh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :goto_0
    if-nez v1, :cond_2

    .line 4546
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resetFocusInfo()V

    .line 4553
    :goto_1
    return-void

    .line 4544
    .end local v1    # "focusedVh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 4548
    .restart local v1    # "focusedVh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_2
    iput-wide v2, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemId:J

    .line 4549
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    .line 4550
    :goto_3
    iput v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    .line 4551
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    goto :goto_1

    .line 4548
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 4550
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    goto :goto_3
.end method

.method private setAdapterInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 1365
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mObserver:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;)V

    .line 1367
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1369
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 1371
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 1378
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 1379
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1380
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1383
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clear()V

    .line 1385
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->reset()V

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 1387
    .local v0, "oldAdapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 1388
    if-eqz p1, :cond_5

    .line 1389
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mObserver:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->registerAdapterDataObserver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;)V

    .line 1390
    invoke-virtual {p1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1392
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    .line 1393
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onAdapterChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 1395
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->onAdapterChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Z)V

    .line 1396
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 1397
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->markKnownViewsInvalid()V

    .line 1399
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_7

    .line 1400
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->setHostViewInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1402
    :cond_7
    return-void
.end method

.method private setGroupViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "groupViewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->setGroupViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 805
    :cond_0
    return-void
.end method

.method private setupGoToTop(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    .line 3064
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-nez v7, :cond_0

    .line 3152
    :goto_0
    return-void

    .line 3068
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3070
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    if-eq p1, v7, :cond_1

    .line 3071
    const-string v7, "SeslRecyclerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setup GOTOTOP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mGoToTopLastState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    :cond_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3075
    const/4 p1, 0x0

    .line 3078
    :cond_2
    const/4 v7, -0x1

    if-ne p1, v7, :cond_e

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSizeChnage:Z

    if-eqz v7, :cond_e

    .line 3079
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollDown()Z

    move-result v7

    if-nez v7, :cond_d

    const/4 p1, 0x0

    .line 3085
    :cond_3
    :goto_1
    if-eqz p1, :cond_10

    .line 3086
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3091
    :cond_4
    :goto_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    if-nez v7, :cond_5

    if-nez p1, :cond_5

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    if-eqz v7, :cond_5

    .line 3092
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 3095
    :cond_5
    const/4 v7, 0x2

    if-eq p1, v7, :cond_6

    .line 3096
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3099
    :cond_6
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    .line 3101
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v6

    .line 3102
    .local v6, "w":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    .line 3103
    .local v3, "h":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .line 3104
    .local v1, "contentW":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v7

    div-int/lit8 v8, v1, 0x2

    add-int v0, v7, v8

    .line 3106
    .local v0, "centerX":I
    const/4 v7, 0x2

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 3107
    .local v4, "locOnScr":[I
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLocationInWindow([I)V

    .line 3108
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3111
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const/4 v7, 0x0

    aget v7, v4, v7

    if-gez v7, :cond_7

    .line 3112
    const/4 v7, 0x0

    aget v7, v4, v7

    neg-int v5, v7

    .line 3113
    .local v5, "overlappedW":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v7

    if-le v5, v7, :cond_7

    .line 3114
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 3119
    .end local v5    # "overlappedW":I
    :cond_7
    const/4 v7, 0x0

    aget v7, v4, v7

    add-int/2addr v7, v6

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_8

    .line 3120
    const/4 v7, 0x0

    aget v7, v4, v7

    add-int/2addr v7, v6

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v5, v7, v8

    .line 3121
    .restart local v5    # "overlappedW":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v7

    if-le v5, v7, :cond_8

    .line 3122
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v0, v7

    .line 3126
    .end local v5    # "overlappedW":I
    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 3141
    :cond_9
    :goto_3
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 3142
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    .line 3144
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3146
    const/4 v7, 0x1

    if-ne p1, v7, :cond_c

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSizeChnage:Z

    if-eqz v7, :cond_c

    .line 3147
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 3150
    :cond_c
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSizeChnage:Z

    .line 3151
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    goto/16 :goto_0

    .line 3080
    .end local v0    # "centerX":I
    .end local v1    # "contentW":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "h":I
    .end local v4    # "locOnScr":[I
    .end local v6    # "w":I
    :cond_d
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopLastState:I

    goto/16 :goto_1

    .line 3081
    :cond_e
    const/4 v7, -0x1

    if-ne p1, v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollDown()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3082
    :cond_f
    const/4 p1, 0x1

    goto/16 :goto_1

    .line 3087
    :cond_10
    const/4 v7, 0x1

    if-eq p1, v7, :cond_4

    .line 3088
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 3128
    .restart local v0    # "centerX":I
    .restart local v1    # "contentW":I
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "h":I
    .restart local v4    # "locOnScr":[I
    .restart local v6    # "w":I
    :pswitch_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 3129
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 3133
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3135
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopSize:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v0, v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopSize:I

    sub-int v9, v3, v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopSize:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v0

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    sub-int v11, v3, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 3106
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 13756
    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->setHoveringSpenIcon(Landroid/view/MotionEvent;II)V

    .line 13757
    const/4 v0, 0x1

    return v0
.end method

.method private showTopEdge()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3832
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 3833
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3834
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate(IIII)V

    .line 3835
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->stop()V

    .line 2419
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2422
    :cond_0
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fromUserTouch"    # Z

    .prologue
    .line 3283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v10

    .line 3284
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    if-eqz v2, :cond_2

    .line 3285
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 3286
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3287
    move/from16 v0, p1

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v2, :cond_0

    .line 3289
    move/from16 v0, p1

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v2, :cond_0

    .line 3291
    const-string v2, "SeslRecyclerView"

    const-string/jumbo v3, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 3444
    :goto_0
    return-void

    .line 3297
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v2, :cond_1

    .line 3298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    .line 3301
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 3302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 3305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 3308
    :cond_2
    const/4 v9, 0x0

    .line 3309
    .local v9, "contentTop":I
    const/4 v8, 0x0

    .line 3311
    .local v8, "contentBottom":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v2, :cond_4

    .line 3312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 3313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v3

    .line 3319
    :goto_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 3320
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3322
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-gez v2, :cond_5

    .line 3323
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3328
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v16

    .line 3329
    .local v16, "touchedView":Landroid/view/View;
    if-nez v16, :cond_6

    .line 3330
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v16

    .line 3331
    if-nez v16, :cond_6

    .line 3332
    const-string v2, "SeslRecyclerView"

    const-string/jumbo v3, "updateLongPressMultiSelection, touchedView is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3315
    .end local v16    # "touchedView":Landroid/view/View;
    :cond_4
    const/4 v9, 0x0

    .line 3316
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v8

    goto :goto_1

    .line 3324
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-le v2, v8, :cond_3

    .line 3325
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_2

    .line 3336
    .restart local v16    # "touchedView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v15

    .line 3337
    .local v15, "touchedPosition":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_9

    .line 3338
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3347
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    if-ge v2, v3, :cond_a

    .line 3348
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 3349
    .local v14, "startPosition":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3355
    .local v11, "endPosition":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    if-ge v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 3356
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-ge v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    :goto_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 3357
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    if-le v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    :goto_6
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 3358
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    if-le v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 3360
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v10, :cond_10

    .line 3361
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3362
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_8

    .line 3363
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3365
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 3366
    const/4 v13, 0x0

    .line 3367
    .local v13, "needSelected":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v14, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v2, v11, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    if-eq v2, v3, :cond_7

    .line 3369
    const/4 v13, 0x1

    .line 3372
    :cond_7
    if-eqz v13, :cond_f

    .line 3373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3374
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v2, :cond_8

    .line 3377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3378
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v6

    move-object/from16 v3, p0

    .line 3377
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;IJ)V

    .line 3360
    .end local v13    # "needSelected":Z
    :cond_8
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 3340
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "endPosition":I
    .end local v12    # "i":I
    .end local v14    # "startPosition":I
    :cond_9
    const-string v2, "SeslRecyclerView"

    const-string/jumbo v3, "touchedPosition is NO_POSITION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3351
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3352
    .restart local v14    # "startPosition":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .restart local v11    # "endPosition":I
    goto/16 :goto_3

    .line 3355
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    goto/16 :goto_4

    .line 3356
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    goto/16 :goto_5

    .line 3357
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    goto/16 :goto_6

    .line 3358
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    goto/16 :goto_7

    .line 3382
    .restart local v4    # "child":Landroid/view/View;
    .restart local v12    # "i":I
    .restart local v13    # "needSelected":Z
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v2, :cond_8

    .line 3386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3387
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v6

    move-object/from16 v3, p0

    .line 3386
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;IJ)V

    goto :goto_9

    .line 3394
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "needSelected":Z
    :cond_10
    if-eqz p3, :cond_12

    .line 3395
    add-int/lit8 v2, v9, 0x0

    move/from16 v0, p2

    if-lt v0, v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v2, v9

    move/from16 v0, p2

    if-gt v0, v2, :cond_13

    .line 3396
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v2, :cond_11

    .line 3397
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v2, :cond_11

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3406
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3408
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3443
    :cond_12
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 3411
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v8, v2

    move/from16 v0, p2

    if-lt v0, v2, :cond_15

    move/from16 v0, p2

    if-gt v0, v8, :cond_15

    .line 3412
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v2, :cond_14

    .line 3413
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v2, :cond_14

    .line 3417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3421
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 3427
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v2, :cond_16

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3431
    :cond_16
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3432
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3433
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3440
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    goto/16 :goto_a
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 2528
    if-gez p1, :cond_4

    .line 2529
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureLeftGlow()V

    .line 2530
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2536
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 2537
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 2538
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2544
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 2545
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postInvalidateOnAnimation()V

    .line 2547
    :cond_3
    return-void

    .line 2531
    :cond_4
    if-lez p1, :cond_0

    .line 2532
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureRightGlow()V

    .line 2533
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2539
    :cond_5
    if-lez p2, :cond_1

    .line 2540
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureBottomGlow()V

    .line 2541
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2806
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onAddFocusables(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2807
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2809
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;

    .prologue
    .line 1777
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;I)V

    .line 1778
    return-void
.end method

.method public addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setWillNotDraw(Z)V

    .line 1755
    :cond_1
    if-gez p2, :cond_2

    .line 1756
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 1761
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 1762
    return-void

    .line 1758
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    return-void
.end method

.method public addOnItemTouchListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3207
    return-void
.end method

.method public addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    return-void
.end method

.method animateAppearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "itemHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4927
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4928
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->animateAppearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4929
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postAnimationRunner()V

    .line 4931
    :cond_0
    return-void
.end method

.method animateDisappearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4935
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 4936
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4937
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->animateDisappearance(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4938
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postAnimationRunner()V

    .line 4940
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2882
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2883
    if-nez p1, :cond_0

    .line 2884
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2887
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2890
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2900
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2901
    if-nez p1, :cond_0

    .line 2902
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2905
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2907
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    .line 2908
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2914
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 5292
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    .line 5293
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 5292
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5118
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->checkLayoutParams(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 5172
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5173
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5174
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5175
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5176
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 5173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5179
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clearOldPositions()V

    .line 5180
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1483
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1869
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2129
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2104
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2152
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2201
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2177
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 2180
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2224
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 2501
    const/4 v0, 0x0

    .line 2502
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2504
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2505
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 2507
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2509
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2510
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2512
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2514
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2515
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2517
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2519
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2520
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2522
    :cond_3
    if-eqz v0, :cond_4

    .line 2523
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postInvalidateOnAnimation()V

    .line 2525
    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1964
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    .line 1965
    :cond_0
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayout()V

    .line 1967
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1996
    :cond_1
    :goto_0
    return-void

    .line 1970
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    const/16 v1, 0xb

    .line 1977
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1978
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 1980
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->preProcess()V

    .line 1981
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1982
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1983
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayout()V

    .line 1989
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 1990
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1986
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    .line 1991
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayout()V

    .line 1994
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0
.end method

.method defaultOnMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 4278
    .line 4279
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 4280
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMinimumWidth()I

    move-result v3

    .line 4278
    invoke-static {p1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 4282
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 4283
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMinimumHeight()I

    move-result v3

    .line 4281
    invoke-static {p2, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 4285
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setMeasuredDimension(II)V

    .line 4286
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8105
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 8106
    .local v2, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 8107
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 8108
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onViewAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 8110
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 8111
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 8112
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 8113
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 8112
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8116
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8091
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 8092
    .local v2, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 8093
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 8094
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 8096
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 8097
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 8098
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 8099
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 8098
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8102
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5096
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5097
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    if-eqz v1, :cond_0

    .line 5098
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .line 5100
    .local v0, "tempAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getItemAnimationTypeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5101
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->drawGhost(Landroid/graphics/Canvas;)V

    .line 5104
    .end local v0    # "tempAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;
    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 13889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 13890
    const-string v19, "SeslRecyclerView"

    const-string v20, "No adapter attached; skipping hover scroll"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13891
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 14151
    :goto_0
    return v19

    .line 13894
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 13897
    .local v5, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoveringEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 13898
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 13903
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->isTextViewHovered()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    .line 13904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOldTextViewHoverState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 13905
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 13906
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 13911
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOldTextViewHoverState:Z

    .line 13914
    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    .line 13915
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    .line 13917
    .local v16, "toolType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 13920
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollEnable:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 13921
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 13925
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 13926
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v4

    .line 13927
    .local v4, "PEN_HOVERING":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    .line 13928
    .local v14, "isHoveringOn":Z
    :goto_3
    const/4 v13, 0x0

    .line 13931
    .local v13, "isCarModeOn":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "car_mode_on"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    .line 13936
    :goto_4
    if-eqz v14, :cond_3

    if-eqz v13, :cond_4

    .line 13937
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 13940
    :cond_4
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 13941
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 13942
    :cond_5
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 13943
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    .line 13948
    .end local v4    # "PEN_HOVERING":Ljava/lang/String;
    .end local v13    # "isCarModeOn":Z
    .end local v14    # "isHoveringOn":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 13949
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 13969
    .end local v16    # "toolType":I
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 13970
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_0

    .line 13900
    :cond_8
    const-string v19, "SeslRecyclerView"

    const-string v20, "dispatchHoverEvent skip onHoverDrawableState on processing touchEvent "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 13908
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_2

    .line 13927
    .restart local v4    # "PEN_HOVERING":Ljava/lang/String;
    .restart local v16    # "toolType":I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 13931
    .restart local v13    # "isCarModeOn":Z
    .restart local v14    # "isHoveringOn":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 13932
    :catch_0
    move-exception v12

    .line 13933
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "SeslRecyclerView"

    const-string v20, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 13951
    .end local v4    # "PEN_HOVERING":Ljava/lang/String;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v13    # "isCarModeOn":Z
    .end local v14    # "isHoveringOn":Z
    .end local v16    # "toolType":I
    :cond_c
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v5, v0, :cond_10

    .line 13952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 13953
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 13954
    :cond_e
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 13955
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 13956
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 13957
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 13958
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 13959
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 13961
    :cond_10
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v5, v0, :cond_7

    .line 13962
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 13963
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 13964
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 13974
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 13975
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 13976
    .local v18, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v9

    .line 13977
    .local v9, "childCount":I
    const/4 v11, 0x0

    .line 13978
    .local v11, "contentTop":I
    const/4 v10, 0x0

    .line 13982
    .local v10, "contentBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 13983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 13984
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    .line 13991
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_23

    const/4 v6, 0x1

    .line 13993
    .local v6, "canScrollDown":Z
    :goto_7
    if-nez v6, :cond_13

    if-lez v9, :cond_13

    .line 13994
    add-int/lit8 v19, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 13995
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getBottom()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    .line 13996
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_24

    :cond_12
    const/4 v6, 0x1

    .line 14000
    .end local v8    # "child":Landroid/view/View;
    :cond_13
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v19

    if-lez v19, :cond_25

    const/4 v7, 0x1

    .line 14002
    .local v7, "canScrollUp":Z
    :goto_9
    if-nez v7, :cond_14

    .line 14003
    if-lez v9, :cond_14

    .line 14004
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 14005
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_26

    const/4 v7, 0x1

    .line 14009
    .end local v8    # "child":Landroid/view/View;
    :cond_14
    :goto_a
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    const/4 v15, 0x1

    .line 14011
    .local v15, "isPossibleTooltype":Z
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    :cond_15
    if-lez v17, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1a

    if-nez v7, :cond_16

    if-eqz v6, :cond_1a

    :cond_16
    move/from16 v0, v18

    if-lt v0, v11, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_17

    if-nez v7, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_18

    move/from16 v0, v18

    if-gt v0, v10, :cond_18

    if-nez v6, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    :cond_18
    if-eqz v15, :cond_19

    .line 14015
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a

    :cond_19
    if-eqz v15, :cond_1a

    .line 14016
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isLockScreenMode()Z

    move-result v19

    if-eqz v19, :cond_28

    .line 14018
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 14019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 14020
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14023
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1d

    :cond_1c
    if-lez v17, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1e

    .line 14024
    :cond_1d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 14027
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_20

    .line 14028
    :cond_1f
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14031
    :cond_20
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14032
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 14033
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 14034
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 14036
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v5, v0, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    move/from16 v19, v0

    if-eqz v19, :cond_21

    .line 14037
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    .line 14038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_21

    .line 14039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 14043
    :cond_21
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_0

    .line 13986
    .end local v6    # "canScrollDown":Z
    .end local v7    # "canScrollUp":Z
    .end local v15    # "isPossibleTooltype":Z
    :cond_22
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 13987
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mExtraPaddingInBottomHoverArea:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    goto/16 :goto_6

    .line 13991
    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 13996
    .restart local v6    # "canScrollDown":Z
    .restart local v8    # "child":Landroid/view/View;
    :cond_24
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 14000
    .end local v8    # "child":Landroid/view/View;
    :cond_25
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 14005
    .restart local v7    # "canScrollUp":Z
    .restart local v8    # "child":Landroid/view/View;
    :cond_26
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 14009
    .end local v8    # "child":Landroid/view/View;
    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 14046
    .restart local v15    # "isPossibleTooltype":Z
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_29

    .line 14047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 14050
    :cond_29
    packed-switch v5, :pswitch_data_0

    .line 14151
    :cond_2a
    :goto_c
    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 14052
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 14054
    move/from16 v0, v18

    if-lt v0, v11, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2b

    .line 14056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 14057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14058
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_01()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14060
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 14061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_c

    .line 14063
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2a

    move/from16 v0, v18

    if-gt v0, v10, :cond_2a

    .line 14065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 14066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14067
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_05()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14069
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 14070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 14077
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c

    .line 14078
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 14079
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 14080
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_0

    .line 14083
    :cond_2c
    move/from16 v0, v18

    if-lt v0, v11, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2f

    .line 14085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 14086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14089
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e

    .line 14090
    :cond_2d
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_01()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14093
    :cond_2e
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 14094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 14096
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_32

    move/from16 v0, v18

    if-gt v0, v10, :cond_32

    .line 14098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 14099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14102
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    .line 14103
    :cond_30
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_05()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14106
    :cond_31
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 14107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    .line 14111
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 14112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 14114
    :cond_33
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14116
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14117
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 14118
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 14119
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 14120
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    goto/16 :goto_c

    .line 14126
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 14127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 14131
    :cond_34
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 14133
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 14134
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 14135
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 14136
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 14137
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 14139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    move/from16 v19, v0

    if-eqz v19, :cond_35

    .line 14140
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    .line 14141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_35

    .line 14142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 14146
    :cond_35
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_0

    .line 14050
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method dispatchLayout()V
    .locals 4

    .prologue
    .line 4494
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v0, :cond_1

    .line 4495
    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    :cond_0
    :goto_0
    return-void

    .line 4499
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_2

    .line 4500
    const-string v0, "SeslRecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4504
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 4505
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4506
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep1()V

    .line 4507
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 4508
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    .line 4519
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep3()V

    .line 4521
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->getItemAnimationTypeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4522
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$15;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4509
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 4510
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 4513
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 4514
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 4517
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 11733
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 11738
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

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
    .line 11728
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

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
    .line 11722
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 5926
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 5927
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 5932
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onScrollStateChanged(I)V

    .line 5935
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 5936
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 5938
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5939
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5940
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 5939
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5943
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 7
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 5882
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    .line 5885
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollX()I

    move-result v1

    .line 5886
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollY()I

    move-result v2

    .line 5887
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onScrollChanged(IIII)V

    .line 5890
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onScrolled(II)V

    .line 5892
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v3, :cond_0

    .line 5893
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 5898
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v3, :cond_1

    .line 5899
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 5901
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 5902
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5903
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 5902
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5906
    .end local v0    # "i":I
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    .line 5907
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 11667
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 11668
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 11669
    .local v2, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11681
    .end local v2    # "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-void

    .line 11672
    .restart local v2    # "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v1

    .line 11673
    .local v1, "state":I
    if-eq v1, v4, :cond_2

    .line 11675
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11676
    invoke-static {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I

    .line 11667
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11680
    .end local v1    # "state":I
    .end local v2    # "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1601
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1602
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1593
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1594
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x3

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 3632
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    .line 3633
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->getItemAnimationTypeInternal()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 3634
    const-string v0, "SeslRecyclerView"

    const-string v9, "dispatchTouchEvent : itemAnimator is running, return.."

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 3829
    :goto_0
    return v0

    .line 3638
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 3639
    const-string v0, "SeslRecyclerView"

    const-string v8, "No layout manager attached; skipping gototop & multiselection"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3644
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 3646
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v9

    float-to-int v1, v0

    .line 3647
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v9

    float-to-int v2, v0

    .line 3649
    .local v2, "y":I
    const/4 v3, 0x0

    .line 3650
    .local v3, "contentTop":I
    const/4 v4, 0x0

    .line 3651
    .local v4, "contentBottom":I
    const/4 v5, 0x0

    .line 3654
    .local v5, "needToScroll":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 3655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 3658
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v0, :cond_4

    .line 3659
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 3660
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v9

    .line 3666
    :goto_1
    sparse-switch v6, :sswitch_data_0

    .line 3829
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3662
    :cond_4
    const/4 v3, 0x0

    .line 3663
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v4

    goto :goto_1

    .line 3668
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3669
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 3670
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToping:Z

    .line 3673
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-eq v0, v11, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3674
    invoke-direct {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 3675
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3676
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v9, v12, [I

    fill-array-data v9, :array_0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move v0, v8

    .line 3677
    goto :goto_0

    .line 3680
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 3681
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    .line 3682
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    move-object v0, p0

    .line 3683
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->multiSelection(IIIIZ)V

    move v0, v8

    .line 3684
    goto/16 :goto_0

    .line 3686
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_3

    .line 3687
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    goto :goto_2

    .line 3693
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->isTextSelectionProgressing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectionEnabled:Z

    if-nez v0, :cond_9

    .line 3694
    :cond_8
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    .line 3695
    const-string v0, "SeslRecyclerView"

    const-string v8, "dispatchTouchevent ysahn MOTION_EVENT_ACTION_PEN_DOWN mIsNeedPenSelection = false"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 3701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto :goto_2

    .line 3697
    :cond_9
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    goto :goto_3

    .line 3708
    :sswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_a

    move-object v0, p0

    .line 3709
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->multiSelection(IIIIZ)V

    move v0, v8

    .line 3710
    goto/16 :goto_0

    .line 3712
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_b

    .line 3714
    invoke-direct {p0, v1, v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->updateLongPressMultiSelection(IIZ)V

    move v0, v8

    .line 3715
    goto/16 :goto_0

    .line 3718
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-ne v0, v11, :cond_3

    .line 3719
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3720
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    .line 3721
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3722
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->autoHide(I)V

    .line 3723
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopMoved:Z

    :cond_c
    move v0, v8

    .line 3725
    goto/16 :goto_0

    :sswitch_3
    move-object v0, p0

    .line 3731
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->multiSelection(IIIIZ)V

    goto/16 :goto_2

    .line 3735
    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_e

    .line 3736
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-ne v0, v11, :cond_d

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    .line 3738
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3743
    :cond_e
    :sswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_f

    .line 3744
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->multiSelectionEnd(II)V

    .line 3745
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    move v0, v8

    .line 3746
    goto/16 :goto_0

    .line 3748
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_12

    .line 3749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_10

    .line 3750
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    .line 3753
    :cond_10
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 3754
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3756
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 3757
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3758
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 3759
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3761
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 3762
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 3763
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 3764
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 3766
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3768
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 3771
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3772
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3774
    :cond_11
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 3776
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 3777
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 3783
    :cond_12
    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-ne v0, v11, :cond_17

    .line 3784
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3785
    const-string v0, "SeslRecyclerView"

    const-string v9, " can scroll top "

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v7

    .line 3787
    .local v7, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_13

    .line 3788
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScroll()V

    .line 3789
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v0, :cond_14

    .line 3790
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-virtual {v0, v10, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3791
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showTopEdge()V

    .line 3810
    .end local v7    # "childCount":I
    :cond_13
    :goto_4
    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->autoHide(I)V

    .line 3811
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3812
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->playSoundEffect(I)V

    move v0, v8

    .line 3814
    goto/16 :goto_0

    .line 3793
    .restart local v7    # "childCount":I
    :cond_14
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToToping:Z

    .line 3794
    if-lez v7, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    if-ge v7, v0, :cond_15

    .line 3795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v0, :cond_16

    .line 3796
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v0, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3801
    :cond_15
    :goto_5
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$14;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 3798
    :cond_16
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    goto :goto_5

    .line 3816
    .end local v7    # "childCount":I
    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopMoved:Z

    if-eqz v0, :cond_18

    .line 3817
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 3818
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_18

    .line 3819
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3824
    :cond_18
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->multiSelectionEnd(II)V

    goto/16 :goto_2

    .line 3666
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_6
        0xd5 -> :sswitch_3
    .end sparse-switch

    .line 3676
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5002
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 5004
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5005
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5006
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v9, p1, p0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 5005
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5010
    :cond_0
    const/4 v4, 0x0

    .line 5011
    .local v4, "needsInvalidate":Z
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1

    .line 5012
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 5013
    .local v7, "restore":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v5

    .line 5014
    .local v5, "padding":I
    :goto_1
    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5015
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    const/4 v12, 0x0

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5016
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v4, v11

    .line 5017
    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5019
    .end local v5    # "padding":I
    .end local v7    # "restore":I
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 5020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 5021
    .restart local v7    # "restore":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v9, :cond_2

    .line 5022
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5024
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_c

    move v9, v11

    :goto_3
    or-int/2addr v4, v9

    .line 5025
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5027
    .end local v7    # "restore":I
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_4

    .line 5028
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 5029
    .restart local v7    # "restore":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v8

    .line 5030
    .local v8, "width":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v5

    .line 5031
    .restart local v5    # "padding":I
    :goto_4
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5032
    neg-int v9, v5

    int-to-float v9, v9

    neg-int v12, v8

    int-to-float v12, v12

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5033
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_e

    move v9, v11

    :goto_5
    or-int/2addr v4, v9

    .line 5034
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5036
    .end local v5    # "padding":I
    .end local v7    # "restore":I
    .end local v8    # "width":I
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_5

    .line 5037
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 5038
    .restart local v7    # "restore":I
    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5039
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v9, :cond_f

    .line 5040
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v12

    add-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v12

    neg-int v12, v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5044
    :goto_6
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_10

    :goto_7
    or-int/2addr v4, v11

    .line 5045
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5051
    .end local v7    # "restore":I
    :cond_5
    if-nez v4, :cond_6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    .line 5052
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5053
    const/4 v4, 0x1

    .line 5056
    :cond_6
    if-eqz v4, :cond_7

    .line 5057
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postInvalidateOnAnimation()V

    .line 5061
    :cond_7
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v9, :cond_8

    .line 5062
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 5066
    :cond_8
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v9, :cond_9

    .line 5067
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    if-nez v9, :cond_11

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    if-nez v9, :cond_11

    .line 5092
    :cond_9
    :goto_8
    return-void

    .restart local v7    # "restore":I
    :cond_a
    move v5, v10

    .line 5013
    goto/16 :goto_1

    .restart local v5    # "padding":I
    :cond_b
    move v4, v10

    .line 5016
    goto/16 :goto_2

    .end local v5    # "padding":I
    :cond_c
    move v9, v10

    .line 5024
    goto/16 :goto_3

    .restart local v8    # "width":I
    :cond_d
    move v5, v10

    .line 5030
    goto/16 :goto_4

    .restart local v5    # "padding":I
    :cond_e
    move v9, v10

    .line 5033
    goto/16 :goto_5

    .line 5042
    .end local v5    # "padding":I
    .end local v8    # "width":I
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_10
    move v11, v10

    .line 5044
    goto :goto_7

    .line 5071
    .end local v7    # "restore":I
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    .line 5072
    .local v1, "firstChildLayoutPosition":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    add-int/2addr v9, v1

    add-int/lit8 v3, v9, -0x1

    .line 5074
    .local v3, "lastChildLayoutPosition":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    if-lt v9, v1, :cond_13

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    if-gt v9, v3, :cond_13

    .line 5076
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    sub-int/2addr v10, v1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 5077
    const/4 v6, 0x0

    .line 5078
    .local v6, "penTrackChildTop":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-eqz v9, :cond_12

    .line 5079
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5081
    :cond_12
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 5084
    .end local v6    # "penTrackChildTop":I
    :cond_13
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    if-ge v9, v10, :cond_14

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    :goto_9
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 5085
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    if-le v9, v10, :cond_15

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    :goto_a
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 5087
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockTop:I

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRight:I

    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 5088
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5089
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 5084
    :cond_14
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_9

    .line 5085
    :cond_15
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPenDragStartY:I

    goto :goto_a
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 5723
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 5725
    .local v0, "more":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 5726
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->getSelectedViewHolder()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5728
    .local v1, "selected":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5729
    const-string v2, "SeslRecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeslRecyclerView : drawChild : selected.itemView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    :cond_0
    const-string v2, "SeslRecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeslRecyclerView : drawChild : call drawDragHandlerIfNeeded, child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5732
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 5735
    .end local v1    # "selected":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    .prologue
    .line 2232
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    .line 2233
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 2234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    .line 2236
    :cond_0
    return-void
.end method

.method public enableGoToTop(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    .line 2921
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2922
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    .line 2924
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2925
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 2926
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2927
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2929
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$8;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2940
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 2941
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2942
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2944
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$9;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2955
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2979
    :cond_0
    return-void

    .line 2924
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2925
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 2940
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2600
    :goto_0
    return-void

    .line 2593
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2594
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2595
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2596
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2595
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2598
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2560
    :goto_0
    return-void

    .line 2553
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2554
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2555
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2556
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2555
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2558
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2573
    :goto_0
    return-void

    .line 2566
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2567
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2568
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2569
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2568
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2571
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2587
    :goto_0
    return-void

    .line 2579
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2580
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2581
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2582
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2581
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2584
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5621
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v1

    .line 5622
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5623
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5624
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 5625
    .local v3, "translationX":F
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 5626
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 5627
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 5628
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 5629
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 5633
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 5622
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5633
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 5406
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5407
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 5408
    check-cast p1, Landroid/view/View;

    .line 5409
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 5411
    :cond_0
    if-ne v0, p0, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 5424
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5425
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .prologue
    .line 13826
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 13827
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 13831
    :goto_0
    return v0

    .line 13828
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 13829
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    .line 13831
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 2

    .prologue
    .line 13836
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 13837
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 13841
    :goto_0
    return v0

    .line 13838
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 13839
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    .line 13841
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public findNearChildViewUnder(FF)Landroid/view/View;
    .locals 25
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v11

    .line 5646
    .local v11, "count":I
    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 5647
    .local v19, "positionX":I
    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, p2

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 5648
    .local v20, "positionY":I
    move/from16 v2, v20

    .line 5649
    .local v2, "adjustY":I
    const v18, 0x7fffffff

    .line 5651
    .local v18, "oldDistanceY":I
    const/16 v21, 0x0

    .line 5653
    .local v21, "previousChildCenter":I
    add-int/lit8 v12, v11, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_2

    .line 5654
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5655
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 5656
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 5657
    .local v8, "childTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 5658
    .local v4, "childBottom":I
    add-int v22, v8, v4

    div-int/lit8 v5, v22, 0x2

    .line 5659
    .local v5, "childCenter":I
    move/from16 v0, v21

    if-ne v0, v5, :cond_1

    .line 5653
    .end local v4    # "childBottom":I
    .end local v5    # "childCenter":I
    .end local v8    # "childTop":I
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 5662
    .restart local v4    # "childBottom":I
    .restart local v5    # "childCenter":I
    .restart local v8    # "childTop":I
    :cond_1
    move/from16 v21, v5

    .line 5663
    sub-int v22, v20, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 5664
    .local v15, "newDistanceY":I
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 5665
    move/from16 v18, v15

    .line 5666
    move v2, v5

    goto :goto_1

    .line 5672
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childCenter":I
    .end local v8    # "childTop":I
    .end local v15    # "newDistanceY":I
    :cond_2
    const/16 v16, 0x0

    .line 5673
    .local v16, "oldDistanceFromLeft":I
    const/16 v17, 0x0

    .line 5676
    .local v17, "oldDistanceFromRight":I
    const/4 v9, 0x0

    .line 5677
    .local v9, "closeIndexByLeft":I
    const/4 v10, 0x0

    .line 5679
    .local v10, "closeIndexByRight":I
    add-int/lit8 v12, v11, -0x1

    :goto_2
    if-ltz v12, :cond_9

    .line 5680
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5681
    .restart local v3    # "child":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 5682
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 5683
    .restart local v8    # "childTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 5684
    .restart local v4    # "childBottom":I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 5685
    .local v6, "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    .line 5687
    .local v7, "childRight":I
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_3

    .line 5688
    add-int/lit8 v9, v11, -0x1

    .line 5689
    add-int/lit8 v10, v11, -0x1

    .line 5690
    sub-int v22, v19, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 5691
    sub-int v22, v19, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 5695
    :cond_3
    if-lt v2, v8, :cond_5

    if-gt v2, v4, :cond_5

    .line 5696
    sub-int v22, v19, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 5697
    .local v13, "newDistanceFromLeft":I
    sub-int v22, v19, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 5698
    .local v14, "newDistanceFromRight":I
    move/from16 v0, v16

    if-gt v13, v0, :cond_4

    .line 5699
    move v9, v12

    .line 5700
    move/from16 v16, v13

    .line 5702
    :cond_4
    move/from16 v0, v17

    if-gt v14, v0, :cond_5

    .line 5703
    move v10, v12

    .line 5704
    move/from16 v17, v14

    .line 5708
    .end local v13    # "newDistanceFromLeft":I
    .end local v14    # "newDistanceFromRight":I
    :cond_5
    if-gt v2, v4, :cond_6

    if-nez v12, :cond_8

    .line 5709
    :cond_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 5710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 5718
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    :goto_3
    return-object v22

    .line 5712
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childBottom":I
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    .restart local v8    # "childTop":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    goto :goto_3

    .line 5679
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 5717
    .end local v3    # "child":Landroid/view/View;
    :cond_9
    const-string v22, "SeslRecyclerView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5718
    const/16 v22, 0x0

    goto :goto_3
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 5535
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_1

    .line 5536
    const/4 v2, 0x0

    .line 5551
    :cond_0
    :goto_0
    return-object v2

    .line 5538
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5540
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 5541
    .local v1, "hidden":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 5542
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 5543
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapterPositionFor(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 5544
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5545
    move-object v1, v2

    .line 5541
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    move-object v2, v1

    .line 5551
    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 5595
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5596
    :cond_0
    const/4 v2, 0x0

    .line 5610
    :cond_1
    :goto_0
    return-object v2

    .line 5598
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5599
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 5600
    .local v1, "hidden":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 5601
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 5602
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 5603
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5604
    move-object v1, v2

    .line 5600
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    move-object v2, v1

    .line 5610
    goto :goto_0
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findViewHolderForPosition(IZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findViewHolderForPosition(IZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 5555
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5556
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 5557
    .local v1, "hidden":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 5558
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 5559
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5560
    if-eqz p2, :cond_1

    .line 5561
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2

    .line 5557
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5564
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 5567
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5568
    move-object v1, v2

    goto :goto_1

    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    move-object v2, v1

    .line 5577
    :cond_4
    return-object v2
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2364
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v5, :cond_1

    .line 2365
    const-string v4, "SeslRecyclerView"

    const-string v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_0
    :goto_0
    return v3

    .line 2369
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_0

    .line 2373
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 2374
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 2376
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    .line 2377
    :cond_2
    const/4 p1, 0x0

    .line 2379
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    .line 2380
    :cond_4
    const/4 p2, 0x0

    .line 2382
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 2387
    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2388
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    .line 2389
    .local v0, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2391
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    .line 2392
    goto :goto_0

    .end local v0    # "canScroll":Z
    :cond_8
    move v0, v3

    .line 2388
    goto :goto_1

    .line 2395
    .restart local v0    # "canScroll":Z
    :cond_9
    if-eqz v0, :cond_0

    .line 2396
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2397
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2398
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    .line 2399
    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 12
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 2638
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v9, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2639
    .local v7, "result":Landroid/view/View;
    if-eqz v7, :cond_0

    move-object v9, v7

    .line 2705
    :goto_0
    return-object v9

    .line 2642
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v9, :cond_4

    .line 2643
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v9, :cond_4

    const/4 v1, 0x1

    .line 2645
    .local v1, "canRunFocusFailure":Z
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    .line 2646
    .local v3, "ff":Landroid/view/FocusFinder;
    if-eqz v1, :cond_11

    const/4 v9, 0x2

    if-eq p2, v9, :cond_1

    const/4 v9, 0x1

    if-ne p2, v9, :cond_11

    .line 2650
    :cond_1
    const/4 v6, 0x0

    .line 2651
    .local v6, "needsFocusFailureLayout":Z
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2652
    const/4 v9, 0x2

    if-ne p2, v9, :cond_5

    const/16 v0, 0x82

    .line 2654
    .local v0, "absDir":I
    :goto_2
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2655
    .local v5, "found":Landroid/view/View;
    if-nez v5, :cond_6

    const/4 v6, 0x1

    .line 2657
    .end local v0    # "absDir":I
    .end local v5    # "found":Landroid/view/View;
    :cond_2
    :goto_3
    if-nez v6, :cond_3

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2658
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    const/4 v8, 0x1

    .line 2659
    .local v8, "rtl":Z
    :goto_4
    const/4 v9, 0x2

    if-ne p2, v9, :cond_8

    const/4 v9, 0x1

    :goto_5
    xor-int/2addr v9, v8

    if-eqz v9, :cond_9

    const/16 v0, 0x42

    .line 2661
    .restart local v0    # "absDir":I
    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2662
    .restart local v5    # "found":Landroid/view/View;
    if-nez v5, :cond_a

    const/4 v6, 0x1

    .line 2664
    .end local v0    # "absDir":I
    .end local v5    # "found":Landroid/view/View;
    .end local v8    # "rtl":Z
    :cond_3
    :goto_7
    if-eqz v6, :cond_c

    .line 2665
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 2666
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 2667
    .local v4, "focusedItemView":Landroid/view/View;
    if-nez v4, :cond_b

    .line 2669
    const/4 v9, 0x0

    goto :goto_0

    .line 2643
    .end local v1    # "canRunFocusFailure":Z
    .end local v3    # "ff":Landroid/view/FocusFinder;
    .end local v4    # "focusedItemView":Landroid/view/View;
    .end local v6    # "needsFocusFailureLayout":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 2652
    .restart local v1    # "canRunFocusFailure":Z
    .restart local v3    # "ff":Landroid/view/FocusFinder;
    .restart local v6    # "needsFocusFailureLayout":Z
    :cond_5
    const/16 v0, 0x21

    goto :goto_2

    .line 2655
    .restart local v0    # "absDir":I
    .restart local v5    # "found":Landroid/view/View;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 2658
    .end local v0    # "absDir":I
    .end local v5    # "found":Landroid/view/View;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 2659
    .restart local v8    # "rtl":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    const/16 v0, 0x11

    goto :goto_6

    .line 2662
    .restart local v0    # "absDir":I
    .restart local v5    # "found":Landroid/view/View;
    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    .line 2671
    .end local v0    # "absDir":I
    .end local v5    # "found":Landroid/view/View;
    .end local v8    # "rtl":Z
    .restart local v4    # "focusedItemView":Landroid/view/View;
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 2672
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v9, p1, p2, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    .line 2673
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 2675
    .end local v4    # "focusedItemView":Landroid/view/View;
    :cond_c
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2691
    .end local v6    # "needsFocusFailureLayout":Z
    :cond_d
    :goto_8
    invoke-direct {p0, p1, v7, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v9

    if-nez v9, :cond_e

    .line 2692
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2695
    :cond_e
    if-nez v7, :cond_10

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v9, :cond_10

    .line 2696
    const/4 v2, 0x0

    .line 2697
    .local v2, "distance":I
    const/16 v9, 0x82

    if-ne p2, v9, :cond_13

    .line 2698
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getBottom()I

    move-result v10

    sub-int v2, v9, v10

    .line 2702
    :cond_f
    :goto_9
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v9, v2, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    .end local v2    # "distance":I
    :cond_10
    move-object v9, v7

    .line 2705
    goto/16 :goto_0

    .line 2677
    :cond_11
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2678
    if-nez v7, :cond_d

    if-eqz v1, :cond_d

    .line 2679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 2680
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 2681
    .restart local v4    # "focusedItemView":Landroid/view/View;
    if-nez v4, :cond_12

    .line 2683
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2685
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 2686
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v9, p1, p2, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v7

    .line 2687
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    goto :goto_8

    .line 2699
    .end local v4    # "focusedItemView":Landroid/view/View;
    .restart local v2    # "distance":I
    :cond_13
    const/16 v9, 0x21

    if-ne p2, v9, :cond_f

    .line 2700
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getTop()I

    move-result v10

    sub-int v2, v9, v10

    goto :goto_9
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 5123
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 5124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 5132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 5140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 11684
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11686
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11687
    :cond_0
    const/4 v0, -0x1

    .line 11689
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    iget v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 1441
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 4922
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5452
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 5453
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 13544
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 13545
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 13547
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 5478
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5482
    :cond_0
    :goto_0
    return-wide v2

    .line 5481
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 5482
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5467
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 5468
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5442
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5383
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5384
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 5385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5388
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5820
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5821
    return-void
.end method

.method public getDragGrabHandleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 5751
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGoToTopBottomPadding()I
    .locals 1

    .prologue
    .line 3185
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    return v0
.end method

.method public getHoverBottomPadding()I
    .locals 1

    .prologue
    .line 3169
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    return v0
.end method

.method public getHoverTopPadding()I
    .locals 1

    .prologue
    .line 3177
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    return v0
.end method

.method public getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 5833
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 5834
    .local v3, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 5835
    iget-object v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 5854
    :goto_0
    return-object v2

    .line 5838
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5840
    :cond_1
    iget-object v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    goto :goto_0

    .line 5842
    :cond_2
    iget-object v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 5843
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 5844
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5845
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 5846
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 5847
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 5848
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 5849
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 5850
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 5851
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 5845
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5853
    :cond_3
    iput-boolean v7, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    return-object v0
.end method

.method public final getLongPressMultiSelectionListener()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;
    .locals 1

    .prologue
    .line 14309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 2440
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 2430
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getOnFlingListener()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;

    return-object v0
.end method

.method public final getOnMultiSelectedListener()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;
    .locals 1

    .prologue
    .line 14248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .prologue
    .line 5355
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1715
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 11716
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 5959
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    .line 5960
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5959
    :goto_0
    return v0

    .line 5960
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 1160
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    .line 1238
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 2603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2604
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5341
    :goto_0
    return-void

    .line 5335
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 5336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5339
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 5340
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 5154
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2871
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .prologue
    .line 4374
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 13619
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    return v0
.end method

.method protected isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 13635
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 13636
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 13637
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13638
    const/4 v1, 0x1

    .line 13642
    :goto_1
    return v1

    .line 13640
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 13642
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .prologue
    .line 2320
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 6

    .prologue
    .line 13814
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 13815
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 13816
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 13818
    const/4 v0, 0x1

    .line 13819
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 13820
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 13822
    :goto_0
    return v1

    .line 13820
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 11701
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 13628
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1903
    :goto_0
    return-void

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1902
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 4992
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4993
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4994
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4995
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4997
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 4998
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 5316
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5317
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5318
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5319
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5320
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 5317
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5323
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 5324
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 5325
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 5806
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 5807
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5808
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 5807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5810
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 5768
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 5769
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5770
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 5769
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5772
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5217
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5218
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5219
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5220
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 5225
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5226
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 5218
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5229
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 5230
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 5231
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 5183
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5185
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 5186
    move v5, p1

    .line 5187
    .local v5, "start":I
    move v1, p2

    .line 5188
    .local v1, "end":I
    const/4 v4, -0x1

    .line 5195
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 5196
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v6, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 5197
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 5195
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5190
    .end local v1    # "end":I
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 5191
    .restart local v5    # "start":I
    move v1, p1

    .line 5192
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 5204
    .restart local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 5205
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5210
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    goto :goto_2

    .line 5207
    :cond_3
    invoke-virtual {v2, v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 5212
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 5213
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 5214
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 5235
    add-int v3, p1, p2

    .line 5236
    .local v3, "positionEnd":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5237
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5238
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5239
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5240
    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 5246
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5247
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 5237
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5248
    :cond_1
    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 5253
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 5255
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 5259
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 5260
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 5261
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2823
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2824
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 2825
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    .line 2826
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    .line 2827
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 2828
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 2830
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 2831
    sget-wide v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sFrameIntervalNanos:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 2833
    const/high16 v2, 0x42700000    # 60.0f

    .line 2834
    .local v2, "refreshRate":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2835
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 2836
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 2837
    .local v1, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    .line 2839
    move v2, v1

    .line 2842
    .end local v1    # "displayRefreshRate":F
    :cond_1
    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v2

    float-to-long v6, v3

    sput-wide v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sFrameIntervalNanos:J

    .line 2845
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "refreshRate":F
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v3, :cond_3

    .line 2846
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 2848
    :cond_3
    return-void

    :cond_4
    move v3, v5

    .line 2826
    goto :goto_0
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5785
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5797
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2852
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2853
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 2856
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScroll()V

    .line 2857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    .line 2858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2859
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 2861
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2862
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2863
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->onDetach()V

    .line 2864
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 5108
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 5110
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5111
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5112
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 5111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5114
    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 4323
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 4324
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 2

    .prologue
    .line 4327
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 4328
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 4333
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 4334
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchContentChangedIfNecessary()V

    .line 4335
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 4337
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4145
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 4174
    :cond_0
    :goto_0
    return v5

    .line 4148
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 4151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 4152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 4154
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4157
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    .line 4161
    .local v2, "vScroll":F
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4162
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 4167
    .local v0, "hScroll":F
    :goto_2
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_0

    .line 4168
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollFactor()F

    move-result v1

    .line 4169
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4159
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 4164
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3840
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eqz v12, :cond_0

    .line 3843
    const/4 v12, 0x0

    .line 3944
    :goto_0
    return v12

    .line 3846
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3847
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->cancelTouch()V

    .line 3848
    const/4 v12, 0x1

    goto :goto_0

    .line 3851
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v12, :cond_2

    .line 3852
    const/4 v12, 0x0

    goto :goto_0

    .line 3855
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 3856
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 3858
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_3

    .line 3859
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3861
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3863
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 3864
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 3866
    .local v2, "actionIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3867
    const/4 v12, 0x1

    goto :goto_0

    .line 3870
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 3944
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    const/4 v12, 0x1

    goto :goto_0

    .line 3872
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v12, :cond_6

    .line 3873
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 3875
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 3876
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 3877
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 3879
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 3880
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3881
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 3885
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    .line 3887
    const/4 v8, 0x0

    .line 3888
    .local v8, "nestedScrollAxis":I
    if-eqz v3, :cond_8

    .line 3889
    or-int/lit8 v8, v8, 0x1

    .line 3891
    :cond_8
    if-eqz v4, :cond_9

    .line 3892
    or-int/lit8 v8, v8, 0x2

    .line 3894
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 3898
    .end local v8    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 3899
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 3900
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 3904
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 3905
    .local v7, "index":I
    if-gez v7, :cond_a

    .line 3906
    const-string v12, "SeslRecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error processing scroll; pointer index for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3911
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 3912
    .local v10, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v11, v12

    .line 3913
    .local v11, "y":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    .line 3914
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    sub-int v5, v10, v12

    .line 3915
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    sub-int v6, v11, v12

    .line 3916
    .local v6, "dy":I
    const/4 v9, 0x0

    .line 3917
    .local v9, "startScroll":Z
    if-eqz v3, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_b

    .line 3918
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    if-gez v5, :cond_d

    const/4 v12, -0x1

    :goto_2
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    .line 3919
    const/4 v9, 0x1

    .line 3921
    :cond_b
    if-eqz v4, :cond_c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_c

    .line 3922
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    if-gez v6, :cond_e

    const/4 v12, -0x1

    :goto_3
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    .line 3923
    const/4 v9, 0x1

    .line 3925
    :cond_c
    if-eqz v9, :cond_5

    .line 3926
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 3918
    :cond_d
    const/4 v12, 0x1

    goto :goto_2

    .line 3922
    :cond_e
    const/4 v12, 0x1

    goto :goto_3

    .line 3932
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v9    # "startScroll":Z
    .end local v10    # "x":I
    .end local v11    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 3936
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    .line 3937
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 3941
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 3944
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3870
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 14161
    sparse-switch p1, :sswitch_data_0

    .line 14187
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 14164
    :sswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    .line 14167
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 14172
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14173
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 14177
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14178
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 14182
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14183
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 14161
    nop

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_1
        0x5d -> :sswitch_2
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x7a -> :sswitch_3
        0x7b -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 14196
    packed-switch p1, :pswitch_data_0

    .line 14202
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 14199
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    .line 14196
    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x1

    .line 4967
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4968
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayout()V

    .line 4969
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4970
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    .line 4971
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4972
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onItemCountChanged(II)V

    .line 4974
    :cond_0
    if-eqz p1, :cond_1

    .line 4975
    const-string v0, "SeslRecyclerView"

    const-string v1, "onsize change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mSizeChnage:Z

    .line 4977
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 4978
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->autoHide(I)V

    .line 4980
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 4196
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v5, :cond_1

    .line 4197
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->defaultOnMeasure(II)V

    .line 4270
    :cond_0
    :goto_0
    return-void

    .line 4201
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 4202
    .local v1, "listPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4203
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4204
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4205
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 4207
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    if-eqz v5, :cond_4

    .line 4208
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4209
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4210
    .local v0, "heightMode":I
    if-ne v3, v8, :cond_2

    if-ne v0, v8, :cond_2

    move v2, v4

    .line 4212
    .local v2, "skipMeasure":Z
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onMeasure(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;II)V

    .line 4213
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v5, :cond_0

    .line 4216
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mLayoutStep:I

    if-ne v5, v4, :cond_3

    .line 4217
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep1()V

    .line 4221
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 4222
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v4, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 4223
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    .line 4226
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 4230
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4231
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 4232
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 4233
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 4231
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 4234
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v4, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 4235
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    .line 4237
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_0

    .line 4240
    .end local v0    # "heightMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "widthMode":I
    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHasFixedSize:Z

    if-eqz v5, :cond_5

    .line 4241
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onMeasure(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;II)V

    goto/16 :goto_0

    .line 4245
    :cond_5
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v5, :cond_6

    .line 4246
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 4247
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 4249
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v5, :cond_7

    .line 4250
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v4, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 4256
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 4257
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 4260
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v4, :cond_8

    .line 4261
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    .line 4265
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 4266
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onMeasure(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;II)V

    .line 4267
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 4268
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v2, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    goto/16 :goto_0

    .line 4253
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->consumeUpdatesInOnePass()V

    .line 4254
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v2, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 4263
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput v2, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mItemCount:I

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2813
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    const/4 v0, 0x0

    .line 2818
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1576
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    if-nez v0, :cond_1

    .line 1577
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1586
    .end local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-void

    .line 1581
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_1
    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    .line 1582
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1583
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1562
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1563
    .local v0, "state":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1564
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;->copyFrom(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;)V

    .line 1571
    :goto_0
    return-object v0

    .line 1565
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1566
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1568
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 5921
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 5879
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 4290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 4291
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 4292
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateGlows()V

    .line 4295
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 4296
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onSizeChanged(IIII)V

    .line 4298
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-object/from16 v18, v0

    .line 3960
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->getItemAnimationTypeInternal()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 3961
    const-string v18, "SeslRecyclerView"

    const-string v19, "onTouchEvent : itemAnimator is running, return.."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    const/16 v18, 0x1

    .line 4117
    :goto_0
    return v18

    .line 3965
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 3966
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 3968
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 3969
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->cancelTouch()V

    .line 3970
    const/16 v18, 0x1

    goto :goto_0

    .line 3973
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 3974
    const/16 v18, 0x0

    goto :goto_0

    .line 3977
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 3978
    .local v5, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 3980
    .local v6, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 3981
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3983
    :cond_5
    const/4 v9, 0x0

    .line 3985
    .local v9, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 3986
    .local v13, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 3987
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 3989
    .local v4, "actionIndex":I
    if-nez v3, :cond_6

    .line 3990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    aput v22, v18, v19

    .line 3992
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v18, v0

    .line 3997
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v19, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 3998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v19

    invoke-interface/range {v18 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;->onPressed(F)V

    .line 4004
    :cond_8
    :goto_1
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 4005
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3999
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v18, v0

    .line 4000
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v19, v0

    if-nez v18, :cond_8

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v19

    invoke-interface/range {v18 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;->onReleased(F)V

    goto :goto_1

    .line 4008
    :cond_a
    packed-switch v3, :pswitch_data_0

    .line 4112
    :cond_b
    :goto_2
    :pswitch_0
    if-nez v9, :cond_c

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4115
    :cond_c
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 4117
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 4010
    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 4011
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 4012
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 4014
    const/4 v11, 0x0

    .line 4015
    .local v11, "nestedScrollAxis":I
    if-eqz v5, :cond_d

    .line 4016
    or-int/lit8 v11, v11, 0x1

    .line 4018
    :cond_d
    if-eqz v6, :cond_e

    .line 4019
    or-int/lit8 v11, v11, 0x2

    .line 4021
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->startNestedScroll(I)Z

    goto :goto_2

    .line 4025
    .end local v11    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 4026
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 4027
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mInitialTouchY:I

    goto/16 :goto_2

    .line 4031
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 4032
    .local v10, "index":I
    if-gez v10, :cond_f

    .line 4033
    const-string v18, "SeslRecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 4038
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 4039
    .local v14, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4040
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    .line 4041
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    .line 4043
    .local v8, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 4044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    .line 4045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    .line 4046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 4052
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 4053
    const/4 v12, 0x0

    .line 4054
    .local v12, "startScroll":Z
    if-eqz v5, :cond_11

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    .line 4055
    if-lez v7, :cond_15

    .line 4056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 4060
    :goto_3
    const/4 v12, 0x1

    .line 4062
    :cond_11
    if-eqz v6, :cond_12

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    .line 4063
    if-lez v8, :cond_16

    .line 4064
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    .line 4068
    :goto_4
    const/4 v12, 0x1

    .line 4070
    :cond_12
    if-eqz v12, :cond_13

    .line 4071
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 4075
    .end local v12    # "startScroll":Z
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 4076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    .line 4079
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopMoved:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    if-eqz v5, :cond_17

    move/from16 v19, v7

    :goto_5
    if-eqz v6, :cond_18

    move/from16 v18, v8

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 4083
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4085
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->postFromTraversal(II)V

    goto/16 :goto_2

    .line 4058
    .restart local v12    # "startScroll":Z
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto/16 :goto_3

    .line 4066
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto/16 :goto_4

    .line 4079
    .end local v12    # "startScroll":Z
    :cond_17
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_5

    :cond_18
    const/16 v18, 0x0

    goto :goto_6

    .line 4090
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v10    # "index":I
    .end local v14    # "x":I
    .end local v16    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 4094
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4095
    const/4 v9, 0x1

    .line 4096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4097
    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    .line 4098
    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    .line 4099
    .local v15, "xvel":F
    :goto_7
    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    .line 4100
    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    .line 4101
    .local v17, "yvel":F
    :goto_8
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_19

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_1a

    :cond_19
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->fling(II)Z

    move-result v18

    if-nez v18, :cond_1b

    .line 4102
    :cond_1a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 4104
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resetTouch()V

    goto/16 :goto_2

    .line 4098
    .end local v15    # "xvel":F
    .end local v17    # "yvel":F
    :cond_1c
    const/4 v15, 0x0

    goto :goto_7

    .line 4100
    .restart local v15    # "xvel":F
    :cond_1d
    const/16 v17, 0x0

    goto :goto_8

    .line 4108
    .end local v15    # "xvel":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->cancelTouch()V

    goto/16 :goto_2

    .line 4008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .prologue
    .line 4426
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 4427
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 4430
    :cond_0
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 4861
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 4862
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4863
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4864
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 4865
    .local v0, "key":J
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToOldChangeHolders(JLcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 4867
    .end local v0    # "key":J
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslViewInfoStore;->addToPreLayout(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4868
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 1634
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1635
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1636
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 1637
    .local v1, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1638
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1644
    .end local v1    # "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 1645
    return v0

    .line 1644
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 4904
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 4905
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 4906
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4907
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 4913
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 4914
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 4915
    return-void

    .line 4908
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4909
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setWillNotDraw(Z)V

    .line 1798
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 1799
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 1800
    return-void

    .line 1796
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1473
    :goto_0
    return-void

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 3217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3219
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1860
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 9

    .prologue
    .line 6279
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 6280
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6281
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6282
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 6283
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v7, :cond_1

    .line 6284
    iget-object v7, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6285
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 6286
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 6287
    .local v5, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 6288
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_1

    .line 6290
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    .line 6291
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 6289
    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 6280
    .end local v3    # "left":I
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6295
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2773
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 2774
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2779
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2780
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2782
    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 2783
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-boolean v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 2784
    iget-object v1, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2785
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2786
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2787
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2788
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2792
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2793
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2794
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, p1, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2796
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2797
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 3949
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3950
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3951
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 3952
    .local v1, "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 3950
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3954
    .end local v1    # "listener":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 3955
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 4984
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 4985
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4989
    :goto_0
    return-void

    .line 4987
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2239
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_0

    .line 2244
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    .line 2246
    :cond_0
    if-nez p1, :cond_1

    .line 2255
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    .line 2257
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_3

    .line 2259
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 2261
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchLayout()V

    .line 2263
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    .line 2264
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    .line 2267
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatRequestLayout:I

    .line 2268
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 5158
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5159
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5160
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5165
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5166
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->saveOldPosition()V

    .line 5159
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5169
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1940
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 1941
    const-string v2, "SeslRecyclerView"

    const-string v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1945
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 1948
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1949
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1950
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1951
    :cond_2
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_1
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    goto :goto_1

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2027
    const/4 v3, 0x0

    .local v3, "unconsumedX":I
    const/4 v4, 0x0

    .line 2028
    .local v4, "unconsumedY":I
    const/4 v1, 0x0

    .local v1, "consumedX":I
    const/4 v2, 0x0

    .line 2030
    .local v2, "consumedY":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 2031
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 2032
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 2033
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 2034
    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2035
    if-eqz p1, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, p1, v5, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v1

    .line 2037
    sub-int v3, p1, v1

    .line 2039
    :cond_0
    if-eqz p2, :cond_1

    .line 2040
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, p2, v5, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v2

    .line 2041
    sub-int v4, p2, v2

    .line 2042
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    if-nez v0, :cond_1

    .line 2043
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 2044
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->autoHide(I)V

    .line 2047
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2048
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->repositionShadowingViews()V

    .line 2049
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 2050
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 2052
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2053
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 2056
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2058
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchX:I

    .line 2059
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLastTouchY:I

    .line 2060
    if-eqz p3, :cond_4

    .line 2061
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2063
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    .line 2064
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    .line 2071
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 2072
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchOnScrolled(II)V

    .line 2074
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2075
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 2077
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    .line 2078
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2079
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 2081
    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_e

    :cond_b
    move v0, v7

    :goto_1
    return v0

    .line 2065
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 2066
    if-eqz p3, :cond_d

    .line 2067
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->pullGlows(FFFF)V

    .line 2069
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    :cond_e
    move v0, v6

    .line 2081
    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1934
    const-string v0, "SeslRecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1880
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScroll()V

    .line 1884
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_2

    .line 1885
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1889
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1890
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->awakenScrollBars()Z

    .line 1892
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4402
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4406
    :goto_0
    return-void

    .line 4405
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;)V
    .locals 2
    .param p1, "accessibilityDelegate"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    .prologue
    .line 986
    if-nez p1, :cond_0

    .line 987
    const-string v0, "SeslRecyclerView"

    const-string v1, " setAccessibilityDelegateCompat: accessibilityDelegate is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    .line 990
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 991
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 1349
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setLayoutFrozen(Z)V

    .line 1350
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAdapterInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;ZZ)V

    .line 1351
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 1352
    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1818
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    .line 1819
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setChildImportantForAccessibilityInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 11657
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11658
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$5802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I

    .line 11659
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11660
    const/4 v0, 0x0

    .line 11663
    :goto_0
    return v0

    .line 11662
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11663
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateGlows()V

    .line 1268
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mClipToPadding:Z

    .line 1269
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1270
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 1271
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 1273
    :cond_1
    return-void
.end method

.method public setCtrlkeyPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3279
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    .line 3280
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 5297
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 5309
    :goto_0
    return-void

    .line 5300
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 5301
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5302
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 5303
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5304
    .local v1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5305
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 5302
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5308
    .end local v1    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_0
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5747
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 5748
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 13713
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoveringEnabled:Z

    .line 13714
    return-void
.end method

.method public setFastScrollerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 13597
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 13598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    .line 13605
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    .line 13607
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 13608
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 13610
    :cond_1
    return-void

    .line 13599
    :cond_2
    if-eqz p1, :cond_0

    .line 13600
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    .line 13601
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    .line 13602
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public setFastScrollerEventListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    .prologue
    .line 13670
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    .line 13671
    return-void
.end method

.method public setGoToTopBottomPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 3189
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    .line 3190
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 1252
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHasFixedSize:Z

    .line 1253
    return-void
.end method

.method public setHoverBottomPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 3173
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    .line 3174
    return-void
.end method

.method public setHoverTopPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 3181
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    .line 3182
    return-void
.end method

.method public setItemAnimationType(I)V
    .locals 1
    .param p1, "animationType"    # I

    .prologue
    .line 5756
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 5757
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->setItemAnimationTypeInternal(I)V

    .line 5759
    :cond_0
    return-void
.end method

.method public setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    .prologue
    .line 4312
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 4313
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 4314
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->setListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 4316
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    .line 4317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 4318
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimatorListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->setListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 4320
    :cond_1
    return-void
.end method

.method public setItemTouchHelper(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V
    .locals 0
    .param p1, "itemTouchHelper"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .line 970
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1706
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2293
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    .line 2294
    const-string v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2295
    if-nez p1, :cond_2

    .line 2296
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    .line 2297
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 2298
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 2300
    :cond_0
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutRequestEaten:Z

    .line 2311
    :cond_1
    :goto_0
    return-void

    .line 2302
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2303
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2305
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2306
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    .line 2307
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2308
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x0

    .line 1498
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1501
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScroll()V

    .line 1504
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1507
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1510
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1511
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clear()V

    .line 1513
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1514
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;)V

    .line 1516
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1517
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 1522
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->removeAllViewsUnfiltered()V

    .line 1523
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 1524
    if-eqz p1, :cond_5

    .line 1525
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_4

    .line 1526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->clear()V

    goto :goto_1

    .line 1529
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->setRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1530
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 1531
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1534
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 1535
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public setLongPressMultiSelectionListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    .prologue
    .line 14301
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    .line 14302
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 11696
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 11697
    return-void
.end method

.method public setOnFlingListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;)V
    .locals 0
    .param p1, "onFlingListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;

    .line 1548
    return-void
.end method

.method public setOnMultiSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    .prologue
    .line 14240
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;

    .line 14241
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    .line 1833
    return-void
.end method

.method public setPenSelectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 14258
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsPenSelectionEnabled:Z

    .line 14259
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0
    .param p1, "preserveFocusAfterLayout"    # Z

    .prologue
    .line 5373
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    .line 5374
    return-void
.end method

.method public setRecycledViewPool(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->setRecycledViewPool(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;)V

    .line 1680
    return-void
.end method

.method public setRecyclerListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecyclerListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerListener;

    .line 1426
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1719
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1726
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mScrollState:I

    .line 1727
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1728
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScrollersInternal()V

    .line 1730
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1302
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 1304
    const-string v1, "SeslRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    .line 1315
    :goto_0
    return-void

    .line 1312
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 1302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSmoothScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 14319
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    if-eqz v0, :cond_0

    .line 14320
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->access$6300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    .line 14322
    :cond_0
    return-void
.end method

.method public setViewCacheExtension(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->setViewCacheExtension(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewCacheExtension;)V

    .line 1691
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4386
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4387
    const/4 v0, 0x0

    .line 4388
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 4389
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 4391
    :cond_0
    if-nez v0, :cond_1

    .line 4392
    const/4 v0, 0x0

    .line 4394
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 4395
    const/4 v1, 0x1

    .line 4397
    .end local v0    # "type":I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showGotoTop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2982
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2983
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 2984
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->autoHide(I)V

    .line 2986
    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 2331
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2339
    const/4 p1, 0x0

    .line 2341
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2342
    const/4 p2, 0x0

    .line 2344
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 2345
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 2346
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->showGotoTop()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1930
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1925
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1929
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)V

    goto :goto_0
.end method

.method public startLongPressMultiSelection()V
    .locals 1

    .prologue
    .line 3271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 3272
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 11706
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 11711
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollingChildHelper()Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll()V

    .line 11712
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 2410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 2411
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->stopScrollersInternal()V

    .line 2412
    return-void
.end method

.method public swapAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 1333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setLayoutFrozen(Z)V

    .line 1334
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAdapterInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;ZZ)V

    .line 1335
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setDataSetChangedAfterLayout()V

    .line 1336
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 1337
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 5270
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 5271
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 5273
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 5274
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5275
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 5276
    .local v2, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5273
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5279
    :cond_1
    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 5282
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 5283
    invoke-virtual {v2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5285
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 5288
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 5289
    return-void
.end method
